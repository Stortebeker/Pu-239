<?php

declare(strict_types = 1);

require_once INCL_DIR . 'function_users.php';
require_once INCL_DIR . 'function_html.php';
require_once INCL_DIR . 'function_bbcode.php';
require_once INCL_DIR . 'function_pager.php';
require_once CLASS_DIR . 'class_check.php';
$class = get_access(basename($_SERVER['REQUEST_URI']));
class_check($class);
global $site_config;

$HTMLOUT = '';
$count = 0;
$perpage = 50;
$state = 'div';

if ($_SERVER['REQUEST_METHOD'] === 'POST' && $_POST['delete'] === 'Delete') {
    foreach ($_POST['logs'] as $log) {
        $log = urldecode($log);
        if (file_exists($log)) {
            unlink($log);
        }
    }
}
if (!empty($_GET['action']) && $_GET['action'] === 'view') {
    $file = $_GET['file'];
    $ext = pathinfo($file, PATHINFO_EXTENSION);
    $name = basename($file);
    $uncompress = $ext === 'gz' ? 'compress.zlib://' : '';

    if (file_exists($file)) {
        $content = file_get_contents($uncompress . $file);
    } else {
        $content = '<b>' . $file . '</b> does not exist';
    }

    $content = trim($content);

    $date_formats = "(\d{4}/\d{2}/\d{2}\s+\d{2}:\d{2}:\d{2}.*?|\[\w+ \w+ \d+ \d{2}:\d{2}:\d{2}\.\d+ \d{4}\])";
    if (!preg_match('/(sqlerr|access\.log|cron.*\.log|images.*\.log|announce\.log)/i', $file)) {
        preg_match_all('!' . $date_formats . '!iU', $content, $matches);
        if (!empty($matches[1])) {
            $contents = $matches[1];
        } else {
            $contents = explode("\n", $content);
        }
    } elseif (preg_match('/access\.log/', $name)) {
        preg_match_all('!(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}.*?)!iU', $content, $matches);
        if (!empty($matches[1])) {
            $contents = $matches[1];
        } else {
            $contents = explode("\n", $content);
        }
    } else {
        $contents = explode('===================================================', $content);
        $state = 'pre';
    }
    if (!empty($contents)) {
        $contents = array_reverse($contents);
        $count = count($contents);
        $pager = pager($perpage, $count, "{$site_config['paths']['baseurl']}/staffpanel.php?tool=log_viewer&action=view&file=" . urlencode($file) . '&amp;');
    }
    $i = 0;
    $content = [];
    foreach ($contents as $line) {
        if (!empty($line)) {
            ++$i;
            $class = $i % 2 === 0 ? 'bg-08 simple_border round10 padding20 has-text-black bottom5' : 'bg-light simple_border round10 padding20 has-text-black bottom5';
            $line = trim($line);
            $content[] = "<$state class='{$class}'>{$line}</$state>";
            if ($i >= $pager['pdo']['limit'] + $pager['pdo']['offset']) {
                break;
            }
        }
    }
    $content = ($count > $perpage ? $pager['pagertop'] : '') . implode("\n", $content) . ($count > $perpage ? $pager['pagerbottom'] : '');

    $HTMLOUT = main_div("
        <div class='bg-00 round10'>
            <h1 class='has-text-centered'>Viewing Log: $file</h1>$content
        </div>", 'bottom20');
}

$paths = array_merge($site_config['paths']['log_viewer'], [LOGS_DIR]);
$files = [];
foreach ($paths as $path) {
    if (file_exists($path) && is_readable($path)) {
        $objects = new RecursiveIteratorIterator(new RecursiveDirectoryIterator($path, RecursiveDirectoryIterator::SKIP_DOTS), RecursiveIteratorIterator::SELF_FIRST);
        $exts = [
            'log',
            'gz',
            '1',
        ];
        foreach ($objects as $name => $object) {
            $ext = pathinfo($name, PATHINFO_EXTENSION);
            if (in_array($ext, $exts)) {
                $files[] = $name;
            }
        }
    }
}

natsort($files);
$files = array_reverse($files, false);

if (!empty($files)) {
    $heading = "
        <tr>
            <th>Filename</th>
            <th class='has-text-centered'>Date</th>
            <th class='has-text-centered'>Size</th>
            <th class='has-text-centered'><input type='checkbox' id='checkThemAll' class='tooltipper' title='Select All'></th>
        </tr>";
    $body = '';
    foreach ($files as $file) {
        $body .= "
        <tr>
            <td>
                <a href='{$_SERVER['PHP_SELF']}?tool=log_viewer&amp;action=view&amp;file=" . urlencode($file) . "'>$file</a>
            </td>
            <td class='has-text-centered'>
                " . get_date((int) filemtime($file), 'LONG') . "
            </td>
            <td class='has-text-right w-10'>
                " . mksize(filesize($file)) . "
            </td>
            <td class='has-text-centered w-10'>
                <input type='checkbox' name='logs[]' value='" . urlencode($file) . "'" . (!empty($_GET['file']) && $_GET['file'] === $file ? ' checked' : '') . '>
            </td>
        </tr>';
    }
    $HTMLOUT .= "
        <form action='{$_SERVER['PHP_SELF']}?tool=log_viewer' method='post' name='checkme' accept-charset='utf-8'>" . main_table($body, $heading) . "
            <div class='has-text-centered margin20'>
                <input type='submit' class='button is-small' name='delete' value='Delete'>
            </div>
        <form>";
} else {
    $HTMLOUT .= main_div('There are no log files to view', '', 'padding20');
}

echo stdhead('Log Files') . wrapper($HTMLOUT, 'is-paddingless') . stdfoot();
