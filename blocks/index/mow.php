<?php

declare(strict_types = 1);

use Pu239\Image;
use Pu239\Torrent;

global $container, $lang, $site_config, $CURUSER;

$torrent = $container->get(Torrent::class);
$motw = $torrent->get_mow();

$torrents_mow .= "
    <a id='mow-hash'></a>
    <div id='mow' class='box'>
        <div class='has-text-centered'>
            <div class='table-wrapper module'><div class='badge badge-hot'></div>
                <table class='table table-bordered table-striped'>
                    <thead>
                        <tr>
                            <th class='has-text-centered w-10'>{$lang['index_mow_type']}</th>
                            <th class='w-50 min-350'>{$lang['index_mow_title']}</th>
                            <th class='has-text-centered'>{$lang['index_mow_snatched']}</th>
                            <th class='has-text-centered'>{$lang['index_mow_seeder']}</th>
                            <th class='has-text-centered'>{$lang['index_mow_leecher']}</th>
                        </tr>
                    </thead>
                    <tbody>";

$images_class = $container->get(Image::class);
foreach ($motw as $last) {
    $imdb_id = $last['imdb_id'];
    $subtitles = $last['subtitles'];
    $year = $last['year'];
    $rating = $last['rating'];
    $owner = $last['owner'];
    $anonymous = $last['anonymous'];
    $name = $last['name'];
    $poster = $last['poster'];
    $seeders = $last['seeders'];
    $leechers = $last['leechers'];
    $size = $last['size'];
    $added = $last['added'];
    $class = $last['class'];
    $username = $last['username'];
    $id = $last['id'];
    $cat = $last['cat'];
    $image = $last['image'];
    $times_completed = $last['times_completed'];
    $genre = $last['genre'];

    if (empty($poster) && !empty($imdb_id)) {
        $poster = $images_class->find_images($imdb_id);
    }
    $poster = empty($poster) ? "<img src='{$site_config['paths']['images_baseurl']}noposter.png' class='tooltip-poster'>" : "<img src='" . url_proxy($poster, true, 250) . "' class='tooltip-poster'>";

    if ($anonymous === 'yes' && ($CURUSER['class'] < UC_STAFF || $owner === $CURUSER['id'])) {
        $uploader = '<span>' . get_anonymous_name() . '</span>';
    } else {
        $username = !empty($username) ? htmlsafechars($username) : 'unknown';
        $uploader = "<span class='" . get_user_class_name($class, true) . "'>" . $username . '</span>';
    }

    $block_id = "mow_id_{$id}";
    $torrents_mow .= torrent_tooltip_wrapper(htmlsafechars($name) . " ($year)", $id, $block_id, $name, $poster, $uploader, $added, $size, $seeders, $leechers, $imdb_id, $rating, $year, $subtitles, $genre);
}

if (count($motw) === 0) {
    $torrents_mow .= "
                        <tr>
                            <td colspan='5'>{$lang['index_mow_no']}!</td>
                        </tr>";
}
$torrents_mow .= '
                    </tbody>
                </table>
            </div>
        </div>
    </div>';
