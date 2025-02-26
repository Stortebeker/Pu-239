<?php

declare(strict_types = 1);

use Pu239\Cache;

global $container, $lang, $site_config, $CURUSER;

$post_id = isset($_GET['post_id']) ? (int) $_GET['post_id'] : (isset($_POST['post_id']) ? (int) $_POST['post_id'] : 0);
$topic_id = isset($_GET['topic_id']) ? (int) $_GET['topic_id'] : (isset($_POST['topic_id']) ? (int) $_POST['topic_id'] : 0);
$sanity_check = isset($_GET['sanity_check']) ? (int) $_GET['sanity_check'] : 0;
if (!is_valid_id($post_id) || !is_valid_id($topic_id)) {
    stderr($lang['gl_error'], $lang['gl_bad_id']);
}
$res_post = sql_query('SELECT p.user_id, p.staff_lock, u.id, u.class, u.suspended, t.locked, t.user_id AS owner_id, t.first_post, f.min_class_read, f.min_class_write, f.id AS forum_id FROM posts AS p LEFT JOIN users AS u ON p.user_id=u.id LEFT JOIN topics AS t ON t.id=p.topic_id LEFT JOIN forums AS f ON t.forum_id=f.id WHERE p.id=' . sqlesc($post_id)) or sqlerr(__FILE__, __LINE__);
$arr_post = mysqli_fetch_assoc($res_post);
$can_delete = $arr_post['user_id'] === $CURUSER['id'] || $CURUSER['class'] >= UC_STAFF;
if ($CURUSER['class'] < $arr_post['min_class_read'] || $CURUSER['class'] < $arr_post['min_class_write']) {
    stderr($lang['gl_error'], $lang['fe_topic_not_found']);
}
if ($CURUSER['forum_post'] === 'no' || $CURUSER['suspended'] === 'yes') {
    stderr($lang['gl_error'], $lang['fe_your_no_post_right']);
}
if (!$can_delete) {
    stderr($lang['gl_error'], $lang['fe_no_your_post_del']);
}
if ($arr_post['locked'] === 'yes') {
    stderr($lang['gl_error'], $lang['fe_this_topic_is_locked']);
}
if ($arr_post['staff_lock'] === 1) {
    stderr($lang['gl_error'], $lang['fe_this_topic_is_locked_staff']);
}
if ($arr_post['first_post'] == $post_id && $CURUSER['class'] < UC_STAFF) {
    stderr($lang['gl_error'], $lang['fe_cant_del_1st_post_staff']);
}
if ($arr_post['first_post'] == $post_id && $CURUSER['class'] >= UC_STAFF) {
    stderr($lang['gl_error'], $lang['fe_this_is_1st_post_topic'] . ' <a class="is-link" href="' . $site_config['paths']['baseurl'] . '/forums.php?action=forums_admin&amp;action_2=delete_topic&amp;topic_id=' . $topic_id . '">' . $lang['fe_del_topic'] . '</a>.');
}
if ($sanity_check > 0) {
    if ($site_config['forum_config']['delete_for_real']) {
        $res = sql_query('SELECT p.id, t.forum_id FROM posts AS p LEFT JOIN topics AS t ON p.topic_id=t.id WHERE p.topic_id=' . sqlesc($topic_id) . ' ORDER BY id DESC LIMIT 1') or sqlerr(__FILE__, __LINE__);
        $arr = mysqli_fetch_assoc($res);
        if (empty($arr['id'])) {
            sql_query('DELETE FROM topics WHERE topic_id=' . sqlesc($topic_id)) or sqlerr(__FILE__, __LINE__);
        } else {
            sql_query('UPDATE topics SET last_post = ' . sqlesc($arr['id']) . ", post_count = (SELECT COUNT(id) FROM posts WHERE topic_id = topics.id) WHERE status = 'ok'") or sqlerr(__FILE__, __LINE__);
        }
        sql_query('UPDATE forums SET post_count = post_count - 1 WHERE id=' . sqlesc($arr['forum_id'])) or sqlerr(__FILE__, __LINE__);
        sql_query('DELETE FROM posts WHERE id=' . sqlesc($post_id)) or sqlerr(__FILE__, __LINE__);
        sql_query('UPDATE usersachiev SET forumposts = forumposts - 1 WHERE userid=' . sqlesc($arr_post['user_id'])) or sqlerr(__FILE__, __LINE__);
        clr_forums_cache((int) $arr['forum_id']);
        clr_forums_cache((int) $post_id);
        $cache = $container->get(Cache::class);
        for ($i = UC_MIN; $i <= UC_MAX; ++$i) {
            $cache->delete('forum_last_post_' . $arr['forum_id'] . '_' . $i);
        }
    } else {
        sql_query('UPDATE posts SET status = \'deleted\'  WHERE id=' . sqlesc($post_id) . ' AND topic_id=' . sqlesc($topic_id)) or sqlerr(__FILE__, __LINE__);
    }
    header('Location: ' . $_SERVER['PHP_SELF'] . '?action=view_topic&topic_id=' . $topic_id);
    die();
} else {
    stderr($lang['fe_sanity_check'], '' . $lang['fe_are_you_sure_del_post'] . ' 
	<a class="is-link" href="' . $site_config['paths']['baseurl'] . '/forums.php?action=delete_post&amp;post_id=' . $post_id . '&amp;topic_id=' . $topic_id . '&amp;sanity_check=1">Here</a>.');
}
