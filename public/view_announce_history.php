<?php

declare(strict_types = 1);

use Pu239\Database;

require_once __DIR__ . '/../include/bittorrent.php';
require_once INCL_DIR . 'function_users.php';
require_once INCL_DIR . 'function_html.php';
require_once INCL_DIR . 'function_bbcode.php';
$user = check_user_status();
$lang = array_merge(load_language('global'), load_language('announce_history'));
global $container, $site_config;

stderr('Error', 'This page is not completed.');
$action = isset($_GET['action']) ? htmlsafechars($_GET['action']) : '';
$HTMLOUT = "<h2><span class='size_6'>{$lang['annhistory_ann']}</span></h2>";
$fluent = $container->get(Database::class);
$query1 = sprintf('SELECT m.main_id, m.subject, m.body
            FROM announcement_main AS m 
            LEFT JOIN announcement_process AS p ON m.main_id=p.main_id AND p.user_id=%s 
            WHERE p.status = 2', sqlesc($user['id']));
$result = sql_query($query1);
$ann_list = [];
while ($x = mysqli_fetch_array($result)) {
    $ann_list[] = $x;
}
unset($x, $result);

reset($ann_list);
$body = '';
if ($action === 'read_announce') {
    $id = isset($_GET['id']) ? (int) $_GET['id'] : 0;
    if (!is_int($id)) {
        $HTMLOUT .= stdmsg($lang['annhistory_error'], $lang['annhistory_invalid']);
        echo stdhead($lang['annhistory_ann']) . wrapper($HTMLOUT) . stdfoot();
        die();
    }
    foreach ($ann_list as $x) {
        if ($x[0] == $id) {
            list(, $subject, $body) = $x;
        }
    }
    if (empty($subject) || empty($body)) {
        $HTMLOUT .= stdmsg($lang['annhistory_error'], $lang['annhistory_not']);
        echo stdhead($lang['annhistory_ann']) . wrapper($HTMLOUT) . stdfoot();
        die();
    }
    $header = "
         <tr>
             <th>{$lang['annhistory_subject']}<b>" . htmlsafechars($subject) . '</b></th>
         </tr>';
    $body = '
         <tr>
             <td>' . format_comment($body) . "</td>
         </tr>
         <tr>
             <td>
                 <a href='" . $_SERVER['PHP_SELF'] . "'>{$lang['annhistory_back']}</a>
             </td>
         </tr>";
    $HTMLOUT .= main_table($body, $header);
}
$header = "
        <tr>
            <th><b>{$lang['annhistory_subject1']}</b></th>
        </tr>";
$body = '';
if (!empty(($ann_list))) {
    foreach ($ann_list as $x) {
        $body .= "
        <tr>
            <td>
                <a href='" . $_SERVER['PHP_SELF'] . '?action=read_announce&amp;id=' . (int) $x[0] . "'>" . htmlsafechars($x[1]) . '</a>
            </td>
        </tr>';
    }
} else {
    $body .= '
        <tr>
            <td>
                Nothing to see here!
            </td>
        </tr>';
}

$HTMLOUT .= main_table($body, $header);
echo stdhead($lang['annhistory_ann']) . wrapper($HTMLOUT) . stdfoot();
