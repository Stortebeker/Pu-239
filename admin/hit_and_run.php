<?php

declare(strict_types = 1);

require_once INCL_DIR . 'function_users.php';
require_once INCL_DIR . 'function_bbcode.php';
require_once INCL_DIR . 'function_pager.php';
require_once INCL_DIR . 'function_html.php';
require_once CLASS_DIR . 'class_check.php';
$class = get_access(basename($_SERVER['REQUEST_URI']));
class_check($class);
$lang = array_merge($lang, load_language('ad_hit_and_run'));
global $site_config;

$query = (isset($_GET['really_bad']) ? 'SELECT COUNT(id) FROM snatched LEFT JOIN users ON users.id=snatched.userid WHERE snatched.finished = \'yes\' AND snatched.hit_and_run>0 AND users.hit_and_run_total>2' : 'SELECT COUNT(id) FROM `snatched` WHERE `finished` = \'yes\' AND `hit_and_run`>0');
$HTMLOUT = '';
$page = isset($_GET['page']) ? (int) $_GET['page'] : 0;
$perpage = isset($_GET['perpage']) ? (int) $_GET['perpage'] : 15;
$res_count = sql_query($query) or sqlerr(__FILE__, __LINE__);
$arr_count = mysqli_fetch_row($res_count);
$count = ($arr_count[0] > 0 ? $arr_count[0] : 0);
$link = $site_config['paths']['baseurl'] . '/staffpanel.php?tool=hit_and_run';
$pager = pager($perpage, $count, $link);
$menu_top = $pager['pagertop'];
$menu_bottom = $pager['pagerbottom'];
$LIMIT = $pager['limit'];

$query_2 = (isset($_GET['really_bad']) ? "SELECT s.torrentid, s.userid, s.hit_and_run, s.downloaded AS dload, s.uploaded AS uload, s.seedtime, s.start_date, s.complete_date, p.id, p.torrent, p.seeder, u.id, u.avatar, u.offensive_avatar, u.username, u.uploaded AS up, u.downloaded AS down, u.class, u.hit_and_run_total, u.donor, u.warned, u.enabled, u.leechwarn, u.chatpost, u.pirate, u.king, u.suspended, t.owner, t.name, t.added AS torrent_added, t.seeders AS numseeding, t.leechers AS numleeching FROM snatched AS s LEFT JOIN users AS u ON u.id=s.userid LEFT JOIN peers AS p ON p.torrent=s.torrentid AND p.userid=s.userid LEFT JOIN torrents AS t ON t.id=s.torrentid WHERE finished = 'yes' AND hit_and_run>0 AND u.hit_and_run_total>2 ORDER BY userid $LIMIT" : "SELECT s.torrentid, s.userid, s.hit_and_run, s.downloaded AS dload, s.uploaded AS uload, s.seedtime, s.start_date, s.complete_date, p.id, p.torrent, p.seeder, u.id, u.avatar, u.username, u.uploaded AS up, u.downloaded AS down, u.class, u.hit_and_run_total, u.donor, u.warned, u.enabled, u.leechwarn, u.chatpost, u.pirate, u.king, u.suspended, t.owner, t.name, t.added AS torrent_added, t.seeders AS numseeding, t.leechers AS numleeching FROM snatched AS s LEFT JOIN users AS u ON u.id=s.userid LEFT JOIN peers AS p ON p.torrent = s.torrentid AND p.userid=s.userid LEFT JOIN torrents AS t ON t.id=s.torrentid WHERE `finished` = 'yes' AND `hit_and_run`>0 ORDER BY `userid` $LIMIT");
$hit_and_run_rez = sql_query($query_2) or sqlerr(__FILE__, __LINE__);
$HTMLOUT .= "
            <ul class='level-center bg-06'>
                <li class='is-link margin10'>
                    <a href='{$site_config['paths']['baseurl']}/staffpanel.php?tool=hit_and_run'>{$lang['hitnrun_show_current']}</a>
                </li>
                <li class='is-link margin10'>
                    <a href='{$site_config['paths']['baseurl']}/staffpanel.php?tool=hit_and_run&amp;really_bad=show_them'>{$lang['hitnrun_show_disabled']}</a>
                </li>
            </ul>
            <h1 class='has-text-centered'>" . (!isset($_GET['really_bad']) ? $lang['hitnrun_chance'] : $lang['hitnrun_nochance']) . '</h1>' . ($count > $perpage ? '<p>' . $menu_top . '</p>' : '') . '
        <table class="table table-bordered table-striped">' . (mysqli_num_rows($hit_and_run_rez) > 0 ? '<tr><td class="colhead">' . $lang['hitnrun_avatar'] . '</td>
        <td class="colhead"><b>' . $lang['hitnrun_member'] . '</b></td>
        <td class="colhead"><b>' . $lang['hitnrun_torrent'] . '</b></td>
        <td class="colhead"><b>' . $lang['hitnrun_times'] . '</b></td>
        <td class="colhead"><b>' . $lang['hitnrun_stats'] . '</b></td>
        <td class="colhead">' . $lang['hitnrun_actions'] . '</td>' : '<tr><td><div class="padding20">' . $lang['hitnrun_none'] . '</div></td>') . '</tr>';
while ($hit_and_run_arr = mysqli_fetch_assoc($hit_and_run_rez)) {
    $Xbt_Seed = $hit_and_run_arr['seeder'] !== 'yes';
    $Uid_ID = (int) $hit_and_run_arr['userid'];
    $S_date = (int) $hit_and_run_arr['start_date'];
    $T_ID = (int) $hit_and_run_arr['torrentid'];
    $C_Date = (int) $hit_and_run_arr['complete_date'];
    if ($Xbt_Seed) {
        if ($Uid_ID !== $hit_and_run_arr['owner']) {
            $site_ratio = $hit_and_run_arr['up'] / ($site_config['site']['ratio_free'] ? 1 : (int) $hit_and_run_arr['down']);
            $torrent_ratio = $hit_and_run_arr['uload'] / ($site_config['site']['ratio_free'] ? 1 : (int) $hit_and_run_arr['dload']);
            $ratio_site = member_ratio((int) $hit_and_run_arr['up'], (int) $hit_and_run_arr['down']);
            $ratio_torrent = member_ratio((int) $hit_and_run_arr['uload'], (int) $hit_and_run_arr['dload']);
            $avatar = get_avatar($hit_and_run_arr);
            $torrent_needed_seed_time = $hit_and_run_arr['seedtime'];
            switch (true) {
                case $hit_and_run_arr['class'] <= $site_config['hnr_config']['firstclass']:
                    $days_3 = $site_config['hnr_config']['_3day_first'] * 3600;
                    $days_14 = $site_config['hnr_config']['_14day_first'] * 3600;
                    $days_over_14 = $site_config['hnr_config']['_14day_over_first'] * 3600;
                    break;

                case $hit_and_run_arr['class'] < $site_config['hnr_config']['secondclass']:
                    $days_3 = $site_config['hnr_config']['_3day_second'] * 3600;
                    $days_14 = $site_config['hnr_config']['_14day_second'] * 3600;
                    $days_over_14 = $site_config['hnr_config']['_14day_over_second'] * 3600;
                    break;

                case $hit_and_run_arr['class'] >= $site_config['hnr_config']['thirdclass']:
                    $days_3 = $site_config['hnr_config']['_3day_third'] * 3600;
                    $days_14 = $site_config['hnr_config']['_14day_third'] * 3600;
                    $days_over_14 = $site_config['hnr_config']['_14day_over_third'] * 3600;
                    break;

                default:
                    $days_3 = $site_config['hnr_config']['_3day_first'] * 3600; //== 1 days
                    $days_14 = $site_config['hnr_config']['_14day_first'] * 3600; //== 1 days
                    $days_over_14 = $site_config['hnr_config']['_14day_over_first'] * 3600; //== 1 day
            }
            switch (true) {
                case ($S_date - $hit_and_run_arr['torrent_added']) < $site_config['hnr_config']['torrentage1'] * 86400:
                    $minus_ratio = $days_3 - $torrent_needed_seed_time;
                    break;

                case ($S_date - $hit_and_run_arr['torrent_added']) < $site_config['hnr_config']['torrentage2'] * 86400:
                    $minus_ratio = $days_14 - $torrent_needed_seed_time;
                    break;

                case ($S_date - $hit_and_run_arr['torrent_added']) >= $site_config['hnr_config']['torrentage3'] * 86400:
                    $minus_ratio = $days_over_14 - $torrent_needed_seed_time;
                    break;

                default:
                    $minus_ratio = $days_over_14 - $torrent_needed_seed_time;
            }
            $minus_ratio = $minus_ratio < 0 ? 0 : $minus_ratio;
            $color = $minus_ratio > 0 ? get_ratio_color($minus_ratio) : 'limegreen';
            $users = $hit_and_run_arr;
            $users['id'] = (int) $Uid_ID;
            $HTMLOUT .= '<tr><td class="has-text-centered w-15 mw-150">' . $avatar . '</td>
            <td><a class="is-link" href="' . $site_config['paths']['baseurl'] . '/userdetails.php?id=' . (int) $Uid_ID . '&amp;completed=1#completed">' . htmlsafechars($users['username']) . '</a>  [ ' . get_user_class_name((int) $hit_and_run_arr['class']) . ' ]
</td>
            <td><a class="is-link" href="details.php?id=' . (int) $T_ID . '&amp;hit=1">' . htmlsafechars($hit_and_run_arr['name']) . '</a><br>
            ' . $lang['hitnrun_leechers'] . '' . (int) $hit_and_run_arr['numleeching'] . '<br>
            ' . $lang['hitnrun_seeders'] . ' ' . (int) $hit_and_run_arr['numseeding'] . '
         </td>
            <td>' . $lang['hitnrun_finished'] . ' ' . get_date($C_Date, 'LONG') . '<br>
            ' . $lang['hitnrun_stopped'] . ' ' . get_date($hit_and_run_arr['hit_and_run'], '') . '<br>
            ' . $lang['hitnrun_seeded'] . '' . mkprettytime($hit_and_run_arr['seedtime']) . '<br>
            **' . $lang['hitnrun_still'] . ' ' . mkprettytime($minus_ratio) . '</td>
            <td>' . $lang['hitnrun_uploaded'] . '' . mksize($hit_and_run_arr['uload']) . '<br>
            ' . ($site_config['site']['ratio_free'] ? '' : $lang['hitnrun_downloaded'] . mksize($hit_and_run_arr['dload']) . '<br>') . '
            ' . $lang['hitnrun_ratio'] . '<span style="color: "' . get_ratio_color($torrent_ratio) . '">' . $ratio_torrent . '</span><br>
            ' . $lang['hitnrun_site_ratio'] . '<span style="color: "' . get_ratio_color($site_ratio) . '" title="' . $lang['hitnrun_includes'] . '">' . $ratio_site . '</font></td>
            <td><a href="messages.php?action=send_message&amp;receiver=' . (int) $Uid_ID . '"><img src="' . $site_config['paths']['images_baseurl'] . 'pm.gif" alt="PM" title="' . $lang['hitnrun_send'] . '"></a><br>
            <a class="is-link" href="' . $site_config['paths']['baseurl'] . '/staffpanel.php?tool=shit_list&amp;action2=new&amp;shit_list_id=' . (int) $Uid_ID . '&amp;return_to=staffpanel.php?tool=hit_and_run"><img src="' . $site_config['paths']['images_baseurl'] . 'smilies/shit.gif" alt="Shit" title="' . $lang['hitnrun_shit'] . '"></a></td></tr>';
        }
    }
}
$HTMLOUT .= '</table>' . ($count > $perpage ? '<p>' . $menu_bottom . '</p>' : '');
echo stdhead($lang['hitnrun_stdhead']) . wrapper($HTMLOUT) . stdfoot();
