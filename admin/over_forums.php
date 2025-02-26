<?php

declare(strict_types = 1);

require_once INCL_DIR . 'function_html.php';
require_once CLASS_DIR . 'class_check.php';
$class = get_access(basename($_SERVER['REQUEST_URI']));
class_check($class);
$lang = array_merge($lang, load_language('ad_over_forums'));
global $site_config, $CURUSER;

$HTMLOUT = $over_forums = $count = $min_class_viewer = $sorted = '';
$main_links = "
            <div class='bottom20'>
                <ul class='level-center bg-06'>
                    <li class='is-link margin10'>
                        <a href='{$site_config['paths']['baseurl']}/staffpanel.php?tool=forum_config&amp;action=forum_config'>{$lang['ad_over_configure']}</a>
                    </li>
                    <li class='is-link margin10'>
                        <a href='{$site_config['paths']['baseurl']}/staffpanel.php?tool=forum_manage&amp;action=forum_manage'>{$lang['ad_over_manager']}</a>
                    </li>
                </ul>
            </div>
            <h1 class='has-text-centered'>{$lang['ad_over_forum']}</h1>";

$id = isset($_GET['id']) ? (int) $_GET['id'] : (isset($_POST['id']) ? (int) $_POST['id'] : 0);
$maxclass = $CURUSER['class'];
$name = isset($_POST['name']) ? htmlsafechars($_POST['name']) : '';
$desc = isset($_POST['desc']) ? htmlsafechars($_POST['desc']) : '';
$sort = isset($_POST['sort']) ? (int) $_POST['sort'] : 0;
$min_class_view = isset($_POST['min_class_view']) ? (int) $_POST['min_class_view'] : 0;
$posted_action = isset($_GET['action2']) ? htmlsafechars($_GET['action2']) : (isset($_POST['action2']) ? htmlsafechars($_POST['action2']) : '');
$valid_actions = [
    'delete',
    'edit_forum',
    'add_forum',
    'edit_forum_page',
];
$action = (in_array($posted_action, $valid_actions) ? $posted_action : 'forum');

switch ($action) {
    case 'delete':
        if (!$id) {
            stderr($lang['std_error'], $lang['std_error_id']);
        }
        $fluent->deleteFrom('over_forums')
               ->where('id = ?', $id)
               ->execute();
        header('Location: ' . $_SERVER['PHP_SELF'] . '?tool=over_forums');
        die();
        break;

    case 'edit_forum':
        if (!$name && !$desc && !$id) {
            stderr($lang['std_error'], $lang['std_error_form']);
        }
        $count = $fluent->from('over_forums')
                        ->select(null)
                        ->select('COUNT(id) AS count')
                        ->where('name != ?', $name)
                        ->where('sort = ?', $sort)
                        ->fetch('count');
        if ($count > 0) {
            stderr($lang['std_error'], $lang['std_error_select_another']);
        }
        $set = [
            'sort' => $sort,
            'name' => $name,
            'description' => $desc,
            'min_class_view' => $min_class_view,
        ];
        $fluent->update('over_forums')
               ->set($set)
               ->where('id = ?', $id)
               ->execute();
        header('Location: ' . $_SERVER['PHP_SELF'] . '?tool=over_forums');
        die();
        break;

    case 'add_forum':
        if (!$name && !$desc) {
            stderr($lang['std_error'], $lang['std_error_form']);
        }
        $count = $fluent->from('over_forums')
                        ->select(null)
                        ->select('COUNT(id) AS count')
                        ->where('sort = ?', $sort)
                        ->fetch('count');
        if ($count > 0) {
            stderr($lang['std_error'], $lang['std_error_select_another']);
        }
        $values = [
            'sort' => $sort,
            'name' => $name,
            'description' => $desc,
            'min_class_view' => $min_class_view,
        ];
        $fluent->insertInto('over_forums')
               ->values($values)
               ->execute();

        header('Location: ' . $_SERVER['PHP_SELF'] . '?tool=over_forums');
        die();
        break;

    case 'edit_forum_page':
        $row = $fluent->from('over_forums')
                      ->where('id = ?', $id)
                      ->fetch();
        if (!empty($row)) {
            $HTMLOUT .= $main_links . '
            <form method="post" action="staffpanel.php?tool=over_forums&amp;action=over_forums" accept-charset="utf-8">
            <input type="hidden" name="action2" value="edit_forum">
            <input type="hidden" name="id" value="' . $id . '">
            <table class="table table-bordered table-striped">
            <tr>
                <td colspan="2">' . $lang['ad_over_editfor'] . '' . htmlsafechars($row['name']) . '</td>
            </tr>
                <td><span class="has-text-weight-bold">' . $lang['ad_over_name'] . '</span></td>
            <td><input name="name" type="text" class="w-100" maxlength="60" value="' . htmlsafechars($row['name']) . '"></td>
          </tr>
          <tr>
            <td><span class="has-text-weight-bold">' . $lang['ad_over_description'] . '</span>  </td>
            <td><input name="desc" type="text" class="w-100" maxlength="200" value="' . htmlsafechars($row['description']) . '"></td>
          </tr>
            <tr>
            <td><span class="has-text-weight-bold">' . $lang['ad_over_minview'] . ' </span></td>
            <td>
            <select name="min_class_view">';
            for ($i = 0; $i <= $maxclass; ++$i) {
                $over_forums .= '<option class="body" value="' . $i . '"' . ($row['min_class_view'] == $i ? ' selected' : '') . '>' . get_user_class_name((int) $i) . '</option>';
            }
            $HTMLOUT .= $over_forums . '</select></td></tr><tr> 
            <td><span class="has-text-weight-bold">' . $lang['ad_over_sort'] . '</span></td>
            <td>
            <select name="sort">';
            $count = $fluent->from('over_forums')
                            ->select(null)
                            ->select('COUNT(id) AS count')
                            ->fetch('count');

            $maxclass = $count + 1;
            for ($i = 0; $i <= $maxclass; ++$i) {
                $sorted .= '<option class="body" value="' . $i . '"' . ($row['sort'] == $i ? ' selected' : '') . '>' . $i . '</option>';
            }
            $HTMLOUT .= $sorted . '</select></td></tr>
            <tr>
                <td colspan="2" class="has-text-centered">
                <input type="submit" name="button" class="button is-small margin20" value="' . $lang['ad_over_editbut'] . '">
                </td>
          </tr>
        </table></form>';
        }
        break;

    case 'forum':
        $HTMLOUT .= $main_links;
        $heading = '
            <tr>
                <th class="has-text-centered">' . $lang['ad_over_sort1'] . '</th>
                <th>' . $lang['ad_over_name1'] . '</th>
                <th class="has-text-centered">' . $lang['ad_over_minview1'] . '</th>
                <th class="has-text-centered">' . $lang['ad_over_modify'] . '</th>
            </tr>';
        $query = $fluent->from('over_forums')
                        ->orderBy('sort')
                        ->fetchAll();
        if (!empty($query)) {
            $body = '';
            foreach ($query as $row) {
                $body .= '
            <tr>
                <td class="has-text-centered">' . (int) $row['sort'] . '</td>
            <td>
                <a class="is-link" href="' . $site_config['paths']['baseurl'] . '/forums.php?action=forum_view&amp;fourm_id=' . $row['id'] . '">' . htmlsafechars($row['name']) . '</a><br>
                ' . htmlsafechars($row['description']) . '
            </td>
            <td class="has-text-centered">' . get_user_class_name((int) $row['min_class_view']) . '</td>
            <td class="has-text-centered">
                <span class="level-center">
                    <span class="left10">
                        <a href="' . $site_config['paths']['baseurl'] . '/staffpanel.php?tool=over_forums&amp;action=over_forums&amp;action2=edit_forum_page&amp;id=' . $row['id'] . '">
                            <i class="icon-edit icon"></i>
                        </a>
                    </span>
                    <span>
                        <a href="javascript:confirm_delete(\'' . $row['id'] . '\');">
                            <i class="icon-trash-empty icon has-text-danger"></i>
                        </a>
                    </span>
                </span>
            </td>
        </tr>';
            }
        }
        $HTMLOUT .= main_table($body, $heading);
        $HTMLOUT .= '
            <form method="post" action="' . $_SERVER['PHP_SELF'] . '?tool=over_forums&amp;action=over_forums" accept-charset="utf-8">
                <input type="hidden" name="action2" value="add_forum">';
        $body = '
                <tr>
                    <td colspan="2">' . $lang['ad_over_makenew'] . '</td>
                </tr>
                <tr>
                    <td><span>' . $lang['ad_over_name'] . '</span></td>
                    <td><input name="name" type="text" class="w-100" maxlength="60"></td>
                </tr>
                <tr>
                    <td><span>' . $lang['ad_over_description'] . '</span>  </td>
                    <td><input name="desc" type="text" class="w-100" maxlength="200"></td>
                </tr>
                <tr>
                    <td><span>' . $lang['ad_over_minview'] . '</span></td>
                    <td>
                        <select name="min_class_view">';
        for ($i = 0; $i <= $maxclass; ++$i) {
            $min_class_viewer .= '
                            <option class="body" value="' . $i . '">' . get_user_class_name((int) $i) . '</option>';
        }
        $body .= $min_class_viewer . '
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><span>' . $lang['ad_over_sort'] . '</span></td>
                    <td>
                        <select name="sort">';
        $count = $fluent->from('over_forums')
                        ->select(null)
                        ->select('COUNT(id) AS count')
                        ->fetch('count');

        $maxclass = $count + 1;
        for ($i = 0; $i <= $maxclass; ++$i) {
            $sorted .= '
                            <option class="body" value="' . $i . '">' . $i . '</option>';
        }
        $body .= $sorted . '
                        </select>
                    </td>
                </tr>';
        $HTMLOUT .= main_table($body, '', 'top20') . '
                <div class="has-text-centered margin20">
                    <input type="submit" name="button" class="button is-small margin20" value="' . $lang['ad_over_makebutton'] . '">
                </div>
           </form>';
        break;
}
$HTMLOUT .= '<script>
            /*<![CDATA[*/
            function confirm_delete(id)
            {
               if (confirm(\'Are you sure you want to delete this overforum?\'))
               {
                  self.location.href=\'staffpanel.php?tool=over_forums&action=over_forums&action2=delete&id=\'+id;
               }
            }
        /*]]>*/
    </script>';
echo stdhead($lang['ad_over_stdhead']) . wrapper($HTMLOUT) . stdfoot();
