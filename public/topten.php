<?php

declare(strict_types = 1);

use Pu239\Database;

require_once __DIR__ . '/../include/bittorrent.php';
require_once INCL_DIR . 'function_users.php';
require_once INCL_DIR . 'function_html.php';
check_user_status();
$lang = array_merge(load_language('global'), load_language('topten'));
global $container, $site_config;

$fluent = $container->get(Database::class);

$HTMLOUT = '';
/**
 * @param     $result
 * @param int $numass
 *
 * @return mixed
 */
function mysql_fetch_rowsarr($result, $numass = MYSQLI_BOTH)
{
    $i = 0;
    $got = [];
    $keys = array_keys(mysqli_fetch_array($result, $numass));
    mysqli_data_seek($result, 0);
    while ($row = mysqli_fetch_array($result, $numass)) {
        foreach ($keys as $speckey) {
            $got[$i][$speckey] = $row[$speckey];
        }
        ++$i;
    }

    return $got;
}

/*
chs = widthxheight (adjust if needed)
chco = chart colours, a,b,a,b,a,b,a,b
chf = 7d7d7d = background colour, adjust to your theme background colour
*/
$imgstartbar = '<img src="https://chart.googleapis.com/chart?cht=bvg&amp;chbh=a&amp;chs=780x300&amp;chco=4D89F9,4D89F9&amp;chf=bg,s,000000';
$imgstartpie = '<img src="https://chart.googleapis.com/chart?cht=p3&amp;chbh=a&amp;chs=780x300&amp;chco=4D89F9&amp;chf=bg,s,000000';
$HTMLOUT .= "
        <ul class='level-center bg-06'>
            <li class='margin10'><a class='is-link tooltipper' href='{$site_config['paths']['baseurl']}/topten.php' title='Top 10 Users'>Users</a></li>
            <li class='margin10'><a class='is-link tooltipper' href='{$site_config['paths']['baseurl']}/topten.php?view=t' title='Top 10 Torrents'>Torrents</a></li>
            <li class='margin10'><a class='is-link tooltipper' href='{$site_config['paths']['baseurl']}/topten.php?view=c' title='Top 10 Countries'>Countries</a></li>
        </ul>";
if (isset($_GET['view']) && $_GET['view'] === 't') {
    $view = isset($_GET['t']) ? strip_tags($_GET['t']) : '';
    // Top Torrents
    $HTMLOUT .= "<div class='article'><div class='article_header'><h2>Top 10 Most Active Torrents</h2></div>";
    $result = sql_query("SELECT t.*, (t.size * t.times_completed + SUM(p.downloaded)) AS data FROM torrents AS t LEFT JOIN peers AS p ON t.id=p.torrent WHERE p.seeder = 'no' GROUP BY t.id ORDER BY seeders + leechers DESC, seeders DESC, added LIMIT 10");
    $counted = mysqli_num_rows($result);
    if ($counted == '10') {
        $arr = mysql_fetch_rowsarr($result);
        $tor1 = $arr[0]['name'];
        $tot1 = $arr[0]['leechers'] + $arr[0]['seeders'];
        $tor2 = $arr[1]['name'];
        $tot2 = $arr[1]['leechers'] + $arr[1]['seeders'];
        $tor3 = $arr[2]['name'];
        $tot3 = $arr[2]['leechers'] + $arr[2]['seeders'];
        $tor4 = $arr[3]['name'];
        $tot4 = $arr[3]['leechers'] + $arr[3]['seeders'];
        $tor5 = $arr[4]['name'];
        $tot5 = $arr[4]['leechers'] + $arr[4]['seeders'];
        $tor6 = $arr[5]['name'];
        $tot6 = $arr[5]['leechers'] + $arr[5]['seeders'];
        $tor7 = $arr[6]['name'];
        $tot7 = $arr[6]['leechers'] + $arr[6]['seeders'];
        $tor8 = $arr[7]['name'];
        $tot8 = $arr[7]['leechers'] + $arr[7]['seeders'];
        $tor9 = $arr[8]['name'];
        $tot9 = $arr[8]['leechers'] + $arr[8]['seeders'];
        $tor10 = $arr[9]['name'];
        $tot10 = $arr[9]['leechers'] + $arr[9]['seeders'];
        $HTMLOUT .= "$imgstartpie&amp;chd=t:$tot1,$tot2,$tot3,$tot4,$tot5,$tot6,$tot7,$tot8,$tot9,$tot10&amp;chl=$tor1($tot1)|$tor2($tot2)|$tor3($tot3)|$tor4($tot4)|$tor5($tot5)|$tor6($tot6)|$tor7($tot7)|$tor8($tot8)|$tor9($tot9)|$tor10($tot10)\" alt=''></div>";
    } else {
        $HTMLOUT .= '<h4>Insufficient Torrents (' . $counted . ')</h4></div>';
    }
    $HTMLOUT .= "<div class='article'><div class='article_header'><h2>Top 10 Most Snatched Torrents</h2></div>";
    $result = sql_query("SELECT t.*, (t.size * t.times_completed + SUM(p.downloaded)) AS data FROM torrents AS t LEFT JOIN peers AS p ON t.id=p.torrent WHERE p.seeder = 'no' GROUP BY t.id ORDER BY times_completed DESC LIMIT 10");
    $counted = mysqli_num_rows($result);
    if ($counted == '10') {
        $arr = mysql_fetch_rowsarr($result);
        $tor1 = $arr[0]['name'];
        $tot1 = $arr[0]['times_completed'];
        $tor2 = $arr[1]['name'];
        $tot2 = $arr[1]['times_completed'];
        $tor3 = $arr[2]['name'];
        $tot3 = $arr[2]['times_completed'];
        $tor4 = $arr[3]['name'];
        $tot4 = $arr[3]['times_completed'];
        $tor5 = $arr[4]['name'];
        $tot5 = $arr[4]['times_completed'];
        $tor6 = $arr[5]['name'];
        $tot6 = $arr[5]['times_completed'];
        $tor7 = $arr[6]['name'];
        $tot7 = $arr[6]['times_completed'];
        $tor8 = $arr[7]['name'];
        $tot8 = $arr[7]['times_completed'];
        $tor9 = $arr[8]['name'];
        $tot9 = $arr[8]['times_completed'];
        $tor10 = $arr[9]['name'];
        $tot10 = $arr[9]['times_completed'];
        $HTMLOUT .= "$imgstartpie&amp;chd=t:$tot1,$tot2,$tot3,$tot4,$tot5,$tot6,$tot7,$tot8,$tot9,$tot10&amp;chl=$tor1($tot1)|$tor2($tot2)|$tor3($tot3)|$tor4($tot4)|$tor5($tot5)|$tor6($tot6)|$tor7($tot7)|$tor8($tot8)|$tor9($tot9)|$tor10($tot10)\" alt=''></div>";
    } else {
        $HTMLOUT .= '<h4>Insufficient Torrents (' . $counted . ')</h4></div>';
    }
    echo stdhead($lang['head_title']) . wrapper($HTMLOUT, 'has-text-centered') . stdfoot();
    die();
}
if (isset($_GET['view']) && $_GET['view'] === 'c') {
    $view = isset($_GET['c']) ? strip_tags($_GET['c']) : '';
    // Top Countries
    $HTMLOUT .= "<div class='article'><div class='article_header'><h2>Top 10 Countries (users)</h2></div>";
    $arr = $fluent->from('countries AS c')
                  ->select(null)
                  ->select('c.name')
                  ->select('c.flagpic')
                  ->select('COUNT(u.country) AS num')
                  ->leftJoin('users AS u ON c.id = u.country')
                  ->groupBy('c.name')
                  ->groupBy('c.flagpic')
                  ->orderBy('num')
                  ->limit(10)
                  ->fetchAll();

    $counted = !empty($arr) ? count($arr) : 0;
    if ($counted == '10') {
        $name1 = $arr[0]['name'];
        $num1 = $arr[0]['num'];
        $name2 = $arr[1]['name'];
        $num2 = $arr[1]['num'];
        $name3 = $arr[2]['name'];
        $num3 = $arr[2]['num'];
        $name4 = $arr[3]['name'];
        $num4 = $arr[3]['num'];
        $name5 = $arr[4]['name'];
        $num5 = $arr[4]['num'];
        $name6 = $arr[5]['name'];
        $num6 = $arr[5]['num'];
        $name7 = $arr[6]['name'];
        $num7 = $arr[6]['num'];
        $name8 = $arr[7]['name'];
        $num8 = $arr[7]['num'];
        $name9 = $arr[8]['name'];
        $num9 = $arr[8]['num'];
        $name10 = $arr[9]['name'];
        $num10 = $arr[9]['num'];
        $HTMLOUT .= "$imgstartbar&amp;chds=0,$num1&amp;chxr=1,0,$num1&amp;chd=t:$num1,$num2,$num3,$num4,$num5,$num6,$num7,$num8,$num9,$num10&amp;chxt=x,y,x&amp;chxl=0:|$name1|$name2|$name3|$name4|$name5|$name6|$name7|$name8|$name9|$name10|2:|($num1)|($num2)|($num3)|($num4)|($num5)|($num6)|($num7)|($num8)|($num9)|($num10)\"  alt=''></div>";
    } else {
        $HTMLOUT .= '<h4>Insufficient Countries (' . $counted . ')</h4></div>';
    }
    $HTMLOUT .= "<div class='article'><div class='article_header'><h2>Top 10 Countries (total uploaded)</h2></div>";
    $result = $fluent->from('countries AS c')
                     ->select(null)
                     ->select('c.name')
                     ->select('c.flagpic')
                     ->select('sum(u.uploaded) AS ul')
                     ->where('u.enabled = "yes"')
                     ->leftJoin('users AS u ON c.id = u.country')
                     ->groupBy('c.name')
                     ->groupBy('c.flagpic')
                     ->orderBy('ul')
                     ->limit(10)
                     ->fetchAll();
    $counted = !empty($result) ? count($result) : 0;
    if ($counted == '10') {
        $arr = mysql_fetch_rowsarr($result);
        $name1 = $arr[0]['name'];
        $num1 = $arr[0]['ul'];
        $name2 = $arr[1]['name'];
        $num2 = $arr[1]['ul'];
        $name3 = $arr[2]['name'];
        $num3 = $arr[2]['ul'];
        $name4 = $arr[3]['name'];
        $num4 = $arr[3]['ul'];
        $name5 = $arr[4]['name'];
        $num5 = $arr[4]['ul'];
        $name6 = $arr[5]['name'];
        $num6 = $arr[5]['ul'];
        $name7 = $arr[6]['name'];
        $num7 = $arr[6]['ul'];
        $name8 = $arr[7]['name'];
        $num8 = $arr[7]['ul'];
        $name9 = $arr[8]['name'];
        $num9 = $arr[8]['ul'];
        $name10 = $arr[9]['name'];
        $num10 = $arr[9]['ul'];
        $HTMLOUT .= "$imgstartbar&amp;chds=0,$num1&amp;chxr=1,0,$num1&amp;chd=t:$num1,$num2,$num3,$num4,$num5,$num6,$num7,$num8,$num9,$num10&amp;chxt=x,y,x&amp;chxl=0:|$name1|$name2|$name3|$name4|$name5|$name6|$name7|$name8|$name9|$name10|1:||||||||||" . mksize($num1) . '|2:|(' . mksize($num1) . ')|(' . mksize($num2) . ')|(' . mksize($num3) . ')|(' . mksize($num4) . ')|(' . mksize($num5) . ')|(' . mksize($num6) . ')|(' . mksize($num7) . ')|(' . mksize($num8) . ')|(' . mksize($num9) . ')|(' . mksize($num10) . ")\" alt=''></div>";
    } else {
        $HTMLOUT .= '<h4>Insufficient Countries (' . $counted . ')</h4></div>';
    }
    echo stdhead($lang['head_title']) . wrapper($HTMLOUT, 'has-text-centered') . stdfoot();
    die();
}
// Default display / Top Users
$table = "<div class='article padding20'><div class='article_header'><h2>Top 10 Uploaders</h2></div>";
$result = sql_query("SELECT username, uploaded FROM users WHERE enabled = 'yes' ORDER BY uploaded DESC LIMIT 10");
$counted = mysqli_num_rows($result);
if ($counted == '10') {
    $arr = mysql_fetch_rowsarr($result);
    $user1 = $arr[0]['username'];
    $user2 = $arr[1]['username'];
    $user3 = $arr[2]['username'];
    $user4 = $arr[3]['username'];
    $user5 = $arr[4]['username'];
    $user6 = $arr[5]['username'];
    $user7 = $arr[6]['username'];
    $user8 = $arr[7]['username'];
    $user9 = $arr[8]['username'];
    $user10 = $arr[9]['username'];
    $upped1 = $arr[0]['uploaded'];
    $upped2 = $arr[1]['uploaded'];
    $upped3 = $arr[2]['uploaded'];
    $upped4 = $arr[3]['uploaded'];
    $upped5 = $arr[4]['uploaded'];
    $upped6 = $arr[5]['uploaded'];
    $upped7 = $arr[6]['uploaded'];
    $upped8 = $arr[7]['uploaded'];
    $upped9 = $arr[8]['uploaded'];
    $upped10 = $arr[9]['uploaded'];
    $HTMLOUT .= main_div($table . "$imgstartbar&amp;chds=0,$upped1&amp;chxr=1,0,$upped1&amp;chd=t:$upped1,$upped2,$upped3,$upped4,$upped5,$upped6,$upped7,$upped8,$upped9,$upped10&amp;chxt=x,y,x&amp;chxl=0:|$user1|$user2|$user3|$user4|$user5|$user6|$user7|$user8|$user9|$user10|1:||||||||||" . mksize($upped1) . '|2:|(' . mksize($upped1) . ')|(' . mksize($upped2) . ')|(' . mksize($upped3) . ')|(' . mksize($upped4) . ')|(' . mksize($upped5) . ')|(' . mksize($upped6) . ')|(' . mksize($upped7) . ')|(' . mksize($upped8) . ')|(' . mksize($upped9) . ')|(' . mksize($upped10) . ")\" alt=''></div>", 'top20');
} else {
    $HTMLOUT .= main_div('<h4>Insufficient Uploaders (' . $counted . ')</h4>', 'top20', 'padding20');
}
$table = "<div class='article padding20'><div class='article_header'><h2>Top 10 Downloaders</h2></div>";
$result = sql_query("SELECT username, downloaded FROM users WHERE enabled = 'yes' ORDER BY downloaded DESC LIMIT 10");
$counted = mysqli_num_rows($result);
if ($counted == '10') {
    $arr = mysql_fetch_rowsarr($result);
    $user1 = $arr[0]['username'];
    $user2 = $arr[1]['username'];
    $user3 = $arr[2]['username'];
    $user4 = $arr[3]['username'];
    $user5 = $arr[4]['username'];
    $user6 = $arr[5]['username'];
    $user7 = $arr[6]['username'];
    $user8 = $arr[7]['username'];
    $user9 = $arr[8]['username'];
    $user10 = $arr[9]['username'];
    $upped1 = $arr[0]['downloaded'];
    $upped2 = $arr[1]['downloaded'];
    $upped3 = $arr[2]['downloaded'];
    $upped4 = $arr[3]['downloaded'];
    $upped5 = $arr[4]['downloaded'];
    $upped6 = $arr[5]['downloaded'];
    $upped7 = $arr[6]['downloaded'];
    $upped8 = $arr[7]['downloaded'];
    $upped9 = $arr[8]['downloaded'];
    $upped10 = $arr[9]['downloaded'];
    $HTMLOUT .= main_div($table . "$imgstartbar&amp;chds=0,$upped1&amp;chxr=1,0,$upped1&amp;chd=t:$upped1,$upped2,$upped3,$upped4,$upped5,$upped6,$upped7,$upped8,$upped9,$upped10&amp;chxt=x,y,x&amp;chxl=0:|$user1|$user2|$user3|$user4|$user5|$user6|$user7|$user8|$user9|$user10|1:||||||||||" . mksize($upped1) . '|2:|(' . mksize($upped1) . ')|(' . mksize($upped2) . ')|(' . mksize($upped3) . ')|(' . mksize($upped4) . ')|(' . mksize($upped5) . ')|(' . mksize($upped6) . ')|(' . mksize($upped7) . ')|(' . mksize($upped8) . ')|(' . mksize($upped9) . ')|(' . mksize($upped10) . ")\" alt=''/></div>", 'top20');
} else {
    $HTMLOUT .= main_div('<h4>Insufficient Downloaders (' . $counted . ')</h4>', 'top20', 'padding20');
}
$table = "<div class='article padding20'><div class='article_header'><h2>Top 10 Fastest Uploaders</h2></div>";
$result = sql_query('SELECT  username, uploaded / (' . TIME_NOW . " - registered) AS upspeed FROM users WHERE enabled = 'yes' ORDER BY upspeed DESC LIMIT 10");
$counted = mysqli_num_rows($result);
if ($counted == '10') {
    $arr = mysql_fetch_rowsarr($result);
    $user1 = $arr[0]['username'];
    $user2 = $arr[1]['username'];
    $user3 = $arr[2]['username'];
    $user4 = $arr[3]['username'];
    $user5 = $arr[4]['username'];
    $user6 = $arr[5]['username'];
    $user7 = $arr[6]['username'];
    $user8 = $arr[7]['username'];
    $user9 = $arr[8]['username'];
    $user10 = $arr[9]['username'];
    $upped1 = $arr[0]['upspeed'];
    $upped2 = $arr[1]['upspeed'];
    $upped3 = $arr[2]['upspeed'];
    $upped4 = $arr[3]['upspeed'];
    $upped5 = $arr[4]['upspeed'];
    $upped6 = $arr[5]['upspeed'];
    $upped7 = $arr[6]['upspeed'];
    $upped8 = $arr[7]['upspeed'];
    $upped9 = $arr[8]['upspeed'];
    $upped10 = $arr[9]['upspeed'];
    $HTMLOUT .= main_div($table . "$imgstartbar&amp;chds=0,$upped1&amp;chxr=1,0,$upped1&amp;chd=t:$upped1,$upped2,$upped3,$upped4,$upped5,$upped6,$upped7,$upped8,$upped9,$upped10&amp;chxt=x,y,x&amp;chxl=0:|$user1|$user2|$user3|$user4|$user5|$user6|$user7|$user8|$user9|$user10|1:||||||||||" . mksize($upped1) . '/s|2:|(' . mksize($upped1) . '/s)|(' . mksize($upped2) . '/s)|(' . mksize($upped3) . '/s)|(' . mksize($upped4) . '/s)|(' . mksize($upped5) . '/s)|(' . mksize($upped6) . '/s)|(' . mksize($upped7) . '/s)|(' . mksize($upped8) . '/s)|(' . mksize($upped9) . '/s)|(' . mksize($upped10) . "/s)\" alt=''></div>", 'top20');
} else {
    $HTMLOUT .= main_div('<h4>Insufficient Uploaders (' . $counted . ')</h4>', 'top20', 'padding20');
}
$table = "<div class='article padding20'><div class='article_header'><h2>Top 10 Fastest Downloaders</h2></div>";
$result = sql_query('SELECT username, downloaded / (' . TIME_NOW . " - registered) AS downspeed FROM users WHERE enabled = 'yes' ORDER BY downspeed DESC LIMIT 10");
$counted = mysqli_num_rows($result);
if ($counted == '10') {
    $arr = mysql_fetch_rowsarr($result);
    $user1 = $arr[0]['username'];
    $user2 = $arr[1]['username'];
    $user3 = $arr[2]['username'];
    $user4 = $arr[3]['username'];
    $user5 = $arr[4]['username'];
    $user6 = $arr[5]['username'];
    $user7 = $arr[6]['username'];
    $user8 = $arr[7]['username'];
    $user9 = $arr[8]['username'];
    $user10 = $arr[9]['username'];
    $upped1 = $arr[0]['downspeed'];
    $upped2 = $arr[1]['downspeed'];
    $upped3 = $arr[2]['downspeed'];
    $upped4 = $arr[3]['downspeed'];
    $upped5 = $arr[4]['downspeed'];
    $upped6 = $arr[5]['downspeed'];
    $upped7 = $arr[6]['downspeed'];
    $upped8 = $arr[7]['downspeed'];
    $upped9 = $arr[8]['downspeed'];
    $upped10 = $arr[9]['downspeed'];
    $HTMLOUT .= main_div($table . "$imgstartbar&amp;chds=0,$upped1&amp;chxr=1,0,$upped1&amp;chd=t:$upped1,$upped2,$upped3,$upped4,$upped5,$upped6,$upped7,$upped8,$upped9,$upped10&amp;chxt=x,y,x&amp;chxl=0:|$user1|$user2|$user3|$user4|$user5|$user6|$user7|$user8|$user9|$user10|1:||||||||||" . mksize($upped1) . '/s|2:|(' . mksize($upped1) . '/s)|(' . mksize($upped2) . '/s)|(' . mksize($upped3) . '/s)|(' . mksize($upped4) . '/s)|(' . mksize($upped5) . '/s)|(' . mksize($upped6) . '/s)|(' . mksize($upped7) . '/s)|(' . mksize($upped8) . '/s)|(' . mksize($upped9) . '/s)|(' . mksize($upped10) . "/s)\" alt=''></div>", 'top20');
} else {
    $HTMLOUT .= main_div('<h4>Insufficient Downloaders (' . $counted . ')</h4>', 'top20', 'padding20');
}
echo stdhead($lang['head_title']) . wrapper($HTMLOUT, 'has-text-centered') . stdfoot();
