<?php

declare(strict_types = 1);

use Pu239\Database;

require_once __DIR__ . '/../include/bittorrent.php';
require_once INCL_DIR . 'phpzip.php';
check_user_status();
$lang = load_language('global');
global $container;

$action = isset($_POST['action']) ? htmlsafechars($_POST['action']) : '';
if ($action === 'download') {
    $id = isset($_POST['sid']) ? (int) $_POST['sid'] : 0;
    if ($id == 0) {
        stderr($lang['gl_error'], $lang['gl_not_a_valid_id']);
    } else {
        $fluent = $container->get(Database::class);
        $subtitle = $fluent->from('subtitles')
                           ->select(null)
                           ->select('id')
                           ->select('name')
                           ->select('filename')
                           ->where('id = ?', $id)
                           ->fetch();
        $ext = pathinfo($subtitle['filename'], PATHINFO_EXTENSION);
        $file_name = str_replace([
            ' ',
            '.',
            '-',
        ], '_', $subtitle['name']) . '.' . $ext;
        $content = file_get_contents(UPLOADSUB_DIR . $subtitle['filename']);
        if (file_put_contents(UPLOADSUB_DIR . $file_name, $content)) {
            $files = $file_name;
            $zipfile = UPLOADSUB_DIR . $file_name . '.zip';
            $zip = $container->get(ZipArchive::class);
            $zip->open($zipfile, ZipArchive::CREATE);
            $zip->addFromString($zipfile, $content);
            $zip->close();
            $zip->force_download($zipfile);
            unlink($zipfile);
            unlink($file_name);
        }
        sql_query('UPDATE subtitles SET hits = hits + 1 WHERE id = ' . sqlesc($id));
    }
} else {
    stderr($lang['gl_error'], $lang['gl_no_way']);
}
