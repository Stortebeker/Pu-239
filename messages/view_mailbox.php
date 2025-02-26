<?php

declare(strict_types = 1);
$user = check_user_status();
require_once INCL_DIR . 'function_users.php';
$show_pm_avatar = ($user['opt2'] & user_options_2::SHOW_PM_AVATAR) === user_options_2::SHOW_PM_AVATAR;

if ($mailbox > 1) {
    //== get name of PM box if not in or out
    $res_box_name = sql_query('SELECT name FROM pmboxes WHERE userid=' . sqlesc($user['id']) . ' AND boxnumber=' . sqlesc($mailbox) . ' LIMIT 1') or sqlerr(__FILE__, __LINE__);
    $arr_box_name = mysqli_fetch_row($res_box_name);
    if (mysqli_num_rows($res_box_name) === 0) {
        stderr($lang['pm_error'], $lang['pm_mailbox_invalid']);
    }
    $mailbox_name = htmlsafechars($arr_box_name[0]);
    $other_box_info = '<p><span style="color: red;">' . $lang['pm_mailbox_asterisc'] . '</span><span style="font-weight: bold;">' . $lang['pm_mailbox_note'] . '</span>
                                            ' . $lang['pm_mailbox_max'] . '<span style="font-weight: bold;">' . $maxbox . '</span>' . $lang['pm_mailbox_either'] . '
                                            <span style="font-weight: bold;">' . $lang['pm_mailbox_inbox'] . '</span>' . $lang['pm_mailbox_or'] . '<span style="font-weight: bold;">' . $lang['pm_mailbox_sentbox'] . '</span>' . $lang['pm_mailbox_dot'] . '</p>';
}
//==== get count from PM boxs & get image & % box full
//=== get stuff for the pager
$res_count = sql_query('SELECT COUNT(id) FROM messages WHERE ' . ($mailbox === $site_config['pm']['inbox'] ? 'receiver = ' . sqlesc($user['id']) . ' AND location = 1' : ($mailbox === $site_config['pm']['sent'] ? 'sender = ' . sqlesc($user['id']) . ' AND (saved = \'yes\' || unread= \'yes\') AND draft = \'no\' ' : 'receiver = ' . sqlesc($user['id'])) . ' AND location = ' . sqlesc($mailbox))) or sqlerr(__FILE__, __LINE__);
$arr_count = mysqli_fetch_row($res_count);
$messages = (int) $arr_count[0];
//==== get count from PM boxs & get image & % box full
$filled = $messages > 0 ? (($messages / $maxbox) * 100) : 0;
//$filled = (($messages / $maxbox) * 100);
$mailbox_pic = get_percent_completed_image(round($filled), $maxpic);
$num_messages = number_format($filled, 0);
$link = 'messages.php?action=view_mailbox&amp;box=' . $mailbox . '&amp;order_by=' . $order_by . $desc_asc . '&amp;';
$pager = pager($perpage, $messages, $link);
$menu_top = $pager['pagertop'];
$menu_bottom = $pager['pagerbottom'];
$LIMIT = $pager['limit'];

//=== get message info we need to display then all nice and tidy like \o/
$res = sql_query('SELECT m.id AS message_id, m.poster, m.sender, m.receiver, m.added, m.subject, m.unread, m.urgent, u.id, u.username, u.uploaded, u.downloaded, u.warned, u.suspended, u.enabled, u.donor, u.class, u.avatar, u.offensive_avatar, u.opt1, u.opt2,  u.leechwarn, u.chatpost, u.pirate, u.king, f.id AS friend, b.id AS blocked FROM messages AS m
                            LEFT JOIN users AS u ON u.id=m.' . ($mailbox === $site_config['pm']['sent'] ? 'receiver' : 'sender') . '
                            LEFT JOIN friends AS f ON f.userid=' . $user['id'] . ' AND f.friendid=m.sender
                            LEFT JOIN blocks AS b ON b.userid=' . $user['id'] . ' AND b.blockid=m.sender
                            WHERE ' . ($mailbox === $site_config['pm']['inbox'] ? 'receiver = ' . $user['id'] . ' AND location = 1' : ($mailbox === $site_config['pm']['sent'] ? 'sender = ' . $user['id'] . ' AND (saved = \'yes\' || unread= \'yes\') AND draft = \'no\' ' : 'receiver = ' . $user['id'] . ' AND location = ' . sqlesc($mailbox))) . '
                            ORDER BY ' . $order_by . (isset($_GET['ASC']) ? ' ' : ' DESC ') . $LIMIT) or sqlerr(__FILE__, __LINE__);
//=== Start Page
//echo stdhead(htmlsafechars($mailbox_name));
//=== let's make the table
$HTMLOUT .= "
    $top_links
    <a id='pm'></a>
        <div class='level-center-center'>
            <span class='size_2'>{$messages} / {$maxbox}</span>
            <span class='size_7 left20 right20 has-text-weight-bold'>{$mailbox_name}</span>
            <span class='size_2'>{$lang['pm_mailbox_full']}{$num_messages}{$lang['pm_mailbox_full1']}</span>
         </div>
        <div class='margin20'>$mailbox_pic</div>" . insertJumpTo($mailbox, $user['id']) . $other_box_info . ($messages > $perpage ? $menu_top : '') . "
        <form action='messages.php' method='post' name='checkme' accept-charset='utf-8'>
            <div class='table-wrapper'>
            <table class='table table-bordered table-striped top20'>
                <thead>
                    <tr>
                        <th class='has-text-centered w-1'>
                            <input type='hidden' name='action' value='move_or_delete_multi'>
                            Mailbox
                        </th>
                        <th class='min-150'>
                            <a href='{$site_config['paths']['baseurl']}/messages.php?action=view_mailbox&amp;box={$mailbox}" . ($perpage == 20 ? '' : '&amp;perpage=' . $perpage) . ($perpage < $messages ? '&amp;page=' . $page : '') . "&amp;order_by=subject{$desc_asc}#pm' class='tooltipper' title='{$lang['pm_mailbox_sorder']}{$desc_asc_2}'>{$lang['pm_mailbox_subject']}
                            </a>
                        </th>
                        <th class='has-text-centered'>
                            <a href='{$site_config['paths']['baseurl']}/messages.php?action=view_mailbox&amp;box={$mailbox}" . ($perpage == 20 ? '' : '&amp;perpage=' . $perpage) . ($perpage < $messages ? '&amp;page=' . $page : '') . "&amp;order_by=username{$desc_asc}#pm' class='tooltipper' title='{$lang['pm_mailbox_morder']}{$desc_asc_2}'>" . ($mailbox === $site_config['pm']['sent'] ? $lang['pm_search_sent_to'] : $lang['pm_search_sender']) . "
                            </a>
                        </th>
                        <th class='has-text-centered'>
                            <a href='{$site_config['paths']['baseurl']}/messages.php?action=view_mailbox&amp;box={$mailbox}" . ($perpage == 20 ? '' : '&amp;perpage=' . $perpage) . ($perpage < $messages ? '&amp;page=' . $page : '') . "&amp;order_by=added{$desc_asc}#pm' class='tooltipper' title='{$lang['pm_mailbox_dorder']} {$desc_asc_2}'>{$lang['pm_mailbox_date']}
                            </a>
                        </th>
                        <th class='has-text-centered w-1'><input type='checkbox' id='checkThemAll' class='tooltipper' title='Select All'></th>
                    </tr>
                </thead>
                <tbody>";
if (mysqli_num_rows($res) === 0) {
    $HTMLOUT .= "
        <tr>
            <td colspan='5' class='has-text-centered'>
                <div>{$lang['pm_mailbox_nomsg']}{$mailbox_name}</div>
            </td>
        </tr>";
} else {
    while ($row = mysqli_fetch_assoc($res)) {
        if ($mailbox === $site_config['pm']['drafts'] || $row['id'] == 0 || $row['sender'] == $user['id'] || $row['poster'] == $user['id']) {
            $friends = '';
        } else {
            if ($row['friend'] > 0) {
                $friends = '
                    <a href="' . $site_config['paths']['baseurl'] . '/friends.php?action=delete&amp;type=friend&amp;targetid=' . (int) $row['id'] . '">
                        <small><i class="icon-minus has-text-danger tooltipper" title="' . $lang['pm_mailbox_removef'] . '"></i></small>
                    </a>';
            } elseif ($row['blocked'] > 0) {
                $friends = '
                    <a href="' . $site_config['paths']['baseurl'] . '/friends.php?action=delete&amp;type=block&amp;targetid=' . (int) $row['id'] . '">
                        <small><i class="icon-minus has-text-danger tooltipper" title="' . $lang['pm_mailbox_removeb'] . '"></i></small>
                    </a>';
            } else {
                $friends = '
                    <a href="' . $site_config['paths']['baseurl'] . '/friends.php?action=add&amp;type=friend&amp;targetid=' . (int) $row['id'] . '">
                        <small><i class="icon-user-plus icon has-text-success tooltipper" title="' . $lang['pm_mailbox_addf'] . '"></i></small>
                    </a>
                    <a href="' . $site_config['paths']['baseurl'] . '/friends.php?action=add&amp;type=block&amp;targetid=' . (int) $row['id'] . '">
                        <small><i class="icon-user-times icon has-text-danger tooltipper" title="' . $lang['pm_mailbox_addb'] . '"></i></small>
                    </a>';
            }
        }
        $subject = !empty($row['subject']) ? htmlsafechars($row['subject']) : $lang['pm_search_nosubject'];
        $who_sent_it = $row['id'] == 0 ? '<span style="font-weight: bold;">' . $lang['pm_forward_system'] . '</span>' : format_username((int) $row['id']) . $friends;
        $read_unread = $row['unread'] === 'yes' ? '<img src="' . $site_config['paths']['images_baseurl'] . 'pn_inboxnew.gif" title="' . $lang['pm_mailbox_unreadmsg'] . '" alt="' . $lang['pm_mailbox_unread'] . '">' : '<img src="' . $site_config['paths']['images_baseurl'] . 'pn_inbox.gif" title="' . $lang['pm_mailbox_readmsg'] . '" alt="' . $lang['pm_mailbox_read'] . '">';
        $extra = ($row['unread'] === 'yes' ? $lang['pm_mailbox_char1'] . '<span style="color: red;">' . $lang['pm_mailbox_unread'] . '</span>' . $lang['pm_mailbox_char2'] : '') . ($row['urgent'] === 'yes' ? '<span style="color: red;">' . $lang['pm_mailbox_urgent'] . '</span>' : '');
        $avatar = $show_pm_avatar ? get_avatar($row) : '';
        $HTMLOUT .= '
                <tr>
                    <td class="has-text-centered">' . $read_unread . '</td>
                    <td class="min-350"><a class="is-link"  href="' . $site_config['paths']['baseurl'] . '/messages.php?action=view_message&amp;id=' . (int) $row['message_id'] . '">' . $subject . '</a> ' . $extra . '</td>
                    <td class="has-text-centered w-15 mw-150">' . $avatar . $who_sent_it . ($user['class'] >= UC_STAFF && $row['sender'] == 0 && $row['poster'] != 0 && $row['poster'] != $user['id'] ? ' [' . format_username((int) $row['poster']) . ']' : '') . '</td>
                    <td class="has-text-centered w-15 mw-150">' . get_date((int) $row['added'], '') . '</td>
                    <td class="has-text-centered">
                        <input type="checkbox" name="pm[]" value="' . (int) $row['message_id'] . '">
                    </td>
                </tr>';
    }
}

$per_page_drop_down = '<form action="messages.php" method="post"><select name="amount_per_page" onchange="location=this.options[this.selectedIndex].value;" accept-charset="utf-8">';
$i = 20;
while ($i <= ($maxbox > 200 ? 200 : $maxbox)) {
    $per_page_drop_down .= '<option class="body" value="' . $link . '&amp;change_pm_number=' . $i . '"  ' . ($user['pms_per_page'] == $i ? ' selected' : '') . '>' . $i . $lang['pm_edmail_perpage'] . '</option>';
    $i = ($i < 100 ? $i = $i + 10 : $i = $i + 25);
}
$per_page_drop_down .= '</select><input type="hidden" name="box" value="' . $mailbox . '"></form>';

$show_pm_avatar_drop_down = '
    <form method="post" action="messages.php" accept-charset="utf-8">
        <select name="show_pm_avatar" onchange="location=this.options[this.selectedIndex].value;">
            <option value="' . $link . '&amp;show_pm_avatar=yes" ' . ($show_pm_avatar ? ' selected' : '') . '>' . $lang['pm_edmail_show_av'] . '</option>
            <option value="' . $link . '&amp;show_pm_avatar=no" ' . (!$show_pm_avatar ? ' selected' : '') . '>' . $lang['pm_mailbox_dontav'] . '</option>
        </select>
            <input type="hidden" name="box" value="' . $mailbox . '"></form>';

$HTMLOUT .= (mysqli_num_rows($res) > 0 ? "
    <tr>
        <td colspan='5'>
            <div class='level-center-center'>
                <input type='submit' class='button is-small right10' name='move' value='{$lang['pm_search_move_to']}'> " . get_all_boxes($mailbox, $user['id']) . " or
                <input type='submit' class='button is-small left10 right10' name='delete' value='{$lang['pm_search_delete']}'>{$lang['pm_search_selected']}
            </div>
        </td>
    </tr>
    <tr>
        <td colspan='5'>
            <div class='level-center'>
                <span><img src='{$site_config['paths']['images_baseurl']}pn_inboxnew.gif' title='{$lang['pm_mailbox_unreadmsg']}' alt='{$lang['pm_mailbox_unread']}'>{$lang['pm_mailbox_unreadmsgs']}</span>
                <span><img src='{$site_config['paths']['images_baseurl']}pn_inbox.gif' title='{$lang['pm_mailbox_readmsg']}' alt='{$lang['pm_mailbox_read']}'>'{$lang['pm_mailbox_readmsgs']}</span>
                {$per_page_drop_down}
                {$show_pm_avatar_drop_down}
            </div>
        </td>
    </tr>" : '') . '
    </table>
    </div>
        ' . ($messages > $perpage ? $menu_bottom . '<br>' : '') . '
    </form>';
