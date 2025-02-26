<?php

declare(strict_types = 1);

use Pu239\Cache;

global $container, $lang, $site_config;

$cache = $container->get(Cache::class);
$stats_cache = $cache->get('site_stats_');
if ($stats_cache === false || is_null($stats_cache)) {
    return;
}
$users = [
    "<tr><td>{$lang['index_stats_online']}</td><td class='w-15 has-text-centered'>{$stats_cache['numactive']}</td></tr>",
    "<tr><td>{$lang['index_stats_regged']}</td><td class='w-15 has-text-centered'>{$stats_cache['regusers']}</td></tr>",
    "<tr><td>{$lang['index_stats_powerusers']}</td><td class='w-15 has-text-centered'>{$stats_cache['powerusers']}</td></tr>",
    "<tr><td>{$lang['index_stats_uploaders']}</td><td class='w-15 has-text-centered'>{$stats_cache['uploaders']}</td></tr>",
    "<tr><td>{$lang['index_stats_vips']}</td><td class='w-15 has-text-centered'>{$stats_cache['vips']}</td></tr>",
    "<tr><td>{$lang['index_stats_moderators']}</td><td class='w-15 has-text-centered'>{$stats_cache['moderators']}</td></tr>",
    "<tr><td>{$lang['index_stats_admin']}</td><td class='w-15 has-text-centered'>{$stats_cache['administrators']}</td></tr>",
    "<tr><td>{$lang['index_stats_sysops']}</td><td class='w-15 has-text-centered'>{$stats_cache['sysops']}</td></tr>",
];

$gender = [
    "<tr><td>{$lang['index_stats_uncon']}</td><td class='w-15 has-text-centered'>{$stats_cache['unconusers']}</td></tr>",
    "<tr><td>{$lang['index_stats_banned']}</td><td class='w-15 has-text-centered'>{$stats_cache['disabled']}</td></tr>",
    "<tr><td>{$lang['index_stats_donor']}</td><td class='w-15 has-text-centered'>{$stats_cache['donors']}</td></tr>",
    "<tr><td>{$lang['index_stats_gender_na']}</td><td class='w-15 has-text-centered'>{$stats_cache['gender_na']}</td></tr>",
    "<tr><td>{$lang['index_stats_gender_female']}</td><td class='w-15 has-text-centered'>{$stats_cache['gender_female']}</td></tr>",
    "<tr><td>{$lang['index_stats_gender_male']}</td><td class='w-15 has-text-centered'>{$stats_cache['gender_male']}</td></tr>",
];

$forums = [
    "<tr><td>{$lang['index_stats_topics']}</td><td class='w-15 has-text-centered'>{$stats_cache['forumtopics']}</td></tr>",
    "<tr><td>{$lang['index_stats_topics_today']}</td><td class='w-15 has-text-centered'>{$stats_cache['topicstoday']}</td></tr>",
    "<tr><td>{$lang['index_stats_topics_month']}</td><td class='w-15 has-text-centered'>{$stats_cache['topicsmonth']}</td></tr>",
    "<tr><td>{$lang['index_stats_posts']}</td><td class='w-15 has-text-centered'>{$stats_cache['forumposts']}</td></tr>",
    "<tr><td>{$lang['index_stats_posts_today']}</td><td class='w-15 has-text-centered'>{$stats_cache['poststoday']}</td></tr>",
    "<tr><td>{$lang['index_stats_posts_month']}</td><td class='w-15 has-text-centered'>{$stats_cache['postsmonth']}</td></tr>",
];

$torrents = [
    "<tr><td>{$lang['index_stats_torrents']}</td><td class='w-15 has-text-centered'>{$stats_cache['torrents']}</td></tr>",
    "<tr><td>{$lang['index_stats_newtor']}</td><td class='w-15 has-text-centered'>{$stats_cache['torrentstoday']}</td></tr>",
    "<tr><td>{$lang['index_stats_newtor_month']}</td><td class='w-15 has-text-centered'>{$stats_cache['torrentsmonth']}</td></tr>",
    "<tr><td>{$lang['index_stats_peers']}</td><td class='w-15 has-text-centered'>{$stats_cache['peers']}</td></tr>",
    "<tr><td>{$lang['index_stats_seeders']}</td><td class='w-15 has-text-centered'>{$stats_cache['seeders']}</td></tr>",
    "<tr><td>{$lang['index_stats_leechers']}</td><td class='w-15 has-text-centered'>{$stats_cache['leechers']}</td></tr>",
    "<tr><td>{$lang['index_stats_unconpeer']}</td><td class='w-15 has-text-centered'>{$stats_cache['unconnectables']}</td></tr>",
    "<tr><td>{$lang['index_stats_unconratio']}</td><td class='w-15 has-text-centered'>" . round($stats_cache['ratiounconn'] * 100) . '</td></tr>',
    "<tr><td>{$lang['index_stats_slratio']}</td><td class='w-15 has-text-centered'>" . round($stats_cache['ratio'] * 100) . '</td></tr>',
];

$site_stats .= "
    <a id='stats-hash'></a>
    <div class='flex-grid'>
        <div class='col'>" . wrap_this($users) . "</div>
        <div class='col'>" . wrap_this($torrents) . "</div>
        <div class='col'>" . wrap_this($gender) . "</div>
        <div class='col'>" . wrap_this($forums) . '</div>
    </div>';

/**
 * @param array $values
 *
 * @return string
 */
function wrap_this(array $values)
{
    return main_table(implode("\n", $values));
}
