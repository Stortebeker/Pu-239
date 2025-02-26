<?php

declare(strict_types = 1);
require_once CONFIG_DIR . 'functions.php';
/*
Any changes to this file will require that the DI_CACHE_DIR be emptied
else changes won't be reflected
you can do this be deleting the dir or run:
php bin/clear_cache.php
*/
$upload_max_filesize = ini_get('upload_max_filesize') !== null ? return_bytes(ini_get('upload_max_filesize')) : 0;
$post_max_filesize = ini_get('post_max_filesize') !== null ? return_bytes(ini_get('post_max_filesize')) : 0;

return [
    'env' => [
        'mail' => [
            'smtp_enable' => true,
            'smtp_host' => 'smtp.gmail.com',
            'smtp_auth' => true,
            'smtp_username' => 'gmail username',
            'smtp_password' => 'gmail password',
            'smtp_secure' => 'tls',
            'smtp_port' => 587,
        ],
        'db' => [
            'type' => 'mysql',
            'host' => '127.0.0.1',
            'port' => 3306,
            'socket' => '/var/run/mysqld/mysqld.sock',
            'database' => '#mysql_db',
            'username' => '#mysql_user',
            'password' => '#mysql_pass',
            'charset' => 'utf8mb4',
            'use_socket' => false,
            'query_limit' => 65536,
            'attributes' => [
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
                PDO::ATTR_EMULATE_PREPARES => false,
                PDO::ATTR_PERSISTENT => false,
            ],
            'debug' => true,
        ],
        'cache' => [
            'driver' => 'memory',
            'prefix' => '#cookie_prefix',
        ],
        'redis' => [
            'host' => '127.0.0.1',
            'password' => null,
            'port' => 6379,
            'database' => 1,
            'socket' => '/dev/shm/redis.sock',
            'use_socket' => false,
        ],
        'files' => [
            'path' => '/dev/shm/#mysql_db',
        ],
        'memcached' => [
            'host' => '127.0.0.1',
            'port' => 11211,
            'socket' => '/dev/shm/memcached.sock',
            'use_socket' => false,
        ],
        'paths' => [
            'flood_file' => CACHE_DIR . 'floodlimits.txt',
            'nameblacklist' => CACHE_DIR . 'nameblacklist.txt',
            'happyhour' => CACHE_DIR . 'happyhour.cache',
            'sql_error_log' => SQLERROR_LOGS_DIR . 'sql_err_' . date('Y_m_d', TIME_NOW) . '.log',
            'baseurl' => get_scheme() . '://' . (!empty($_SERVER['HTTP_HOST']) ? $_SERVER['HTTP_HOST'] : '#baseurl'),
            'images_baseurl' => '.' . DIRECTORY_SEPARATOR . 'images' . DIRECTORY_SEPARATOR,
            'chat_images_baseurl' => get_scheme() . '://' . (!empty($_SERVER['HTTP_HOST']) ? $_SERVER['HTTP_HOST'] : '#baseurl') . DIRECTORY_SEPARATOR . 'images' . DIRECTORY_SEPARATOR,
            'log_viewer' => [
                '/var/log/apache2/',
                '/var/log/nginx/',
                '/var/log/mysql/',
            ],
        ],
        'bucket' => [
            'maxsize' => $upload_max_filesize >= $post_max_filesize ? $upload_max_filesize : $post_max_filesize,
            'allowed' => true,
        ],
        'language' => [
            'imdb' => 'en-US',
        ],
        'api' => [
            'sentry' => '',
        ],
        'webserver' => [
            'username' => 'www-data',
        ],
    ],
];
