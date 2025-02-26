<?php

declare(strict_types = 1);

use Pu239\Cache;
use Pu239\Database;
use Pu239\Session;
use Pu239\Torrent;

require_once __DIR__ . '/../include/bittorrent.php';
require_once INCL_DIR . 'function_users.php';
require_once INCL_DIR . 'function_html.php';
$user = check_user_status();
$lang = array_merge(load_language('global'), load_language('fastdelete'));
global $container, $site_config;

if ($user['class'] < UC_STAFF) {
    stderr($lang['fastdelete_error'], $lang['fastdelete_no_acc']);
}

if (!isset($_GET['id']) || !is_valid_id((int) $_GET['id'])) {
    stderr($lang['fastdelete_error'], $lang['fastdelete_error_id']);
}

$id = (int) $_GET['id'];
$fluent = $container->get(Database::class);
$tid = $fluent->from('torrents AS t')
              ->select(null)
              ->select('t.id')
              ->select('t.info_hash')
              ->select('t.owner')
              ->select('t.name')
              ->select('t.added')
              ->select('u.seedbonus')
              ->leftJoin('users AS u ON u.id=t.owner')
              ->where('t.id = ?', $id)
              ->fetch();

if (!$tid) {
    stderr('Oops', 'Something went wrong - Contact admin!!');
}

$sure = isset($_GET['sure']) && (int) $_GET['sure'];
if (!$sure) {
    $returnto = !empty($_GET['returnto']) ? '&amp;returnto=' . urlencode($_GET['returnto']) : '';
    stderr($lang['fastdelete_sure'], sprintf($lang['fastdelete_sure_msg'], $returnto));
}
$torrents_class = $container->get(Torrent::class);
$torrents_class->delete_by_id($tid['id']);
$torrents_class->remove_torrent($tid['info_hash']);
if ($user['id'] != $tid['owner']) {
    $msg = sqlesc("{$lang['fastdelete_msg_first']} [b]{$tid['name']}[/b] {$lang['fastdelete_msg_last']} {$user['username']}");
    sql_query('INSERT INTO messages (sender, receiver, added, msg) VALUES (2, ' . sqlesc($tid['owner']) . ', ' . TIME_NOW . ", {$msg})") or sqlerr(__FILE__, __LINE__);
}
write_log("{$lang['fastdelete_log_first']} {$tid['name']} {$lang['fastdelete_log_last']} {$user['username']}");
$cache = $container->get(Cache::class);
if ($site_config['bonus']['on']) {
    $dt = sqlesc(TIME_NOW - (14 * 86400)); // lose karma if deleted within 2 weeks
    if ($tid['added'] > $dt) {
        $sb = $tid['seedbonus'] - $site_config['bonus']['per_delete'];
        $set = [
            'seedbonus' => $sb,
        ];
        $fluent->update('users')
               ->set($set)
               ->where('id = ?', $tid['owner'])
               ->execute();

        $cache->update_row('user_' . $tid['owner'], [
            'seedbonus' => $sb,
        ], $site_config['expires']['user_cache']);
    }
}
$session = $container->get(Session::class);
$session->set('is-success', '[h2]Torrent deleted[/h2][p]' . htmlsafechars($tid['name']) . '[/p]');
if (isset($_GET['returnto'])) {
    header("Location: {$site_config['paths']['baseurl']}{$_GET['returnto']}");
} else {
    header("Location: {$site_config['paths']['baseurl']}");
}
die();
