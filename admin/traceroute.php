<?php

declare(strict_types = 1);

require_once INCL_DIR . 'function_users.php';
require_once INCL_DIR . 'function_html.php';
require_once CLASS_DIR . 'class_check.php';
$class = get_access(basename($_SERVER['REQUEST_URI']));
class_check($class);
$lang = array_merge($lang, load_language('ad_traceroute'));
$HTMLOUT = '';
if (strtoupper(substr(PHP_OS, 0, 3) === 'WIN')) {
    $windows = 1;
    $unix = 0;
} else {
    $windows = 0;
    $unix = 1;
}
$register_globals = (bool) ini_get('register_gobals');
$system = ini_get('system');
$unix = (bool) $unix;
$win = (bool) $windows;
if ($register_globals) {
    $ip = getenv($_SERVER['REMOTE_ADDR']);
    $self = $PHP_SELF;
} else {
    $action = isset($_POST['action']) ? $_POST['action'] : '';
    $host = isset($_POST['host']) ? $_POST['host'] : '';
    $ip = getip();
    $self = $_SERVER['SCRIPT_NAME'];
}
if ($action === 'do') {
    $host = preg_replace('/[^A-Za-z0-9.]/', '', $host);
    $HTMLOUT .= '<div class="error">';
    $HTMLOUT .= '' . $lang['trace_out'] . '<br>';
    $HTMLOUT .= '<pre>';
    if ($unix) {
        system('' . 'traceroute ' . $host);
        system('killall -q traceroute');
    } else {
        system('' . 'tracert ' . $host);
    }
    $HTMLOUT .= '</pre>';
    $HTMLOUT .= '' . $lang['trace_done'] . '</div>';
} else {
    $HTMLOUT .= '<body bgcolor="#fff" text="#000000"></body>
    <p><span size="2">' . $lang['trace_ip'] . '' . $ip . '</span></p>
    <form method="post" action="' . $_SERVER['PHP_SELF'] . '">' . $lang['trace_host'] . '<input type="text" id=specialboxn name="host" value="' . $ip . '" accept-charset="utf-8">
    <input type="hidden" name="action" value="do"><input type="submit" value="' . $lang['trace_submit'] . '" class="button is-small">
   </form>';
    $HTMLOUT .= '<br><b>' . $system . '</b>';
    $HTMLOUT .= '</body></html>';
}
echo stdhead($lang['trace_stdhead']) . wrapper($HTMLOUT) . stdfoot();
