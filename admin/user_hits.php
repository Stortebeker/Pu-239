<?php

declare(strict_types = 1);

use Pu239\User;

require_once INCL_DIR . 'function_users.php';
require_once INCL_DIR . 'function_pager.php';
require_once CLASS_DIR . 'class_check.php';
$class = get_access(basename($_SERVER['REQUEST_URI']));
class_check($class);
$lang = array_merge($lang, load_language('ad_userhits'));
global $container, $site_config, $CURUSER;
stderr('Error', 'This page is not in use atm');
$HTMLOUT = '';
$id = (int) $_GET['id'];
if (!is_valid_id($id) || $CURUSER['id'] != $id && $CURUSER['class'] < UC_STAFF) {
    $id = $CURUSER['id'];
}
$res = sql_query('SELECT COUNT(id) FROM userhits WHERE hitid = ' . sqlesc($id)) or sqlerr(__FILE__, __LINE__);
$row = mysqli_fetch_row($res);
$count = $row[0];
$perpage = 15;
$pager = pager($perpage, $count, "staffpanel.php?tool=user_hits&amp;id=$id&amp;");
if (!$count) {
    stderr($lang['userhits_stderr'], $lang['userhits_stderr1']);
}
$users_class = $container->get(User::class);
$user = $users_class->getUserFromId($id);
$res = sql_query('SELECT username FROM users WHERE id=' . sqlesc($id)) or sqlerr(__FILE__, __LINE__);
$user = mysqli_fetch_assoc($res);
$HTMLOUT .= "<h1>{$lang['userhits_profile']}" . format_username((int) $id) . "</h1>
<h2>{$lang['userhits_total']}" . htmlsafechars($count) . "{$lang['userhits_views']}</h2>";
if ($count > $perpage) {
    $HTMLOUT .= $pager['pagertop'];
}
$HTMLOUT .= "
<table>
<tr>
<td class='colhead'>{$lang['userhits_nr']}</td>
<td class='colhead'>{$lang['userhits_username']}</td>
<td class='colhead'>{$lang['userhits_viewed']}</td>
</tr>\n";
$res = sql_query('SELECT uh.*, username, users.id AS uid FROM userhits uh LEFT JOIN users ON uh.userid=users.id WHERE hitid =' . sqlesc($id) . ' ORDER BY uh.id DESC ' . $pager['limit']) or sqlerr(__FILE__, __LINE__);
while ($arr = mysqli_fetch_assoc($res)) {
    $HTMLOUT .= '
<tr><td>' . number_format($arr['number']) . '</td>
<td>' . format_username((int) $arr['uid']) . '</td>
<td>' . get_date((int) $arr['added'], 'DATE', 0, 1) . "</td>
</tr>\n";
}
$HTMLOUT .= '</table>';
if ($count > $perpage) {
    $HTMLOUT .= $pager['pagerbottom'];
}
echo stdhead($lang['userhits_profile'] . htmlsafechars($user['username']) . '') . wrapper($HTMLOUT) . stdfoot();
die();
