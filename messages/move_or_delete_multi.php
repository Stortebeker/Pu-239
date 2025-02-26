<?php

declare(strict_types = 1);

use Pu239\Cache;
use Pu239\Message;

global $container, $site_config, $CURUSER;

if (empty($_POST['pm'])) {
    header("Location: {$_SERVER['HTTP_REFERER']}");
    die();
}
$pm_messages = is_array($_POST['pm']) ? $_POST['pm'] : [$_POST['pm']];
$messages_class = $container->get(Message::class);
$cache = $container->get(Cache::class);
if (isset($_POST['move'])) {
    $set = [
        'location' => $_POST['boxx'],
    ];
    foreach ($pm_messages as $pm_message) {
        $messages_class->update($set, (int) $pm_message);
    }
    $cache->delete('inbox_' . $CURUSER['id']);
    header('Location: ' . $_SERVER['PHP_SELF'] . '?action=view_mailbox&multi_move=1&box=' . $mailbox);
    die();
}
if (isset($_POST['delete'])) {
    foreach ($pm_messages as $id) {
        $id = (int) $id;
        $message = $messages_class->get_by_id($id);
        if ($message['receiver'] == $CURUSER['id'] && $message['urgent'] === 'yes' && $message['unread'] === 'yes') {
            stderr($lang['pm_error'], '' . $lang['pm_delete_err'] . '<a class="is-link" href="' . $site_config['paths']['baseurl'] . '/messages.php?action=view_message&id=' . $pm_id . '">' . $lang['pm_delete_back'] . '</a>' . $lang['pm_delete_msg'] . '');
        }
        if (($message['receiver'] == $CURUSER['id'] || $message['sender'] == $CURUSER['id']) && $message['location'] == $site_config['pm']['deleted']) {
            $result = $messages_class->delete($id, $CURUSER['id']);
        } elseif ($message['receiver'] == $CURUSER['id']) {
            $set = [
                'location' => 0,
                'unread' => 'no',
            ];
            $result = $messages_class->update($set, $id);
            $cache->decrement('inbox_' . $CURUSER['id']);
        } elseif ($message['sender'] == $CURUSER['id'] && $message['location'] != $site_config['pm']['deleted']) {
            $set = [
                'saved' => 'no',
            ];
            $result = $messages_class->update($set, $id);
        }
    }

    if (!$result) {
        stderr($lang['pm_error'], $lang['pm_delete_err_multi']);
    }
    if (isset($_POST['returnto'])) {
        header('Location: ' . $_SERVER['PHP_SELF'] . '?action=' . $_POST['returnto'] . '&multi_delete=1');
    } elseif (isset($_POST['draft_section'])) {
        header('Location: ' . $_SERVER['PHP_SELF'] . '?action=viewdrafts&multi_delete=1');
    } else {
        header('Location: ' . $_SERVER['PHP_SELF'] . '?action=view_mailbox&multi_delete=1&box=' . $mailbox);
    }
    die();
}
