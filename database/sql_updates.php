<?php

$sql_updates = [
    [
        'id'    => 1530957741,
        'info'  => 'Truncate database_updates table',
        'date'  => '07 Jul, 2018',
        'query' => 'TRUNCATE TABLE `database_updates`',
        'flush' => false,
    ],
    [
        'id'    => 1530957742,
        'info'  => 'Add 12 Hour Time Format to site_config',
        'date'  => '07 Jul, 2018',
        'query' => "INSERT INTO `site_config` (name, value, description) VALUES ('12_hour', 1, '12 hour time format(true), 24 hour time format (false)')",
        'flush' => 'site_settings_',
    ],
    [
        'id'    => 1531044142,
        'info'  => 'Add 12 Hour Time Format to users table',
        'date'  => '08 Jul, 2018',
        'query' => "ALTER TABLE users ADD COLUMN `12_hour` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'",
        'flush' => true,
    ],
    [
        'id'    => 1531336627,
        'info'  => 'Add Images Table',
        'date'  => '11 Jul, 2018',
        'query' => "CREATE TABLE IF NOT EXISTS `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tmdb_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tvmaze_id` int(10) unsigned NOT NULL DEFAULT '0',
  `imdb_id` char(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url_type` (`url`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC",
        'flush' => false,
    ],
    [
        'id'    => 1531527237,
        'info'  => 'Drop unneeded table manage_likes',
        'date'  => '14 Jul, 2018',
        'query' => 'DROP TABLE `manage_likes`',
        'flush' => false,
    ],
    [
        'id'    => 1531531866,
        'info'  => 'Remove unneeded ip column',
        'date'  => '14 Jul, 2018',
        'query' => 'ALTER TABLE `likes` DROP COLUMN `userip`',
        'flush' => false,
    ],
    [
        'id'    => 1531531985,
        'info'  => 'Modify comments.user_likes to int',
        'date'  => '14 Jul, 2018',
        'query' => 'UPDATE `comments` SET `user_likes` = 0',
        'flush' => false,
    ],
    [
        'id'    => 1531531986,
        'info'  => 'Modify comments.user_likes to int',
        'date'  => '14 Jul, 2018',
        'query' => "ALTER TABLE `comments` MODIFY `user_likes` int(10) unsigned NOT NULL DEFAULT '0'",
        'flush' => false,
    ],
    [
        'id'    => 1531574961,
        'info'  => 'Add column user_likes in usercomments',
        'date'  => '14 Jul, 2018',
        'query' => "ALTER TABLE `usercomments` ADD COLUMN `user_likes` int(10) unsigned NOT NULL DEFAULT '0'",
        'flush' => false,
    ],
    [
        'id'    => 1531574969,
        'info'  => 'Rename column user_comment_id topic_id',
        'date'  => '14 Jul, 2018',
        'query' => "ALTER TABLE `likes` CHANGE `user_comment_id` `topic_id` int(10) unsigned NOT NULL DEFAULT '0'",
        'flush' => false,
    ],
    [
        'id'    => 1531574979,
        'info'  => 'Update columm post_id',
        'date'  => '14 Jul, 2018',
        'query' => "ALTER TABLE `likes` MODIFY `post_id` int(10) unsigned NOT NULL DEFAULT '0'",
        'flush' => false,
    ],
    [
        'id'    => 1531574990,
        'info'  => 'Drop columm likes',
        'date'  => '14 Jul, 2018',
        'query' => 'ALTER TABLE `likes` DROP `likes`',
        'flush' => false,
    ],
    [
        'id'    => 1531574999,
        'info'  => 'Update columm comment_id',
        'date'  => '14 Jul, 2018',
        'query' => "ALTER TABLE `likes` MODIFY `comment_id` int(10) unsigned NOT NULL DEFAULT '0'",
        'flush' => false,
    ],
    [
        'id'    => 1531593994,
        'info'  => 'Add column usercomment_id',
        'date'  => '14 Jul, 2018',
        'query' => "ALTER TABLE `likes` ADD COLUMN `usercomment_id` int(10) unsigned NOT NULL DEFAULT '0'",
        'flush' => false,
    ],
    [
        'id'    => 1531593995,
        'info'  => 'Drop constraint',
        'date'  => '14 Jul, 2018',
        'query' => 'ALTER TABLE `comments` DROP FOREIGN KEY `comments_ibfk_2`',
        'flush' => false,
    ],
    [
        'id'    => 1531593996,
        'info'  => 'Add column request_id',
        'date'  => '14 Jul, 2018',
        'query' => "ALTER TABLE `likes` ADD COLUMN `request_id` int(10) unsigned NOT NULL DEFAULT '0'",
        'flush' => false,
    ],
    [
        'id'    => 1531593997,
        'info'  => 'Add column offer_id',
        'date'  => '14 Jul, 2018',
        'query' => "ALTER TABLE `likes` ADD COLUMN `offer_id` int(10) unsigned NOT NULL DEFAULT '0'",
        'flush' => false,
    ],
    [
        'id'    => 1531618774,
        'info'  => 'Add column user_likes in topics',
        'date'  => '14 Jul, 2018',
        'query' => "ALTER TABLE `topics` ADD COLUMN `user_likes` int(10) unsigned NOT NULL DEFAULT '0'",
        'flush' => false,
    ],
    [
        'id'    => 1531618775,
        'info'  => 'Add column user_likes in posts',
        'date'  => '14 Jul, 2018',
        'query' => "ALTER TABLE `posts` ADD COLUMN `user_likes` int(10) unsigned NOT NULL DEFAULT '0'",
        'flush' => false,
    ],
    [
        'id'    => 1531623888,
        'info'  => 'Add images download cleanup',
        'date'  => '15 Jul, 2018',
        'query' => "INSERT INTO `cleanup` (clean_title, clean_file, clean_time, clean_increment, clean_log, clean_desc, clean_on, function_name) VALUES ('Images Update', 'images_update.php', 1531625400, 1800, 1, 'Download Images using Image Proxy', 1, 'images_update')",
        'flush' => false,
    ],
    [
        'id'    => 1531951023,
        'info'  => 'Add LATEST_TORRENTS_SLIDER to user_blocks',
        'date'  => '18 Jul, 2018',
        'query' => 'ALTER TABLE `user_blocks` MODIFY `index_page` int(10) unsigned NOT NULL DEFAULT 16777215',
        'flush' => false,
    ],
    [
        'id'    => 1532232556,
        'info'  => 'Remove redundant column',
        'date'  => '22 Jul, 2018',
        'query' => 'ALTER TABLE `users` DROP COLUMN `show_pm_avatar`',
        'flush' => false,
    ],
    [
        'id'    => 1532232557,
        'info'  => 'Remove redundant column',
        'date'  => '22 Jul, 2018',
        'query' => 'ALTER TABLE `users` DROP COLUMN `show_staffshout`',
        'flush' => false,
    ],
    [
        'id'    => 1532232558,
        'info'  => 'Remove redundant column',
        'date'  => '22 Jul, 2018',
        'query' => 'ALTER TABLE `users` DROP COLUMN `split`',
        'flush' => false,
    ],
    [
        'id'    => 1532232559,
        'info'  => 'Remove redundant column',
        'date'  => '22 Jul, 2018',
        'query' => 'ALTER TABLE `users` DROP COLUMN `pm_on_delete`',
        'flush' => false,
    ],
    [
        'id'    => 1532232560,
        'info'  => 'Remove redundant column',
        'date'  => '22 Jul, 2018',
        'query' => 'ALTER TABLE `users` DROP COLUMN `got_moods`',
        'flush' => false,
    ],
    [
        'id'    => 1532232561,
        'info'  => 'Update initial value',
        'date'  => '22 Jul, 2018',
        'query' => 'ALTER TABLE `users` MODIFY COLUMN `opt2` int(11) NOT NULL DEFAULT "128"',
        'flush' => false,
    ],
    [
        'id'    => 1532232562,
        'info'  => 'Update initial value',
        'date'  => '22 Jul, 2018',
        'query' => 'ALTER TABLE `user_blocks` MODIFY COLUMN `userdetails_page` int(11) NOT NULL DEFAULT "2147418111"',
        'flush' => true,
    ],
];
