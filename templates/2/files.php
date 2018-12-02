<?php

function get_file_name($file)
{
    global $site_config;

    switch ($file) {
        case 'chat_css_trans':
            return "{$site_config['baseurl']}/css/2/chat_trans_19e3cd7b.css";
        case 'chat_css_uranium':
            return "{$site_config['baseurl']}/css/2/chat_uranium_e6ff1dde.css";
        case 'css':
            return "{$site_config['baseurl']}/css/2/css_e390e864.css";
        case 'vendor_css':
            return "{$site_config['baseurl']}/css/2/vendor_e11d3062.css";
        case 'sceditor_css':
            return "{$site_config['baseurl']}/css/2/sceditor_59c4e4a3.css";
        case 'main_css':
            return "{$site_config['baseurl']}/css/2/main_8d434446.css";
        case 'main_js':
            return "{$site_config['baseurl']}/js/2/main_3a013c91.js";
        case 'vendor_js':
            return "{$site_config['baseurl']}/js/2/vendor_dcc85e11.js";
        case 'jquery_js':
            return "{$site_config['baseurl']}/js/2/jquery_acaf7162.js";
        case 'chat_main_js':
            return "{$site_config['baseurl']}/js/2/chat_main_0b4dc4c4.js";
        case 'chat_js':
            return "{$site_config['baseurl']}/js/2/chat_8497c973.js";
        case 'chat_log_js':
            return "{$site_config['baseurl']}/js/2/chat_log_e081be8f.js";
        case 'browse_js':
            return "{$site_config['baseurl']}/js/2/browse_d96450ea.js";
        case 'scroller_js':
            return "{$site_config['baseurl']}/js/2/scroller_13b47ab3.js";
        case 'slider_js':
            return "{$site_config['baseurl']}/js/2/slider_33a1861e.js";
        case 'userdetails_js':
            return "{$site_config['baseurl']}/js/2/userdetails_88ffe01b.js";
        case 'recaptcha_js':
            return "{$site_config['baseurl']}/js/2/recaptcha_31b1d18c.js";
        case 'bookmarks_js':
            return "{$site_config['baseurl']}/js/2/bookmarks_8e719a09.js";
        case 'iframe_js':
            return "{$site_config['baseurl']}/js/2/iframe_f74a311b.js";
        case '':
            return "{$site_config['baseurl']}/";
        case 'sceditor_js':
            return "{$site_config['baseurl']}/js/2/sceditor_d4a6c38b.js";
        case 'cheaters_js':
            return "{$site_config['baseurl']}/js/2/cheaters_88e84984.js";
        case 'user_search_js':
            return "{$site_config['baseurl']}/js/2/user_search_79ba3068.js";
        case 'lightbox_js':
            return "{$site_config['baseurl']}/js/2/lightbox_b0c4a917.js";
        case 'tooltipster_js':
            return "{$site_config['baseurl']}/js/2/tooltipster_dc2a1682.js";
        case 'checkport_js':
            return "{$site_config['baseurl']}/js/2/checkport_a540ce2b.js";
        case 'check_username_js':
            return "{$site_config['baseurl']}/js/2/check_username_ce6ba54b.js";
        case 'pStrength_js':
            return "{$site_config['baseurl']}/js/2/pStrength_28866856.js";
        case 'upload_js':
            return "{$site_config['baseurl']}/js/2/upload_dbe8405d.js";
        case 'request_js':
            return "{$site_config['baseurl']}/js/2/request_d5161ee2.js";
        case 'parallax_js':
            return "{$site_config['baseurl']}/js/2/parallax_eca2b578.js";
        case 'acp_js':
            return "{$site_config['baseurl']}/js/2/acp_22d19c79.js";
        case 'dragndrop_js':
            return "{$site_config['baseurl']}/js/2/dragndrop_8018b488.js";
        case 'details_js':
            return "{$site_config['baseurl']}/js/2/details_fa26612c.js";
        case 'forums_js':
            return "{$site_config['baseurl']}/js/2/forums_b87eec63.js";
        case 'pollsmanager_js':
            return "{$site_config['baseurl']}/js/2/pollsmanager_801ab346.js";
        case 'trivia_js':
            return "{$site_config['baseurl']}/js/2/trivia_6f40b5b8.js";
        default:
            return null;
    }
}
