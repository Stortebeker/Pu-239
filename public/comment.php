<?php

declare(strict_types = 1);

use Pu239\Cache;
use Pu239\Comment;
use Pu239\Database;
use Pu239\Message;
use Pu239\Session;
use Pu239\Torrent;
use Pu239\User;

require_once __DIR__ . '/../include/bittorrent.php';
require_once INCL_DIR . 'function_users.php';
require_once INCL_DIR . 'function_html.php';
require_once INCL_DIR . 'function_bbcode.php';
require_once INCL_DIR . 'function_comments.php';
$user = check_user_status();
$lang = array_merge(load_language('global'), load_language('comment'), load_language('capprove'));
global $container, $site_config;

$comments = $container->get(Comment::class);
$user_class = $container->get(User::class);
$torrents = $container->get(Torrent::class);
//flood_limit('comments');
$action = !empty($_GET['action']) ? htmlsafechars($_GET['action']) : (!empty($_POST['action']) ? htmlsafechars($_POST['action']) : 0);
$stdhead = [
    'css' => [
        get_file_name('sceditor_css'),
    ],
];
$stdfoot = [
    'js' => [
        get_file_name('upload_js'),
        get_file_name('sceditor_js'),
    ],
];

$locale = 'torrent';
$locale_link = 'details';
$extra_link = '';
$sql_1 = 'name, owner, comments, anonymous FROM torrents';
$name = 'name';
$table_type = $locale . 's';
$_GET['type'] = isset($_GET['type']) ? htmlsafechars($_GET['type']) : (isset($_POST['locale']) ? htmlsafechars($_POST['locale']) : '');
if (isset($_GET['type'])) {
    $type_options = [
        'torrent' => 'details',
        'request' => 'viewrequests',
    ];
    if (isset($type_options[$_GET['type']])) {
        $locale_link = $type_options[$_GET['type']];
        $locale = $_GET['type'];
    }
    switch ($_GET['type']) {
        case 'request':
            $sql_1 = 'request FROM requests';
            $name = 'request';
            $extra_link = '&req_details';
            $table_type = $locale . 's';
            break;

        default:
            $sql_1 = 'name, owner, comments, anonymous FROM torrents';
            $name = 'name';
            $table_type = $locale . 's';
            break;
    }
}

$cache = $container->get(Cache::class);
$messages_class = $container->get(Message::class);
$session = $container->get(Session::class);
if ($action === 'add') {
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $id = isset($_POST['tid']) ? (int) $_POST['tid'] : 0;
        if (!is_valid_id($id)) {
            stderr($lang['comment_error'], $lang['comment_invalid_id']);
        }
        $res = sql_query("SELECT $sql_1 WHERE id=" . sqlesc($id)) or sqlerr(__FILE__, __LINE__);
        $arr = mysqli_fetch_array($res);
        if (!$arr) {
            stderr($lang['comment_error'], "No $locale with that ID.");
        }
        $body = isset($_POST['body']) ? trim($_POST['body']) : '';
        if (!$body) {
            stderr($lang['comment_error'], $lang['comment_body']);
        }
        $owner = isset($arr['owner']) ? (int) $arr['owner'] : 0;
        $arr['anonymous'] = isset($arr['anonymous']) && $arr['anonymous'] === 'yes' ? 'yes' : 'no';
        $arr['comments'] = isset($arr['comments']) ? $arr['comments'] : 0;
        if ($user['id'] == $owner && $arr['anonymous'] === 'yes' || (isset($_POST['anonymous']) && $_POST['anonymous'] === 'yes')) {
            $anon = 'yes';
        } else {
            $anon = 'no';
        }
        $values = [
            'user' => $user['id'],
            'torrent' => $id,
            'added' => TIME_NOW,
            'text' => $body,
            'ori_text' => $body,
            'anonymous' => $anon,
        ];
        $fluent = $container->get(Database::class);
        $newid = $fluent->insertInto('comments')
                        ->values($values)
                        ->execute();

        sql_query("UPDATE $table_type SET comments = comments + 1 WHERE id = " . sqlesc($id)) or sqlerr(__FILE__, __LINE__);
        $cache->delete('latest_comments_');
        if ($site_config['bonus']['on']) {
            $update = [
                'seedbonus' => $user['seedbonus'] + $site_config['bonus']['per_comment'],
            ];
            $user_class->update($update, $user['id']);
            $torrent_comments = $torrents->get_items(['comments'], $id);
            $update = [
                'comments' => $torrent_comments + 1,
            ];
            $torrents->update($update, $id);
        }
        $cpm_r = $user_class->get_item('commentpm', $owner);
        if ($cpm_r === 'yes') {
            $dt = TIME_NOW;
            $subby = 'Someone has left a comment';
            $msg = "You have received a comment on your torrent [url={$site_config['paths']['baseurl']}/details.php?id={$id}] " . htmlsafechars($arr['name']) . '[/url].';
            $msgs_buffer[] = [
                'receiver' => $arr['owner'],
                'added' => $dt,
                'msg' => $msg,
                'subject' => $subject,
            ];
            $messages_class->insert($msgs_buffer);
        }
        $session->set('is-success', 'Your comment has been posted');
        header("Refresh: 0; url=$locale_link.php?id=$id$extra_link&viewcomm=$newid#comm$newid");
        die();
    }
    $id = isset($_GET['tid']) ? (int) $_GET['tid'] : 0;
    if (!is_valid_id($id)) {
        stderr($lang['comment_error'], $lang['comment_invalid_id']);
    }
    $res = sql_query("SELECT $sql_1 WHERE id=" . sqlesc($id)) or sqlerr(__FILE__, __LINE__);
    $arr = mysqli_fetch_assoc($res);
    if (!$arr) {
        stderr($lang['comment_error'], "No $locale with that ID.");
    }
    $HTMLOUT = '';
    $body = htmlsafechars((isset($_POST['body']) ? $_POST['body'] : ''));
    $HTMLOUT .= "<h1 class='has-text-centered'>{$lang['comment_add']}'" . htmlsafechars($arr[$name]) . "'</h1>
      <br><form name='compose' method='post' action='{$_SERVER['PHP_SELF']}?action=add' accept-charset='utf-8'>
      <input type='hidden' name='tid' value='{$id}'/>
      <input type='hidden' name='locale' value='$name'>";
    $HTMLOUT .= BBcode($body);
    $HTMLOUT .= "
        <div class='has-text-centered margin20'>
            <label for='anonymous'>Tick this to post anonymously</label>
            <input id='anonymous' type='checkbox' name='anonymous' value='yes'><br>
            <input type='submit' class='button is-small top20' value='{$lang['comment_doit']}'>
        </div>
    </form>";
    $sql = "SELECT c.id, c.text, c.added, c.$locale, c.anonymous, c.editedby, c.editedat, c.user, u.id as user, u.title, u.avatar, u.offensive_avatar, u.class, u.reputation, u.mood, u.donor, u.warned
                        FROM comments AS c
                        LEFT JOIN users AS u ON c.user = u.id
                        WHERE $locale = " . sqlesc($id) . '
                        ORDER BY c.id DESC
                        LIMIT 5';
    $res = sql_query($sql) or sqlerr(__FILE__, __LINE__);
    $allrows = [];
    while ($row = mysqli_fetch_assoc($res)) {
        $allrows[] = $row;
    }
    if (!empty($allrows) && count($allrows)) {
        require_once INCL_DIR . 'function_html.php';
        require_once INCL_DIR . 'function_bbcode.php';
        require_once INCL_DIR . 'function_users.php';
        require_once INCL_DIR . 'function_comments.php';
        $HTMLOUT = wrapper($HTMLOUT);
        $HTMLOUT .= wrapper("<h2 class='has-text-centered'>{$lang['comment_recent']}</h2>" . commenttable($allrows, $locale));
    }
    echo stdhead("{$lang['comment_add']}'" . $arr[$name] . "'", $stdhead) . wrapper($HTMLOUT) . stdfoot($stdfoot);
    die();
} elseif ($action === 'edit') {
    $commentid = isset($_GET['cid']) ? (int) $_GET['cid'] : 0;
    if (!is_valid_id($commentid)) {
        stderr($lang['comment_error'], $lang['comment_invalid_id']);
    }
    $res = sql_query("SELECT c.*, t.$name, t.id as tid FROM comments AS c LEFT JOIN $table_type AS t ON c.$locale = t.id WHERE c.id=" . sqlesc($commentid)) or sqlerr(__FILE__, __LINE__);
    $arr = mysqli_fetch_assoc($res);
    if (!$arr) {
        stderr($lang['comment_error'], "{$lang['comment_invalid_id']}.");
    }
    if ($arr['user'] != $user['id'] && $user['class'] < UC_STAFF) {
        stderr($lang['comment_error'], $lang['comment_denied']);
    }
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $body = isset($_POST['body']) ? $_POST['body'] : '';
        if ($body == '') {
            stderr($lang['comment_error'], $lang['comment_body']);
        }
        $text = htmlsafechars($body);
        if (isset($_POST['lasteditedby']) || $user['class'] < UC_STAFF) {
            $update = [
                'text' => $text,
                'editedat' => TIME_NOW,
                'editedby' => $user['id'],
            ];
            $comments->update($update, $commentid);
        } else {
            $update = [
                'text' => $text,
                'editedat' => TIME_NOW,
                'editedby' => 2,
            ];
            $comments->update($update, $commentid);
        }
        $session->set('is-success', 'The comment has been updated');
        header("Refresh: 0; url=$locale_link.php?id=" . (int) $arr['tid'] . "$extra_link&viewcomm=$commentid#comm$commentid");
        die();
    }
    $HTMLOUT = '';
    $HTMLOUT .= "<h1 class='has-text-centered'>{$lang['comment_edit']}'" . htmlsafechars($arr[$name]) . "'</h1>
      <form method='post' action='{$_SERVER['PHP_SELF']}?action=edit&amp;cid=$commentid' accept-charset='utf-8'>
      <input type='hidden' name='locale' value='$name'>
       <input type='hidden' name='tid' value='" . (int) $arr['tid'] . "'>
      <input type='hidden' name='cid' value='$commentid'>";
    $HTMLOUT .= BBcode($arr['text']);
    $HTMLOUT .= '
      <br>' . ($user['class'] >= UC_STAFF ? '<input type="checkbox" value="lasteditedby" checked name="lasteditedby" id="lasteditedby"> Show Last Edited By<br><br>' : '') . '
        <div class="has-text-centered margin20">
            <input type="submit" class="button is-small" value="' . $lang['comment_doit'] . '">
        </div>
    </form>';
    echo stdhead("{$lang['comment_edit']}'" . $arr[$name] . "'", $stdhead) . wrapper($HTMLOUT) . stdfoot($stdfoot);
    die();
} elseif ($action === 'delete') {
    if ($user['class'] < UC_STAFF) {
        stderr($lang['comment_error'], $lang['comment_denied']);
    }
    $commentid = isset($_GET['cid']) ? (int) $_GET['cid'] : 0;
    $tid = isset($_GET['tid']) ? (int) $_GET['tid'] : 0;
    if (!is_valid_id($commentid)) {
        stderr($lang['comment_error'], $lang['comment_invalid_id']);
    }
    $sure = isset($_GET['sure']) ? (int) $_GET['sure'] : false;
    if (!$sure) {
        stderr($lang['comment_delete'], $lang['comment_about_delete'] . " <a href='{$_SERVER['PHP_SELF']}?action=delete&amp;cid=$commentid&amp;tid=$tid&amp;sure=1" . ($locale === 'request' ? '&amp;type=request' : '') . "'>
          <span class='has-text-success'>here</span></a> {$lang['comment_delete_sure']}");
    }
    $res = sql_query("SELECT $locale FROM comments WHERE id=" . sqlesc($commentid)) or sqlerr(__FILE__, __LINE__);
    $arr = mysqli_fetch_assoc($res);
    $id = 0;
    if ($arr) {
        $id = (int) $arr[$locale];
    }
    $deleted = $comments->delete($commentid);
    if ($id && $deleted) {
        sql_query("UPDATE $table_type SET comments = comments - 1 WHERE id=" . sqlesc($id));
    }
    if ($site_config['bonus']['on']) {
        $torrent_comments = $torrents->get_items(['comments'], $tid);
        $update = [
            'seedbonus' => $user['seedbonus'] - $site_config['bonus']['per_comment'],
        ];
        $user_class->update($update, $user['id']);
        $update = [
            'comments' => $torrent_comments > 0 ? $torrent_comments - 1 : 0,
        ];
        $torrents->update($update, $id);
    }
    $session->set('is-success', 'The comment has been deleted');
    header("Refresh: 0; url=$locale_link.php?id=$tid$extra_link");
    die();
} elseif ($action === 'vieworiginal') {
    if ($user['class'] < UC_STAFF) {
        stderr($lang['comment_error'], $lang['comment_denied']);
    }
    $commentid = isset($_GET['cid']) ? (int) $_GET['cid'] : 0;
    if (!is_valid_id($commentid)) {
        stderr($lang['comment_error'], $lang['comment_invalid_id']);
    }
    $res = sql_query("SELECT c.*, t.$name FROM comments AS c LEFT JOIN $table_type AS t ON c.$locale = t.id WHERE c.id=" . sqlesc($commentid)) or sqlerr(__FILE__, __LINE__);
    $arr = mysqli_fetch_assoc($res);
    if (!$arr) {
        stderr($lang['comment_error'], "{$lang['comment_invalid_id']} $commentid.");
    }
    $HTMLOUT = "
        <h1 class='has-text-centered'>{$lang['comment_original_content']}#$commentid</h1>" . main_div("<div class='margin10 bg-02 round10 column'>" . format_comment(htmlsafechars($arr['ori_text'])) . '</div>');

    $returnto = isset($_SERVER['HTTP_REFERER']) ? htmlsafechars($_SERVER['HTTP_REFERER']) : '';
    if ($returnto) {
        preg_match('/viewcomm=(\d+)/', $returnto, $match);
        $hashtag = !empty($match[1]) ? '#comm' . $match[1] : '';
        $HTMLOUT .= "
            <div class='has-text-centered margin20'>
                <a href='$returnto{$hashtag}' class='button is-small has-text-black'>back</a>
            </div>  ";
    }
    echo stdhead($lang['comment_original'], $stdhead) . wrapper($HTMLOUT) . stdfoot($stdfoot);
    die();
} else {
    stderr($lang['comment_error'], $lang['comment_unknown']);
}
die();
