<?php

declare(strict_types = 1);

use DI\DependencyException;
use DI\NotFoundException;
use MatthiasMullie\Scrapbook\Exception\UnbegunTransaction;
use Pu239\Cache;
use Pu239\Session;
use Pu239\User;

/**
 * @param int  $userid
 * @param bool $invincible
 * @param bool $bypass_bans
 *
 * @throws DependencyException
 * @throws NotFoundException
 * @throws UnbegunTransaction
 * @throws \Envms\FluentPDO\Exception
 */
function invincible(int $userid, bool $invincible = true, bool $bypass_bans = true)
{
    global $container, $CURUSER;

    $users_class = $container->get(User::class);
    $username = $users_class->get_item('username', $userid);
    $setbits = $clrbits = 0;
    if ($invincible) {
        $display = 'now';
        $setbits |= PERMS_NO_IP;
        if ($bypass_bans) {
            $setbits |= PERMS_BYPASS_BAN;
        } else {
            $clrbits |= PERMS_BYPASS_BAN;
            $display = 'now bypass bans off and';
        }
    } else {
        $display = 'no longer';
        $clrbits |= PERMS_NO_IP;
        $clrbits |= PERMS_BYPASS_BAN;
    }
    if ($setbits || $clrbits) {
        sql_query('UPDATE users SET perms = ((perms | ' . $setbits . ') & ~' . $clrbits . ') 
                 WHERE id = ' . sqlesc($userid)) or sqlerr(__FILE__, __LINE__);
    }
    $res = sql_query('SELECT username, torrent_pass, perms, modcomment FROM users 
                     WHERE id = ' . sqlesc($userid) . ' LIMIT 1') or sqlerr(__FILE__, __LINE__);
    $row = mysqli_fetch_assoc($res);
    $row['perms'] = (int) $row['perms'];
    sql_query('DELETE FROM `ips` WHERE userid = ' . sqlesc($userid)) or sqlerr(__FILE__, __LINE__);
    $cache = $container->get(Cache::class);
    $cache->delete('ip_history_' . $userid);
    $cache->delete('u_passkey_' . $row['torrent_pass']);
    $modcomment = get_date((int) TIME_NOW, '', 1) . ' - ' . $display . ' invincible thanks to ' . $CURUSER['username'] . "\n" . $row['modcomment'];
    $set = [
        'modcomment' => $modcomment,
        'perms' => $row['perms'],
    ];
    $users_class->update($set, $userid);
    write_log('Member [b][url=userdetails.php?id=' . $userid . ']' . (htmlsafechars($row['username'])) . '[/url][/b] is ' . $display . ' invincible thanks to [b]' . $CURUSER['username'] . '[/b]');
    $session = $container->get(Session::class);
    $session->set('is-info', "{$username} is $display Invincible");
    header('Location: ' . $_SERVER['PHP_SELF'] . '?id=' . $userid);
    die();
}
