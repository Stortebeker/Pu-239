<?php

declare(strict_types = 1);

global $site_config, $CURUSER;

$colour = $post_status_image = $option = $next = '';
$ASC_DESC = isset($_GET['ASC_DESC']) && $_GET['ASC_DESC'] === 'ASC' ? 'ASC ' : 'DESC ';
$member_id = isset($_GET['id']) ? (int) $_GET['id'] : 0;
if (!isset($member_id) || !is_valid_id($member_id)) {
    $search = isset($_GET['search']) ? strip_tags(trim($_GET['search'])) : '';
    $class = isset($_GET['class']) ? $_GET['class'] : '-';
    $letter = $q = '';
    if ($class === '-' || !ctype_digit($class)) {
        $class = '';
    }
    if ($search != '' || $class) {
        $query = 'username LIKE ' . sqlesc("%$search%") . ' AND status=\'confirmed\'';
        if ($search) {
            $q = 'search=' . htmlsafechars((string) $search);
        }
    } else {
        $letter = isset($_GET['letter']) ? trim((string) $_GET['letter']) : '';
        if (strlen($letter) > 1) {
            die();
        }
        if ($letter == '' || strpos('abcdefghijklmnopqrstuvwxyz0123456789', $letter) === false) {
            $letter = '';
        }
        $query = 'username LIKE ' . sqlesc("$letter%") . ' AND status=\'confirmed\'';
        $q = 'letter=' . $letter;
    }
    if (ctype_digit($class)) {
        $query .= ' AND class=' . sqlesc($class);
        $q .= ($q ? '&amp;' : '') . 'class=' . $class;
    }
    $HTMLOUT .= $mini_menu . '
		<h1 class="has-text-centered">' . $lang['fmp_search_members'] . '</h1>
		<div class="has-text-centered">
			<form method="get" action="forums.php?" accept-charset="utf-8">
				<input type="hidden" value="member_post_history" name="action">
				<input type="text" size="30" name="search" value="' . $search . '">
				<select name="class">
					<option value="-">(' . $lang['fmp_any_class'] . ')</option>';
    for ($i = 0;; ++$i) {
        if ($c = get_user_class_name((int) $i)) {
            $option .= '
					<option value="' . $i . '"' . (ctype_digit($class) && $class == $i ? ' selected="selected"' : '') . '>' . $c . '</option>';
        } else {
            break;
        }
    }
    $HTMLOUT .= $option . '
				</select>
				<input type="submit" class="button is-small" value="' . $lang['gl_search'] . '">
			</form>
		</div>';
    $aa = range('0', '9');
    $bb = range('A', 'Z');
    $cc = array_merge($aa, $bb);
    unset($aa, $bb);
    $next = '
		<div class="has-text-centered margin20">
            <div class="tabs is-centered is-small padtop10">
                <ul>';
    $count = 0;
    foreach ($cc as $L) {
        $next .= ($count === 10) ? '
                </ul>
            </div>
            <div class="tabs is-centered is-small padtop10">
                <ul>' : '';
        $active = !empty($_GET['letter']) && $_GET['letter'] === $L ? " class='active'" : '';
        $next .= " <li>
						<a href='{$site_config['paths']['baseurl']}/forums.php?action=member_post_history&amp;letter=" . $L . "'{$active}>" . $L . '</a>
					</li>';
        ++$count;
    }
    $value = !empty($_POST['article']) ? $_POST['article'] : '';
    $HTMLOUT .= $next . '
                </ul>
            </div>
        </div>';
    $page = isset($_GET['page']) ? (int) $_GET['page'] : 0;
    $perpage = isset($_GET['perpage']) ? (int) $_GET['perpage'] : 20;
    $res_count = sql_query('SELECT COUNT(id) FROM users WHERE ' . $query) or sqlerr(__FILE__, __LINE__);
    $arr_count = mysqli_fetch_row($res_count);
    $count = ($arr_count[0] > 0 ? (int) $arr_count[0] : 0);
    $link = $site_config['paths']['baseurl'] . "/forums.php?action=member_post_history&amp;letter={$letter}&amp;";
    $pager = pager($perpage, $count, $link);
    $menu_top = $pager['pagertop'];
    $menu_bottom = $pager['pagerbottom'];
    $LIMIT = $pager['limit'];
    $HTMLOUT .= ($count > $perpage ? $menu_top : '');
    if ($arr_count[0] > 0) {
        $res = sql_query('SELECT u.id, u.username, u.class, u.donor, u.suspended, u.warned, u.enabled, u.chatpost, u.leechwarn, u.pirate, u.king, u.registered, u.last_access, u.perms, c.name, c.flagpic FROM users AS u FORCE INDEX (username) LEFT JOIN countries AS c ON u.country=c.id WHERE ' . $query . ' ORDER BY u.username ' . $LIMIT) or sqlerr(__FILE__, __LINE__);
        $heading = '
			<tr>
				<th>' . $lang['fmp_member'] . '</th>
				<th>' . $lang['fmp_registered'] . '</th>
				<th>' . $lang['fmp_last_access'] . '</th>
				<th>' . $lang['fmp_class'] . '</th>
				<th>' . $lang['fmp_country'] . '</th>
				<th>' . $lang['fe_view'] . '</th>
			</tr>';
        $body = '';
        while ($row = mysqli_fetch_assoc($res)) {
            $country = ($row['name'] != null) ? '<img src="' . $site_config['paths']['images_baseurl'] . 'flag/' . $row['flagpic'] . '" alt="' . htmlsafechars((string) $row['name']) . '" class="emoticon">' : '---';
            $body .= '
			<tr>
				<td>' . format_username((int) $row['id']) . '</td>
				<td>' . get_date((int) $row['registered'], '') . '</td>
				<td>' . ($row['perms'] < PERMS_STEALTH ? get_date((int) $row['last_access'], '') : 'Never') . '</td>
				<td>' . get_user_class_name((int) $row['class']) . '</td>
				<td>' . $country . '</td>
				<td>
					<a href="' . $site_config['paths']['baseurl'] . '/forums.php?action=member_post_history&amp;id=' . (int) $row['id'] . '" title="see this members post history" class="is-link">' . $lang['fe_post_history'] . '</a>
				</td>
			</tr>';
        }
        $HTMLOUT .= main_table($body, $heading);
    } else {
        $HTMLOUT .= main_div('<div class="padding20">' . $lang['vph_sorry_no_mem_found'] . '</div>');
    }
    $HTMLOUT .= ($count > $perpage ? $menu_bottom : '');
} else {
    $res_count = sql_query('SELECT COUNT(p.id) AS count FROM posts AS p LEFT JOIN topics AS t ON p.topic_id = t.id LEFT JOIN forums AS f ON f.id = t.forum_id WHERE ' . ($CURUSER['class'] < UC_STAFF ? 'p.status = \'ok\' AND t.status = \'ok\' AND' : ($CURUSER['class'] < $site_config['forum_config']['min_delete_view_class'] ? 'p.status != \'deleted\' AND t.status != \'deleted\'  AND' : '')) . ' p.user_id=' . sqlesc($member_id) . ' AND f.min_class_read <= ' . $CURUSER['class']) or sqlerr(__FILE__, __LINE__);
    $arr_count = mysqli_fetch_row($res_count);
    $count = $arr_count[0];
    $page = isset($_GET['page']) ? (int) $_GET['page'] : 0;
    $perpage = isset($_GET['perpage']) ? (int) $_GET['perpage'] : 20;
    $subscription_on_off = (isset($_GET['s']) ? ($_GET['s'] == 1 ? '<br><div style="font-weight: bold;">' . $lang['fe_sub_to_topic'] . ' <img src="' . $site_config['paths']['images_baseurl'] . 'forums/subscribe.gif" alt="" class="emoticon"></div>' : '<br><div style="font-weight: bold;">' . $lang['fe_unsub_to_topic'] . ' <img src="' . $site_config['paths']['images_baseurl'] . 'forums/unsubscribe.gif" alt="" class="emoticon"></div>') : '');
    $link = $site_config['paths']['baseurl'] . "/forums.php?action=member_post_history&amp;id={$member_id}&amp;" . (isset($_GET['perpage']) ? "perpage={$perpage}&amp;" : '');
    $pager = pager($perpage, $count, $link);
    $menu_top = $pager['pagertop'];
    $menu_bottom = $pager['pagerbottom'];
    $LIMIT = $pager['limit'];

    $res = sql_query('SELECT p.id AS post_id, p.topic_id, p.user_id, p.added, p.body, p.edited_by, p.edit_date, p.icon, p.post_title, p.bbcode, p.post_history, p.edit_reason, p.status AS post_status, p.anonymous, t.id AS topic_id, t.topic_name, t.forum_id, t.sticky, t.locked, t.poll_id, t.status AS topic_status, f.name AS forum_name, f.description FROM posts AS p LEFT JOIN topics AS t ON p.topic_id=t.id LEFT JOIN forums AS f ON f.id=t.forum_id WHERE  ' . ($CURUSER['class'] < UC_STAFF ? 'p.status = \'ok\' AND t.status = \'ok\' AND' : ($CURUSER['class'] < $site_config['forum_config']['min_delete_view_class'] ? 'p.status != \'deleted\' AND t.status != \'deleted\'  AND' : '')) . ' p.user_id=' . sqlesc($member_id) . ' AND f.min_class_read <= ' . $CURUSER['class'] . ' ORDER BY p.id ' . $ASC_DESC . $LIMIT) or sqlerr(__FILE__, __LINE__);
    if ($count === 0) {
        stderr($lang['gl_sorry'], (!empty($member_id) ? format_username((int) $member_id) . ' ' . $lang['vmp_has_no_posts_look'] . '!' : $lang['fe_no_mem_with_id']));
    }
    $HTMLOUT .= $mini_menu . '<h1 class="has-text-centered">' . $count . ' ' . $lang['fe_posts_by'] . ' ' . format_username((int) $member_id) . '</h1>
            <ul class="level-center bottom20">
                <li>
                    <a href="' . $site_config['paths']['baseurl'] . '/forums.php?action=member_post_history&amp;id=' . $member_id . '" class="button is-small tooltipper" title="' . $lang['vmp_view_posts_new_to_old'] . '">' . $lang['vmp_sort_by_newest_posts_1st'] . '</a>
                </li>
                <li>
                    <a href="forums.php?action=member_post_history&amp;id=' . $member_id . '&amp;ASC_DESC=ASC" class="button is-small tooltipper" title="' . $lang['vmp_view_posts_old_to_new'] . '">' . $lang['vmp_sort_by_oldest_posts_1st'] . '</a>
                </li>
            </ul>';

    $HTMLOUT .= ($count > $perpage ? $menu_top : '') . '<a id="top"></a>';
    while ($arr = mysqli_fetch_assoc($res)) {
        $topic_status = htmlsafechars((string) $arr['topic_status']);
        switch ($topic_status) {
            case 'ok':
                $topic_status_image = '';
                break;

            case 'recycled':
                $topic_status_image = '<img src="' . $site_config['paths']['images_baseurl'] . 'forums/recycle_bin.gif" alt="' . $lang['fe_recycled'] . '" title="' . $lang['fe_this_thread_is_currently'] . ' ' . $lang['fe_in_the_recycle_bin'] . '" class="emoticon">';
                break;

            case 'deleted':
                $topic_status_image = '<img src="' . $site_config['paths']['images_baseurl'] . 'forums/delete_icon.gif" alt="' . $lang['fe_deleted'] . '" title="' . $lang['fe_this_thread_is_currently'] . ' ' . $lang['fe_deleted'] . '" class="emoticon">';
                break;
        }
        //=== post status
        $post_status = htmlsafechars((string) $arr['post_status']);
        switch ($post_status) {
            case 'ok':
                $post_status = '';
                $post_status_image = '';
                break;

            case 'recycled':
                $post_status = 'recycled';
                $post_status_image = ' <img src="' . $site_config['paths']['images_baseurl'] . 'forums/recycle_bin.gif" alt="' . $lang['fe_recycled'] . '" title="' . $lang['fe_this_post_is_currently'] . ' ' . $lang['fe_in_the_recycle_bin'] . '" class="emoticon">';
                break;

            case 'deleted':
                $post_status = 'deleted';
                $post_status_image = ' <img src="' . $site_config['paths']['images_baseurl'] . 'forums/delete_icon.gif" alt="' . $lang['fe_deleted'] . '" title="' . $lang['fe_this_post_is_currently'] . ' ' . $lang['fe_deleted'] . '" class="emoticon">';
                break;

            case 'postlocked':
                $post_status = 'postlocked';
                $post_status_image = ' <img src="' . $site_config['paths']['images_baseurl'] . 'forums/thread_locked.gif" alt="' . $lang['fe_locked'] . '" title="' . $lang['fe_this_post_is_currently'] . ' ' . $lang['fe_locked'] . '" class="emoticon">';
                break;
        }
        $post_icon = (!empty($arr['icon']) ? '<img src="' . $site_config['paths']['images_baseurl'] . 'smilies/' . htmlsafechars((string) $arr['icon']) . '.gif" alt="icon" class="emoticon"> ' : '<img src="' . $site_config['paths']['images_baseurl'] . 'forums/topic_normal.gif" alt="icon" class="emoticon"> ');
        $post_title = (!empty($arr['post_title']) ? ' <span style="font-weight: bold; font-size: x-small;">' . htmlsafechars((string) $arr['post_title']) . '</span>' : '' . $lang['fe_link_to_post'] . '');
        $edited_by = '';
        if ($arr['edit_date'] > 0) {
            $res_edited = sql_query('SELECT username FROM users WHERE id=' . sqlesc($arr['edited_by'])) or sqlerr(__FILE__, __LINE__);
            $arr_edited = mysqli_fetch_assoc($res_edited);
            //== Anonymous
            if ($arr['anonymous'] === 'yes') {
                if ($CURUSER['class'] < UC_STAFF && $arr['user_id'] != $CURUSER['id']) {
                    $edited_by = '<br><br><br><span style="font-weight: bold; font-size: x-small;">' . $lang['vmp_last_edit_by_anony'] . '
				 at ' . get_date((int) $arr['edit_date'], '') . ' GMT ' . ($arr['edit_reason'] !== '' ? ' </span>[ ' . $lang['fe_reason'] . ': ' . htmlsafechars((string) $arr['edit_reason']) . ' ] <span style="font-weight: bold; font-size: x-small;">' : '') . '
				 ' . (($CURUSER['class'] >= UC_STAFF && $arr['post_history'] !== '') ? ' <a class="is-link" href="' . $site_config['paths']['baseurl'] . '/forums.php?action=view_post_history&amp;post_id=' . (int) $arr['post_id'] . '&amp;forum_id=' . (int) $arr['forum_id'] . '&amp;topic_id=' . (int) $arr['topic_id'] . '">' . $lang['fe_read_post_history'] . '</a></span><br>' : '</span>');
                } else {
                    $edited_by = '<br><br><br><span style="font-weight: bold; font-size: x-small;">' . $lang['vmp_last_edit_by_anony'] . ' [' . format_username((int) $arr['edited_by']) . ']
				 at ' . get_date((int) $arr['edit_date'], '') . ' GMT ' . ($arr['edit_reason'] !== '' ? ' </span>[ ' . $lang['fe_reason'] . ': ' . htmlsafechars((string) $arr['edit_reason']) . ' ] <span style="font-weight: bold; font-size: x-small;">' : '') . '
				 ' . (($CURUSER['class'] >= UC_STAFF && $arr['post_history'] !== '') ? ' <a class="is-link" href="' . $site_config['paths']['baseurl'] . '/forums.php?action=view_post_history&amp;post_id=' . (int) $arr['post_id'] . '&amp;forum_id=' . (int) $arr['forum_id'] . '&amp;topic_id=' . (int) $arr['topic_id'] . '">' . $lang['fe_read_post_history'] . '</a></span><br>' : '</span>');
                }
            } else {
                $edited_by = '<br><br><br><span style="font-weight: bold; font-size: x-small;">' . $lang['fe_last_edited_by'] . ' ' . format_username((int) $arr['edited_by']) . '
				 at ' . get_date((int) $arr['edit_date'], '') . ' GMT ' . ($arr['edit_reason'] !== '' ? ' </span>[ ' . $lang['fe_reason'] . ': ' . htmlsafechars((string) $arr['edit_reason']) . ' ] <span style="font-weight: bold; font-size: x-small;">' : '') . '
				 ' . (($CURUSER['class'] >= UC_STAFF && $arr['post_history'] !== '') ? ' <a class="is-link" href="' . $site_config['paths']['baseurl'] . '/forums.php?action=view_post_history&amp;post_id=' . (int) $arr['post_id'] . '&amp;forum_id=' . (int) $arr['forum_id'] . '&amp;topic_id=' . (int) $arr['topic_id'] . '">' . $lang['fe_read_post_history'] . '</a></span><br>' : '</span>');
            }
            //==
        }
        $body = ($arr['bbcode'] === 'yes' ? format_comment($arr['body']) : format_comment_no_bbcode($arr['body']));
        $post_id = (int) $arr['post_id'];
        $user_arr = $users_class->getUserFromId($arr['user_id']);
        $HTMLOUT .= '
        <table class="table table-bordered table-striped">
        <tr>
		<td colspan="3">' . $lang['fe_forum'] . ':
		<a class="is-link" href="forums . php?action=view_forum&amp;forum_id=' . (int) $arr['forum_id'] . '" title="' . $lang['fe_link_to_forum'] . '">
		<span style="color: white;font-weight: bold;">' . htmlsafechars((string) $arr['forum_name']) . '</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
		' . $lang['fe_topic'] . ': <a class="is-link" href="forums . php?action=view_topic&amp;topic_id=' . (int) $arr['topic_id'] . '" title="' . $lang['fe_link_to_forum'] . '">
		<span style="color: white;font-weight: bold;">' . htmlsafechars((string) $arr['topic_name']) . '</span></a>' . $topic_status_image . '</td>
		</tr>
		<tr>
		<td class="forum_head" width="100"><a id="' . $post_id . '"></a></td>
		<td class="forum_head"><span style="white - space:nowrap;">' . $post_icon . '
		<a class="is-link" href="forums . php?action=view_topic&amp;topic_id=' . (int) $arr['topic_id'] . '&amp;page = ' . $page . '#' . (int) $arr['post_id'] . '" title="' . $lang['fe_link_to_post'] . '">
		' . $post_title . ' </a>&nbsp;&nbsp;' . $post_status_image . ' & nbsp;&nbsp; ' . $lang['fe_posted_on'] . ': ' . get_date((int) $arr['added'], '') . ' [' . get_date((int) $arr['added'], '', 0, 1) . ']</span></td>
		<td class="forum_head"><span style="white-space:nowrap;">
		<a href="forums.php?action=view_my_posts&amp;page=' . $page . '#top"><img src="' . $site_config['paths']['images_baseurl'] . 'forums/up.gif" alt = "' . $lang['fe_top'] . '" class="emoticon"></a>
		<a href="forums.php?action=view_my_posts&amp;page=' . $page . '#bottom"><img src="' . $site_config['paths']['images_baseurl'] . 'forums/down.gif" alt = "' . $lang['fe_bottom'] . '" class="emoticon"></a></span></td>
		</tr>
		<tr>
		<td class="has-text-centered w-15 mw-150">' . get_avatar($arr) . '<br>' . ($arr['anonymous'] === 'yes' ? ' < i>' . get_anonymous_name() . ' </i>' : format_username((int) $member_id)) . ($arr['anonymous'] === 'yes' || empty($user_arr['title']) ? '' : ' < br><span style=" font-size: xx-small;">[' . htmlsafechars((string) $user_arr['title']) . ']</span>') . '<br><span style="font-weight: bold;">' . ($arr['anonymous'] === 'yes' ? '' : get_user_class_name((int) $user_arr['class'])) . ' </span><br></td>
		<td class="' . $post_status . '" align = "left" valign = "top" colspan="2">' . $body . $edited_by . '</td>
		</tr>
        </table>';
    }
    $HTMLOUT .= ($count > $perpage ? $menu_bottom : '') . ' < a id="bottom"></a>';
}
