<?php

declare(strict_types = 1);

require_once INCL_DIR . 'function_html.php';

$save_or_edit = (isset($_POST['edit']) ? 'edit' : (isset($_GET['edit']) ? 'edit' : 'save'));
$save_or_edit = (isset($_POST['send']) ? 'send' : (isset($_GET['send']) ? 'send' : $save_or_edit));
global $contianer, $site_config, $CURUSER, $lang;

if (isset($_POST['buttonval']) && $_POST['buttonval'] == $save_or_edit) {
    if (empty($_POST['subject'])) {
        stderr($lang['pm_error'], $lang['pm_draft_err']);
    }
    if (empty($_POST['body'])) {
        stderr($lang['pm_error'], $lang['pm_draft_err1']);
    }

    $body = sqlesc(trim($_POST['body']));
    $subject = sqlesc(strip_tags(trim($_POST['subject'])));
    $urgent = sqlesc((isset($_POST['urgent']) && $_POST['urgent'] === 'yes' && $CURUSER['class'] >= UC_STAFF) ? 'yes' : 'no');
    if ($save_or_edit === 'save') {
        sql_query('INSERT INTO messages (sender, receiver, added, msg, subject, location, draft, unread, saved) VALUES  
                                                                        (' . sqlesc($CURUSER['id']) . ', ' . sqlesc($CURUSER['id']) . ',' . TIME_NOW . ', ' . $body . ', ' . $subject . ', \'-2\', \'yes\',\'no\',\'yes\')') or sqlerr(__FILE__, __LINE__);
    } elseif ($save_or_edit === 'edit') {
        sql_query('UPDATE messages SET msg = ' . $body . ', subject = ' . $subject . ' WHERE id=' . sqlesc($pm_id)) or sqlerr(__FILE__, __LINE__);
    } elseif ($save_or_edit === 'send') {
        $res_receiver = sql_query('SELECT id, class, acceptpms, notifs, email, class, username FROM users WHERE LOWER(username)=LOWER(' . sqlesc(htmlsafechars($_POST['to'])) . ') LIMIT 1');
        $arr_receiver = mysqli_fetch_assoc($res_receiver);
        if (!is_valid_id((int) $arr_receiver['id'])) {
            stderr($lang['pm_error'], $lang['pm_forwardpm_nomember']);
        }
        $receiver = intval($arr_receiver['id']);
        if ($CURUSER['suspended'] === 'yes') {
            $res = sql_query('SELECT class FROM users WHERE id=' . sqlesc($receiver)) or sqlerr(__FILE__, __LINE__);
            $row = mysqli_fetch_assoc($res);
            if ($row['class'] < UC_STAFF) {
                stderr($lang['pm_error'], $lang['pm_send_your_acc']);
            }
        }
        $res_count = sql_query('SELECT COUNT(id) FROM messages WHERE receiver = ' . sqlesc($receiver) . ' AND location = 1') or sqlerr(__FILE__, __LINE__);
        $arr_count = mysqli_fetch_row($res_count);
        if (mysqli_num_rows($res_count) > ($maxbox * 6) && $CURUSER['class'] < UC_STAFF) {
            stderr($lang['pm_forwardpm_srry'], $lang['pm_forwardpm_full']);
        }
        if ($CURUSER['class'] < UC_STAFF) {
            $should_i_send_this = ($arr_receiver['acceptpms'] === 'yes' ? 'yes' : ($arr_receiver['acceptpms'] === 'no' ? 'no' : ($arr_receiver['acceptpms'] === 'friends' ? 'friends' : '')));
            switch ($should_i_send_this) {
                case 'yes':
                    $r = sql_query('SELECT id FROM blocks WHERE userid=' . sqlesc($receiver) . ' AND blockid=' . sqlesc($CURUSER['id'])) or sqlerr(__FILE__, __LINE__);
                    $block = mysqli_fetch_row($r);
                    if ($block[0] > 0) {
                        stderr($lang['pm_forwardpm_refused'], htmlsafechars($arr_receiver['username']) . $lang['pm_send_blocked']);
                    }
                    break;

                case 'friends':
                    $r = sql_query('SELECT id FROM friends WHERE userid=' . sqlesc($receiver) . ' AND friendid=' . sqlesc($CURUSER['id'])) or sqlerr(__FILE__, __LINE__);
                    $friend = mysqli_fetch_row($r);
                    if ($friend[0] > 0) {
                        stderr($lang['pm_forwardpm_refused'], htmlsafechars($arr_receiver['username']) . $lang['pm_send_onlyf']);
                    }
                    break;

                case 'no':
                    stderr($lang['pm_forwardpm_refused'], htmlsafechars($arr_receiver['username']) . $lang['pm_send_doesnt']);
                    break;
            }
        }
        sql_query('INSERT INTO messages (poster, sender, receiver, added, msg, subject, saved, unread, location, urgent) VALUES 
                            (' . sqlesc($CURUSER['id']) . ', ' . sqlesc($CURUSER['id']) . ', ' . $receiver . ', ' . TIME_NOW . ', ' . $body . ', ' . $subject . ', \'yes\', \'yes\', 1,' . $urgent . ')') or sqlerr(__FILE__, __LINE__);
        $cache->increment('inbox_' . $receiver);
        if (mysqli_affected_rows($mysqli) === 0) {
            stderr($lang['pm_error'], $lang['pm_send_wasnt']);
        }

        if (strpos($arr_receiver['notifs'], '[pm]') !== false) {
            $username = htmlsafechars($CURUSER['username']);
            $title = $site_config['site']['name'];
            $body = doc_head() . "
    <meta property='og:title' content='{$title}'>
    <title>{$title} PM received</title>
</head>
<body>
<p>{$lang['pm_forwardpm_pmfrom']} $username!</p>
<p>{$lang['pm_forwardpm_url']}</p>
<p>{$site_config['paths']['baseurl']}/messages.php</p>
<p>--{$site_config['site']['name']}</p>
</body>
</html>";

            send_mail($arr_receiver['email'], "{$lang['pm_forwardpm_pmfrom']} $username {$lang['pm_forwardpm_exc']}", $body, strip_tags($body));
        }
        if ($returnto) {
            header('Location: ' . $returnto);
        } else {
            header('Location: ' . $_SERVER['PHP_SELF'] . '?action=view_mailbox&sent=1');
        }
        die();
    }
    if (mysqli_affected_rows($mysqli) === 0) {
        stderr($lang['pm_error'], $lang['pm_draft_wasnt']);
    }
    header('Location: ' . $_SERVER['PHP_SELF'] . '?action=view_mailbox&box=-2&new_draft=1');
    die();
}

if (isset($_POST['buttonval'])) {
    //=== Get the info
    $res = sql_query('SELECT * FROM messages WHERE id=' . sqlesc($pm_id)) or sqlerr(__FILE__, __LINE__);
    $message = mysqli_fetch_assoc($res);
    $subject = htmlsafechars($message['subject']);
    $draft = $message['msg'];
}
//=== print out the page
//echo stdhead('Use Draft');
$HTMLOUT .= '<h1>' . $lang['pm_usedraft'] . '' . $subject . '</h1>' . $top_links . '
        <form name="compose" action="messages.php" method="post" accept-charset="utf-8">
        <input type="hidden" name="id" value="' . $pm_id . '">
        <input type="hidden" name="' . $save_or_edit . '" value="1">
        <input type="hidden" name="action" value="use_draft">
    <table class="table table-bordered">
    <tr>
        <td class="colhead" colspan="2">' . $lang['pm_usedraft1'] . '</td>
    </tr>
    <tr>
        <td><span style="font-weight: bold;">' . $lang['pm_forward_to'] . '</span></td>
        <td><input type="text" name="to" value="' . ((isset($_POST['to']) && valid_username($_POST['to'], false)) ? htmlsafechars($_POST['to']) : $lang['pm_forward_user']) . '" class="member" onfocus="this.value=\'\';">
         ' . $lang['pm_usedraft_usr'] . '</td>
    </tr>
    <tr>
        <td><span style="font-weight: bold;">' . $lang['pm_send_subject'] . '</span></td>
        <td><input type="text" class="w-100" name="subject" value="' . $subject . '"></td>
    </tr>
    <tr>
        <td><span style="font-weight: bold;">' . $lang['pm_send_body'] . '</span></td>
        <td class="is-paddingless">' . BBcode($draft) . '</td>
    </tr>
    <tr>
        <td colspan="2">' . ($CURUSER['class'] >= UC_STAFF ? '
        <input type="checkbox" name="urgent" value="yes" ' . ((isset($_POST['urgent']) && $_POST['urgent'] === 'yes') ? ' checked' : '') . '> 
        <span style="font-weight: bold;color:red;">' . $lang['pm_send_mark'] . '</span>' : '') . '
        <input type="submit" class="button is-small" name="buttonval" value="' . $save_or_edit . '"></td>
    </tr>
    </table></form>';
