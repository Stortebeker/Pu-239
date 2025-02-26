<?php

declare(strict_types = 1);

use Pu239\Session;

require_once __DIR__ . '/../include/bittorrent.php';
require_once CLASS_DIR . 'class_user_options.php';
require_once CLASS_DIR . 'class_user_options_2.php';
require_once INCL_DIR . 'function_users.php';
require_once INCL_DIR . 'function_html.php';
require_once INCL_DIR . 'function_bbcode.php';
require_once CACHE_DIR . 'timezones.php';

$user = check_user_status();
$stdhead = [
    'css' => [
        get_file_name('sceditor_css'),
    ],
];
$stdfoot = [
    'js' => [
        get_file_name('sceditor_js'),
    ],
];
global $container, $TZ, $site_config;

$lang = array_merge(load_language('global'), load_language('usercp'));
$HTMLOUT = $stylesheets = $wherecatina = '';
$templates = sql_query('SELECT id, name FROM stylesheets ORDER BY id');
while ($templ = mysqli_fetch_assoc($templates)) {
    if (file_exists(ROOT_DIR . "templates/$templ[id]/template.php")) {
        $stylesheets .= "<option value='" . (int) $templ['id'] . "'" . ($templ['id'] == get_stylesheet() ? ' selected' : '') . '>' . htmlsafechars($templ['name']) . '</option>';
    }
}
$countries = "<option value='0'>---- {$lang['usercp_none']} ----</option>\n";
$ct_r = sql_query('SELECT id,name FROM countries ORDER BY name') or sqlerr(__FILE__, __LINE__);
while ($ct_a = mysqli_fetch_assoc($ct_r)) {
    $countries .= "<option value='" . (int) $ct_a['id'] . "'" . ($user['country'] == $ct_a['id'] ? ' selected' : '') . '>' . htmlsafechars($ct_a['name']) . "</option>\n";
}
$offset = !empty($user['time_offset']) ? $user['time_offset'] : $site_config['time']['offset'];
$time_select = "
            <select name='user_timezone' style='min-width: 400px'>";
foreach ($TZ as $off => $words) {
    if (preg_match("/^time_(-?[\d\.]+)$/", $off, $match)) {
        $time_select .= $match[1] == $offset ? "
                <option value='{$match[1]}' selected>$words</option>" : "
                <option value='{$match[1]}'>$words</option>";
    }
}
$time_select .= '
            </select>';
if ($user['dst_in_use']) {
    $dst_check = 'checked';
} else {
    $dst_check = '';
}
if ($user['auto_correct_dst']) {
    $dst_correction = 'checked';
} else {
    $dst_correction = '';
}
$possible_actions = [
    'avatar',
    'signature',
    'social',
    'location',
    'security',
    'links',
    'torrents',
    'api',
    'personal',
    'default',
];
$session = $container->get(Session::class);
$action = isset($_GET['action']) ? htmlsafechars(trim($_GET['action'])) : 'default';
if (!in_array($action, $possible_actions)) {
    $session->set('is-warning', '[h2]Error! Change a few things up and try submitting again.[/h2]');
}
if (isset($_GET['edited'])) {
    $session->set('is-success', "[h2]{$lang['usercp_updated']}![/h2]");
}

$avatar = get_avatar($user);
$HTMLOUT .= "
            <div class='w-100'>
                <form method='post' action='takeeditcp.php' accept-charset='utf-8'>
                    <div class='bottom20'>
                        <ul class='level-center bg-06'>
                            <li class='is-link margin10'><a href='{$site_config['paths']['baseurl']}/usercp.php?action=avatar'>Avatar</a></li>
                            <li class='is-link margin10'><a href='{$site_config['paths']['baseurl']}/usercp.php?action=signature'>Signature</a></li>
                            <li class='is-link margin10'><a href='{$site_config['paths']['baseurl']}/usercp.php?action=default'>PM's</a></li>
                            <li class='is-link margin10'><a href='{$site_config['paths']['baseurl']}/usercp.php?action=security'>Security</a></li>
                            <li class='is-link margin10'><a href='{$site_config['paths']['baseurl']}/usercp.php?action=torrents'>Torrents</a></li>
                            <li class='is-link margin10'><a href='{$site_config['paths']['baseurl']}/usercp.php?action=api'>API</a></li>
                            <li class='is-link margin10'><a href='{$site_config['paths']['baseurl']}/usercp.php?action=personal'>Personal</a></li>
                            <li class='is-link margin10'><a href='{$site_config['paths']['baseurl']}/usercp.php?action=social'>Social</a></li>
                            <li class='is-link margin10'><a href='{$site_config['paths']['baseurl']}/usercp.php?action=location'>Location</a></li>
                            <li class='is-link margin10'><a href='{$site_config['paths']['baseurl']}/usercp.php?action=links'>Links</a></li>
                        </ul>
                    </div>
                    <h1 class='has-text-centered'>Welcome " . format_username((int) $user['id']) . "!</h1>
                    <div class='level has-text-centered'>";
if (!empty($avatar)) {
    $HTMLOUT .= "
                        <div class='has-text-centered'>
                            $avatar
                        </div>";
}

$width = 'w-100';
if ($user['avatars'] === 'yes') {
    $width = 'w-75';
}
if ($action === 'avatar') {
    $HTMLOUT .= "
                        <div class='table-wrapper $width'>
                            <table class='table table-bordered table-striped'>
                                <thead>
                                    <tr>
                                        <th colspan='2'>
                                            <input type='hidden' name='action' value='avatar'>
                                            Avatar Options
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>";
    if (!($user['avatarpos'] == 0 || $user['avatarpos'] != 1)) {
        $HTMLOUT .= "
                                    <tr>
                                        <td class='rowhead'>{$lang['usercp_avatar']}</td>
                                        <td>
                                            <input type='text' name='avatar' class='w-100' value='" . htmlsafechars((string) $user['avatar']) . "'>
                                            <p class='small'>
                                                Width should be 150px. (Will be resized if necessary)
                                            </p>
                                            <p class='small'>
                                                If you need a host for your image, try our  <a href='{$site_config['paths']['baseurl']}/bitbucket.php'>Bitbucket</a>.
                                            </p>
                                        </td>
                                    </tr>";
    } else {
        $HTMLOUT .= "
                                    <tr>
                                        <td class='rowhead'>{$lang['usercp_avatar']}</td>
                                        <td>
                                            <input type='text' name='avatar' class='w-100' value='" . htmlsafechars($user['avatar']) . "' readonly='readonly'>
                                            {$lang['usercp_no_avatar_allow']}
                                        </td>
                                    </tr>";
    }
    $HTMLOUT .= tr('Is your avatar offensive', '
                                            <input type="radio" name="offensive_avatar" ' . ($user['offensive_avatar'] === 'yes' ? 'checked' : '') . ' value="yes"> Yes
                                            <input type="radio" name="offensive_avatar" ' . ($user['offensive_avatar'] === 'no' ? 'checked' : '') . ' value="no"> No', 1);
    $HTMLOUT .= tr('View offensive avatars', '
                                            <input type="radio" name="view_offensive_avatar" ' . ($user['view_offensive_avatar'] === 'yes' ? 'checked' : '') . ' value="yes"> Yes
                                            <input type="radio" name="view_offensive_avatar" ' . ($user['view_offensive_avatar'] === 'no' ? 'checked' : '') . ' value="no"> No', 1);
    $HTMLOUT .= tr('View avatars', '
                                            <input type="radio" name="avatars" ' . ($user['avatars'] === 'yes' ? 'checked' : '') . ' value="yes"> Yes (Low bandwidth user may want to disable this)
                                            <input type="radio" name="avatars" ' . ($user['avatars'] === 'no' ? 'checked' : '') . ' value="no"> No', 1);
    $HTMLOUT .= "
                                    <tr>
                                        <td colspan='2'>
                                            <div class='has-text-centered'>
                                                <input class='button is-small' type='submit' value='Submit changes!'>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>";
} elseif ($action === 'signature') {
    $HTMLOUT .= "
                        <div class='table-wrapper $width'>
                            <table class='table table-bordered table-striped'>
                                <thead>
                                    <tr>
                                        <th colspan='2'>
                                            <input type='hidden' name='action' value='signature'>
                                            Signature Options
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>";
    $HTMLOUT .= tr('View Signatures', '
                                            <input type="radio" name="signatures" ' . ($user['signatures'] === 'yes' ? 'checked' : '') . ' value="yes"> Yes
                                            <input type="radio" name="signatures" ' . ($user['signatures'] !== 'yes' ? 'checked' : '') . ' value="no"> No', 1);
    $HTMLOUT .= tr('Signature', '
                                            <textarea name="signature" class="w-100" rows="4">' . htmlsafechars((string) $user['signature']) . '</textarea><br>Must be an image url.', 1);
    $HTMLOUT .= tr($lang['usercp_info'], "
                                            <textarea name='info' class='w-100' rows='4'>" . htmlsafechars((string) $user['info']) . "</textarea><br>{$lang['usercp_tags']}", 1);
    $HTMLOUT .= "
                                    <tr>
                                        <td colspan='2'>
                                            <div class='has-text-centered'>
                                                <input class='button is-small' type='submit' value='Submit changes!'>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>";
} elseif ($action === 'api') {
    $HTMLOUT .= "
                        <div class='table-wrapper $width'>
                            <table class='table table-bordered table-striped'>
                                <thead>
                                    <tr>
                                        <th colspan='2'>
                                            <input type='hidden' name='action' value='api'>
                                            API
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>";
    $HTMLOUT .= tr('Torrent Pass', '<input type="text" class="w-100" name="torrent_pass"  value="' . htmlsafechars($user['torrent_pass']) . '" readonly onClick="this.select();"><div class="left10 top10">This is used for downloading and seeding torrents, in your torrent client and your rss reader.</div>', 1);
    $HTMLOUT .= tr('Auth', '<input type="text" class="w-100" name="auth"  value="' . htmlsafechars($user['auth']) . '" readonly onClick="this.select();"><div class="left10 top10">This is only used by an upload script, msg any staff member for the details.</div>', 1);
    $HTMLOUT .= tr('API Key', '<input type="text" class="w-100" name="auth"  value="' . htmlsafechars($user['apikey']) . '" readonly onClick="this.select();"><div class="left10 top10">This is only used by auto downloaders, such as CouchPotato, SickRage and others. (API not implemented, yet)</div>', 1);
    $HTMLOUT .= '
                                </tbody>
                            </table>
                        </div>';
} elseif ($action === 'social') {
    $HTMLOUT .= "
                        <div class='table-wrapper $width'>
                            <table class='table table-bordered table-striped'>
                                <thead>
                                    <tr>
                                        <th colspan='2'>
                                            <input type='hidden' name='action' value='social'>
                                            Social
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>";
    $HTMLOUT .= tr('<img width="16" src="' . $site_config['paths']['images_baseurl'] . 'forums/skype.png" alt="Icq" class="tooltipper right10" title="Skype"> Skype ', '
                                            <input type="text" class="w-100" name="skype"  value="' . htmlsafechars((string) $user['skype']) . '">
                                            <p class="top10 bottom10">' . $lang['usercp_skype_share'] . '</p>', 1);
    $HTMLOUT .= tr('<img src="' . $site_config['paths']['images_baseurl'] . 'forums/www.gif" alt="www" class="tooltipper right10" title="www" width="16px" height="16px"> Website ', '
                                            <input type="text" class="w-100" name="website"  value="' . htmlsafechars((string) $user['website']) . '">', 1);
    $HTMLOUT .= "
                                    <tr>
                                        <td colspan='2'>
                                            <div class='has-text-centered'>
                                                <input class='button is-small' type='submit' value='Submit changes!'>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>";
} elseif ($action === 'location') {
    $datetime = unixstamp_to_human(TIME_NOW);
    $HTMLOUT .= "
                        <div class='table-wrapper $width'>
                            <table class='table table-bordered table-striped'>
                                <thead>
                                    <tr>
                                        <th colspan='2'>
                                            <input type='hidden' name='action' value='location'>
                                            Location Options => Is this the correct time? [{$datetime['hour']}:{$datetime['minute']} {$datetime['ampm']}]
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>";

    $HTMLOUT .= tr($lang['usercp_tz'], $time_select, 1);
    $HTMLOUT .= tr($lang['usercp_checkdst'], "
                                            <input type='checkbox' name='checkdst' id='tz-checkdst' value='1' $dst_correction> {$lang['usercp_auto_dst']}
                                            <div id='tz-checkmanual' class='is_hidden'>
                                                <input type='checkbox' name='manualdst' value='1' $dst_check> {$lang['usercp_is_dst']}
                                            </div>", 1);
    $HTMLOUT .= tr($lang['usercp_country'], "
                                            <select name='country' class='w-100'>
                                                $countries
                                            </select>", 1);
    $current_lang = get_language();
    $HTMLOUT .= tr($lang['usercp_language'], "
                                            <select name='language' class='w-100'>
                                                <option value='1'" . ($current_lang == '1' ? ' selected' : '') . '>English</option>
                                            </select>', $current_lang);
    $HTMLOUT .= "
                                    <tr>
                                        <td colspan='2'>
                                            <div class='has-text-centered'>
                                                <input class='button is-small' type='submit' value='Submit changes!'>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>";
} elseif ($action === 'links') {
    $HTMLOUT .= "
                        <div class='table-wrapper $width columns level is-marginless'>
                            <div class='colum table-wrapper'>
                                <table class='table table-bordered table-striped'>
                                    <thead>
                                        <tr>
                                            <th colspan='2' class='has-text-centered size_6'>
                                                <input type='hidden' name='action' value='links'>
                                                " . htmlsafechars($user['username']) . "'s Menu
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <a href='{$site_config['paths']['baseurl']}/mytorrents.php'><div>{$lang['usercp_edit_torrents']}</div></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href='{$site_config['paths']['baseurl']}/friends.php'><div>{$lang['usercp_edit_friends']}</div></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href='{$site_config['paths']['baseurl']}/users.php'><div>{$lang['usercp_search']}</div></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href='{$site_config['paths']['baseurl']}/invite.php'><div>Invites</div></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href='{$site_config['paths']['baseurl']}/tenpercent.php'><div>Lifesaver</div></a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class='column table-wrapper'>
                                <table class='table table-bordered table-striped'>
                                    <thead>
                                        <tr>
                                            <th colspan='2' class='has-text-centered size_6'>" . htmlsafechars($user['username']) . "'s Entertainment</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <a href='{$site_config['paths']['baseurl']}/topmoods.php'><div>Top Member Mood's</div></a>
                                            </td>
                                        </tr>";
    if ($user['class'] >= $site_config['allowed']['play']) {
        $HTMLOUT .= "
                                        <tr>
                                            <td>
                                                <a href='{$site_config['paths']['baseurl']}/games.php'><div>{$site_config['site']['name']} Games</div></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href='{$site_config['paths']['baseurl']}/blackjack.php'><div>{$site_config['site']['name']} Blackjack</div></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href='{$site_config['paths']['baseurl']}/casino.php'><div>{$site_config['site']['name']} Casino</div></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href='{$site_config['paths']['baseurl']}/arcade.php'><div>{$site_config['site']['name']} Arcade</div></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href='{$site_config['paths']['baseurl']}/lottery.php'><div>{$site_config['site']['name']} Lottery</div></a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>";
    }
} elseif ($action === 'security') {
    $HTMLOUT .= "
                        <div class='table-wrapper $width'>
                            <table class='table table-bordered table-striped'>
                                <thead>
                                    <tr>
                                        <th colspan='2'>
                                            <input type='hidden' name='action' value='security'>
                                            Security Options
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>";
    if (get_parked() == '1') {
        $HTMLOUT .= tr($lang['usercp_acc_parked'], "
                                        <input type='radio' name='parked'" . ($user['parked'] === 'yes' ? ' checked' : '') . " value='yes'> Yes
                                        <input type='radio' name='parked'" . ($user['parked'] === 'no' ? ' checked' : '') . " value='no'> No
                                        <div class='size_2'>
                                            <p>{$lang['usercp_acc_parked_message']}<br>
                                            {$lang['usercp_acc_parked_message1']}</p>
                                        </div>", 1);
    }
    if (get_anonymous() != '0') {
        $HTMLOUT .= tr($lang['usercp_anonymous'], "
                                        <input type='checkbox' name='anonymous'" . ($user['anonymous'] === 'yes' ? ' checked' : '') . "> {$lang['usercp_default_anonymous']}", 1);
    }
    $HTMLOUT .= tr('Hide current seed and leech', "
                                        <input type='radio' name='hidecur'" . ($user['hidecur'] === 'yes' ? ' checked' : '') . " value='yes'> Yes
                                        <input type='radio' name='hidecur'" . ($user['hidecur'] === 'no' ? ' checked' : '') . " value='no'> No", 1);
    if ($user['class'] > UC_MIN) {
        $HTMLOUT .= tr('My Paranoia', "
                                        <select name='paranoia'>
                                            <option value='0'" . ($user['paranoia'] == 0 ? ' selected' : '') . ">I'm totally relaxed</option>
                                            <option value='1'" . ($user['paranoia'] == 1 ? ' selected' : '') . ">I feel sort of relaxed</option>
                                            <option value='2'" . ($user['paranoia'] == 2 ? ' selected' : '') . ">I'm paranoid</option>
                                            <option value='3'" . ($user['paranoia'] == 3 ? ' selected' : '') . ">I wear a tin-foil hat</option>
                                        </select>
                                        <div class='mw-100'>
                                            <div class='flipper has-text-primary top10'>
                                                <a id='paranoia_open'>Paranoia Levels explained <i class='icon-down-open size_2' aria-hidden='true'></i></a>
                                            </div>
                                            <div id='paranoia_info' class='is_hidden wrap padding20'>
                                                <p>
                                                    <span class='has-text-success has-text-weight-bold'>I'm totally relaxed</span><br>
                                                    Default setting, nothing is hidden except your IP, passkey, email. the same as any tracker.
                                                </p>
                                                <p>
                                                    <span class='has-text-success has-text-weight-bold'>I'm a little paranoid</span><br>
                                                    All info about torrents are hidden from other members except your share ratio, join date, last seen and PM button if you accept PMs. Your comments are not hidden, and though your actual stats (up and down) are hidden on the forums, your actual ratio isn't, also, you will appear on snatched lists.
                                                </p>
                                                <p>
                                                    <span class='has-text-success has-text-weight-bold'>I'm paranoid</span><br>
                                                    Same as 'a little paranoid' except your name will not appear on snatched lists, your ratio and stats as well as anything to do with actual filesharing will not be visible to other members. You will appear as 'anonymous' on torrent comments, snatched lists et al. The member ratings and comments on your details page will also be disabled.
                                                </p>
                                                <p>
                                                    <span class='has-text-success has-text-weight-bold'>I wear a tin-foil hat</span><br>
                                                    No information will be available to other members on your details page. Your comments and thank you(s) on torrents will be anonymous, your userdetails page will not be accessible, your stats will not appear at all, including your share ratio.
                                                </p>
                                                <p>
                                                    <span class='has-text-success has-text-weight-bold'>Please remember!</span><br>
                                                    All of the above will not apply to staff... staff see all and know all... <br>Even at the highest level of paranoia, you can still be reported (though they won't know who they are reporting) and you are not immune to our auto scripts...
                                                </p>
                                            </div>
                                        </div>", 1);
    }
    $HTMLOUT .= tr($lang['usercp_email'], "
                                        <input type='text' name='email' class='w-100' value='" . htmlsafechars($user['email']) . "'>
                                        <p class='top20 bottom10'>{$lang['usercp_email_pass']}</p>
                                        <input type='password' name='chmailpass' class='w-100' placeholder='Current Password'>", 1);
    $HTMLOUT .= "
                                <tr>
                                    <td colspan='2'>{$lang['usercp_note']}</td>
                                </tr>";
    $HTMLOUT .= tr('Show Email', '
                                        <input type="radio" name="show_email" ' . ($user['show_email'] === 'yes' ? ' checked' : '') . ' value="yes"> Yes
                                        <input type="radio" name="show_email" ' . ($user['show_email'] === 'no' ? ' checked' : '') . ' value="no"> No
                                        <p>Do you wish to have your email address visible on the forums?</p>', 1);
    $HTMLOUT .= tr($lang['usercp_chpass'], "
                                        <input type='password' name='password' id='password' class='w-100' autocomplete='on' minlength='8'> 
                                        <input type='password' name='confirm_password' id='confirm_password' class='w-100 top10' autocomplete='on' minlength='8'> 
                                        <p class='top20 bottom10'>You must enter your current password.</p>
                                        <input type='password' name='current_pass' class='w-100' placeholder='Current Password'>", 1);
    $HTMLOUT .= "
                                    <tr>
                                        <td colspan='2'>
                                            <div class='has-text-centered'>
                                                <input class='button is-small' type='submit' value='Submit changes!'>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>";
} elseif ($action === 'torrents') {
    $HTMLOUT .= "
                        <div class='table-wrapper $width'>
                            <table class='table table-bordered table-striped'>
                                <thead>
                                    <tr>
                                        <th colspan='2'>
                                            <input type='hidden' name='action' value='torrents'>
                                            Torrent Options
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>";

    $categories = '';
    $groups = genrelist(true);
    $count = count($groups) - 1;
    $grouped = genrelist(false);
    if (!empty($grouped)) {
        $categories .= "
                                            <div id='cat-container'>";
        $parent = '';
        for ($i = 1; $i <= $count; ++$i) {
            $categories .= "
                                                <div class='w-100 bordered level-wide bg-03 bottom20'>";
            foreach ($grouped as $a) {
                if (empty($a['parent_name'])) {
                    continue;
                }
                if ($a['parent_id'] === $i) {
                    $image = !empty($a['image']) ? "<img class='radius-sm' src='{$site_config['paths']['images_baseurl']}caticons/{$user['categorie_icon']}/{$a['image']}' alt='" . htmlsafechars($a['name']) . "'>" : htmlsafechars($a['name']);
                    $categories .= "
                                                    <span class='padding10 level-center tooltipper' title='" . htmlsafechars($a['name']) . "'>
                                                        <input name='cat{$a['id']}' type='checkbox' " . (!empty($user['notifs']) && strpos($user['notifs'], "[cat{$a['id']}]") !== false ? ' checked' : '') . " value='yes'>
                                                        <span class='cat-image left10'>
                                                            <a href='{$site_config['paths']['baseurl']}/browse.php?c" . (int) $a['id'] . "'>
                                                                $image
                                                            </a>
                                                        </span>
                                                    </span>";
                }
            }
            $categories .= '
                                            </div>';
        }
    }
    $HTMLOUT .= tr($lang['usercp_pm_notif'], "
                                            <input type='checkbox' name='pmnotif'" . (!empty($user['notifs']) && strpos($user['notifs'], '[pmail]') !== false ? ' checked' : '') . " value='yes'> {$lang['usercp_notify_torrent']}\n", 1);
    $HTMLOUT .= tr($lang['usercp_email_notif'], "
                                            <input type='checkbox' name='emailnotif'" . (!empty($user['notifs']) && strpos($user['notifs'], '[email]') !== false ? ' checked' : '') . " value='yes'> {$lang['usercp_notify_torrent']}\n", 1);
    $HTMLOUT .= tr($lang['usercp_browse'], $categories, 1);
    $HTMLOUT .= tr($lang['usercp_clearnewtagmanually'], "
                                            <input type='checkbox' name='clear_new_tag_manually' value='yes'" . (($user['opt1'] & user_options::CLEAR_NEW_TAG_MANUALLY) ? ' checked' : '') . "> {$lang['usercp_default_clearnewtagmanually']}", 1);
    $HTMLOUT .= tr($lang['usercp_scloud'], "
                                            <input type='checkbox' name='viewscloud' value='yes'" . (($user['opt1'] & user_options::VIEWSCLOUD) ? ' checked' : '') . "> {$lang['usercp_scloud1']}", 1);

    $split = ($user['opt2'] & user_options_2::SPLIT) === user_options_2::SPLIT;
    $HTMLOUT .= tr($lang['usercp_split'], "
                                            <input type='checkbox' name='split'" . ($split ? ' checked' : '') . " value='yes'> (Split torrents uploaded by days)", 1);

    $browse_icons = ($user['opt2'] & user_options_2::BROWSE_ICONS) === user_options_2::BROWSE_ICONS;
    $HTMLOUT .= tr($lang['usercp_icons'], "
                                            <input type='checkbox' name='browse_icons'" . ($browse_icons ? ' checked' : '') . " value='yes'> (View categories as icons)", 1);

    $HTMLOUT .= tr($lang['usercp_cats_sets'], "
                                            <select name='categorie_icon'>
                                                <option value='1'" . (get_category_icons() == 1 ? ' selected' : '') . '>Default</option>
                                            </select>', get_category_icons());
    $HTMLOUT .= tr($lang['usercp_tor_perpage'], "
                                            <input type='text' class='w-25' name='torrentsperpage' value='{$user['torrentsperpage']}'>
                                            <div>{$lang['usercp_default']}</div>", 1);
    $HTMLOUT .= "
                                    <tr>
                                        <td colspan='2'>
                                            <div class='has-text-centered'>
                                                <input class='button is-small' type='submit' value='Submit changes!'>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>";
} elseif ($action === 'personal') {
    $HTMLOUT .= "
                        <div class='table-wrapper $width'>
                            <table class='table table-bordered table-striped'>
                                <thead>
                                    <tr>
                                        <th colspan='2'>
                                            <input type='hidden' name='action' value='personal'>
                                            Personal Options
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>";
    if ($user['class'] >= UC_VIP) {
        $HTMLOUT .= tr($lang['usercp_title'], "
                                                <input type='text' class='w-100' value='" . htmlsafechars((string) $user['title']) . "' name='title'>", 1);
    }
    $HTMLOUT .= tr($lang['usercp_top_perpage'], "
                                            <input type='text' class='w-100' name='topicsperpage' value='{$user['topicsperpage']}'> {$lang['usercp_default']}", 1);
    $HTMLOUT .= tr($lang['usercp_post_perpage'], "
                                            <input type='text' class='w-100' name='postsperpage' value='{$user['postsperpage']}'> {$lang['usercp_default']}", 1);
    $HTMLOUT .= tr('Forum Sort Order', "
                                            <input type='radio' name='forum_sort' " . ($user['forum_sort'] === 'ASC' ? ' checked' : '') . " value='ASC'> At Bottom
                                            <input type='radio' name='forum_sort' " . ($user['forum_sort'] !== 'ASC' ? ' checked' : '') . " value='DESC'> At Top<br>What order you want the posts to be listed in.", 1);
    $HTMLOUT .= tr('12 Hour Time', "
                                            <input type='radio' name='use_12_hour' " . ($user['use_12_hour'] ? ' checked' : '') . " value='1'> Yes
                                            <input type='radio' name='use_12_hour' " . (!$user['use_12_hour'] ? ' checked' : '') . " value='0'> No", 1);

    $HTMLOUT .= tr($lang['usercp_stylesheet'], "
                                            <select name='stylesheet'>
                                                $stylesheets
                                            </select>", 1);
    $HTMLOUT .= tr($lang['usercp_ajaxchat_height'], "
                                            <input type='text' class='w-100' name='ajaxchat_height' value='{$user['ajaxchat_height']}'> {$lang['usercp_default']}", 1);
    $HTMLOUT .= tr($lang['usercp_fontsize'], "
                                            <input type='number' class='w-100' name='fontsize' value='{$user['font_size']}' min='50' max='150'> {$lang['usercp_default_size']}", 1);
    $HTMLOUT .= tr($lang['usercp_gender'], "
                                            <div class='level'>
                                                <span>
                                                    <input type='radio' name='gender'" . ($user['gender'] === 'Male' ? ' checked' : '') . " value='Male'> {$lang['usercp_male']}
                                                </span>
                                                <span>
                                                    <input type='radio' name='gender'" . ($user['gender'] === 'Female' ? ' checked' : '') . " value='Female'> {$lang['usercp_female']}
                                                </span>
                                                <span>
                                                    <input type='radio' name='gender'" . ($user['gender'] == 'N/A' ? ' checked' : '') . " value='N/A'> {$lang['usercp_na']}
                                                </span>
                                            </div>", 1);

    if ($user['birthday'] === '1970-01-01' || empty($user['birthday'])) {
        $time = strtotime('-100 year', time());
        $min = date('Y-m-d', $time);
        $time = strtotime('-18 year', time());
        $max = date('Y-m-d', $time);
        $birthday = "
                                            <input type='date' id='birthday' name='birthday' class='w-100' min='$min' max='$max'>";
    } else {
        $birthday = $user['birthday'];
    }
    $HTMLOUT .= tr('Birthday', $birthday, 1);

    $HTMLOUT .= "
                                    <tr>
                                        <td colspan='2'>
                                            <div class='has-text-centered'>
                                                <input class='button is-small' type='submit' value='Submit changes!'>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>";
} else {
    if ($action === 'default') {
        $HTMLOUT .= "
                        <div class='table-wrapper $width'>
                            <table class='table table-bordered table-striped'>
                                <thead>
                                    <tr>
                                        <th colspan='2'>
                                            <input type='hidden' name='action' value='default'>
                                            PM options
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>";
        $HTMLOUT .= tr($lang['usercp_email_notif'], "
                                            <input type='checkbox' name='pmnotif'" . (!empty($user['notifs']) && strpos($user['notifs'], '[pm]') !== false ? ' checked' : '') . " value='yes'> {$lang['usercp_notify_pm']}", 1);
        $HTMLOUT .= tr($lang['usercp_accept_pm'], "
                                            <div class='level'>
                                                <span>
                                                    <input type='radio' name='acceptpms'" . ($user['acceptpms'] === 'yes' ? ' checked' : '') . " value='yes'> {$lang['usercp_except_blocks']}
                                                </span>
                                                <span>
                                                    <input type='radio' name='acceptpms'" . ($user['acceptpms'] === 'friends' ? ' checked' : '') . " value='friends'> {$lang['usercp_only_friends']}
                                                </span>
                                                <span>
                                                    <input type='radio' name='acceptpms'" . ($user['acceptpms'] === 'no' ? ' checked' : '') . " value='no'> {$lang['usercp_only_staff']}
                                                </span>
                                            </div>", 1);
        $HTMLOUT .= tr($lang['usercp_delete_pms'], "
                                            <input type='checkbox' name='deletepms'" . ($user['deletepms'] === 'yes' ? ' checked' : '') . "> {$lang['usercp_default_delete']}", 1);
        $HTMLOUT .= tr($lang['usercp_save_pms'], "
                                            <input type='checkbox' name='savepms'" . ($user['savepms'] === 'yes' ? ' checked' : '') . "> {$lang['usercp_default_save']}", 1);
        $HTMLOUT .= tr('Forum Subscribe PM', "
                                            <input type='radio' name='subscription_pm' " . ($user['subscription_pm'] === 'yes' ? ' checked' : '') . " value='yes'> Yes
                                            <input type='radio' name='subscription_pm' " . ($user['subscription_pm'] === 'no' ? ' checked' : '') . " value='no'> No<br>When someone posts in a subscribed thread, you will be PMed.", 1);

        $pm_on_delete = ($user['opt2'] & user_options_2::PM_ON_DELETE) === user_options_2::PM_ON_DELETE;
        $HTMLOUT .= tr('Torrent deletion PM', "
                                            <input type='radio' name='pm_on_delete' " . ($pm_on_delete ? ' checked' : '') . " value='yes'> Yes
                                            <input type='radio' name='pm_on_delete' " . (!$pm_on_delete ? ' checked' : '') . " value='no'> No<br>When any of your uploaded torrents are deleted, you will be PMed.", 1);

        $commentpm = ($user['opt2'] & user_options_2::COMMENTPM) === user_options_2::COMMENTPM;
        $HTMLOUT .= tr('Torrent comment PM', "
                                            <input type='radio' name='commentpm' " . ($commentpm ? ' checked' : '') . " value='yes'> Yes
                                            <input type='radio' name='commentpm' " . (!$commentpm ? ' checked' : '') . " value='no'> No<br>When any of your uploaded torrents are commented on, you will be PMed.", 1);
        $HTMLOUT .= "
                                    <tr>
                                        <td colspan='2'>
                                            <div class='has-text-centered'>
                                                <input class='button is-small' type='submit' value='Submit changes!'>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>";
    }
}

$HTMLOUT .= '
                    </div>
                </form>
            </div>';

echo stdhead(htmlsafechars($user['username']) . "{$lang['usercp_stdhead']} ", $stdhead) . wrapper($HTMLOUT) . stdfoot($stdfoot);
