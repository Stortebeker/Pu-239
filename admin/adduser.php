<?php

declare(strict_types = 1);

use Pu239\Cache;
use Pu239\Session;
use Pu239\User;

require_once INCL_DIR . 'function_users.php';
require_once INCL_DIR . 'function_html.php';
require_once INCL_DIR . 'function_password.php';
require_once CLASS_DIR . 'class_check.php';
$class = get_access(basename($_SERVER['REQUEST_URI']));
class_check($class);
$lang = array_merge($lang, load_language('ad_adduser'));
global $container, $site_config;

$cache = $container->get(Cache::class);
$cache->delete('chat_users_list');

$stdfoot = [
    'js' => [
        get_file_name('check_username_js'),
    ],
];

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $post = $_POST;
    unset($_POST);
    $post['password'] = bin2hex(random_bytes(12));
    $user = $container->get(User::class);
    $userid = $user->add($post, $lang);
    $session = $container->get(Session::class);
    if (empty($userid)) {
        $session->set('is-warning', $lang['err_already_exists']);
    } else {
        stderr('Success', format_username($userid) . ' account created successfully. The password has been set to ' . $post['password']);
    }
}

$HTMLOUT = '
    <h1 class="has-text-centered">' . $lang['std_adduser'] . '</h1>
    <form method="post" action="staffpanel.php?tool=adduser&amp;action=adduser" accept-charset="utf-8">';
$body = "
        <div class='columns'>                    
            <div class='column is-one-quarter'>{$lang['text_username']}</div>
            <div class='column'>
                <input type='text' name='username' id='username' class='w-100' onblur='checkit();' value='' autocomplete='on' required pattern='[\p{L}\p{N}_-]{3,64}'>
                <div id='namecheck'></div>
            </div>
        </div>
        <div class='columns'>                    
            <div class='column is-one-quarter'>{$lang['text_email']}</div>
            <div class='column'>
                <input type='email' name='email' class='w-100' autocomplete='on'>" . ($site_config['signup']['email_confirm'] ? "
                <div class='alt_bordered top10 padding10'>{$lang['signup_valemail']}</div>" : '') . "
            </div>
        </div>
        <div class='has-text-centered margin20'>
            <input type='submit' value='{$lang['btn_okay']}' class='button is-small'>
        </div>
    </form>";

$HTMLOUT .= main_div($body, '', 'padding20');

echo stdhead($lang['std_adduser']) . wrapper($HTMLOUT) . stdfoot($stdfoot);
