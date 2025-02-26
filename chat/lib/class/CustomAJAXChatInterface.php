<?php

declare(strict_types = 1);
/*
 * @package AJAX_Chat
 * @author Sebastian Tschan
 * @copyright (c) Sebastian Tschan
 * @license Modified MIT License
 * @link https://blueimp.net/ajax/
 */

/**
 * Class CustomAJAXChatInterface.
 * @package Pu239
 */
class CustomAJAXChatInterface extends CustomAJAXChat
{
    public function initialize()
    {
        // Initialize configuration settings:
        $this->initConfig();

        // Initialize the DataBase connection:
        $this->initDataBaseConnection();
    }
}
