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
 * Class AJAXChatLanguage.
 * @package Pu239
 */
class AJAXChatLanguage
{
    protected $_regExpAcceptLangCode;
    protected $_availableLangCodes;
    protected $_defaultLangCode;
    protected $_strictMode;
    protected $_langCode;

    /**
     * AJAXChatLanguage constructor.
     *
     * @param      $availableLangCodes
     * @param      $defaultLangCode
     * @param null $langCode
     * @param bool $strictMode
     */
    public function __construct($availableLangCodes, $defaultLangCode, $langCode = null, $strictMode = false)
    {
        $this->_regExpAcceptLangCode = '/^([a-z]{1,8}(?:-[a-z]{1,8})*)(?:;\s*q=(0(?:\.[0-9]{1,3})?|1(?:\.0{1,3})?))?$/i';
        $this->_availableLangCodes = $availableLangCodes;
        $this->_defaultLangCode = $defaultLangCode;
        if ($langCode && in_array($langCode, $availableLangCodes)) {
            $this->_langCode = $langCode;
        }
        $this->_strictMode = $strictMode;
    }

    // Method to detect the language code from the HTTP_ACCEPT_LANGUAGE header:

    public function getLangCode()
    {
        if (!$this->_langCode) {
            $this->detectLangCode();
        }

        return $this->_langCode;
    }

    /**
     * @param $langCode
     */
    public function setLangCode($langCode)
    {
        $this->_langCode = $langCode;
    }

    public function detectLangCode()
    {
        // If HTTP_ACCEPT_LANGUAGE is empty use defaultLangCode:
        if (empty($_SERVER['HTTP_ACCEPT_LANGUAGE'])) {
            $this->_langCode = $this->_defaultLangCode;

            return;
        }

        // Split up the HTTP_ACCEPT_LANGUAGE header:
        $acceptedLanguages = preg_split('/,\s*/', $_SERVER['HTTP_ACCEPT_LANGUAGE']);

        $currentLangCode = $this->_defaultLangCode;
        $currentLangQuality = 0.0;

        foreach ($acceptedLanguages as $acceptedLanguage) {
            // Parse the language string:
            $match = preg_match($this->_regExpAcceptLangCode, $acceptedLanguage, $matches);
            // Check if the syntax is valid:
            if (!$match) {
                continue;
            }

            // Get and split the language code:
            $langCodeParts = explode('-', $matches[1]);

            // Get the language quality given as float value:
            if (isset($matches[2])) {
                $langQuality = (float) $matches[2];
            } else {
                // Missing language quality value is maximum quality:
                $langQuality = 1.0;
            }

            //  Go through it until the language code is empty:
            while (count($langCodeParts)) {
                // Join the current langCodeParts:
                $langCode = strtolower(implode('-', $langCodeParts));
                // Check if the langCode is in the available list:
                if (in_array($langCode, $this->_availableLangCodes)) {
                    // Check the quality setting:
                    if ($langQuality > $currentLangQuality) {
                        $currentLangCode = $langCode;
                        $currentLangQuality = $langQuality;
                        break;
                    }
                }
                // If strict mode is set, don't minimalize the language code:
                if ($this->_strictMode) {
                    break;
                }
                // else chop off the right part:
                array_pop($langCodeParts);
            }
        }

        $this->_langCode = $currentLangCode;
    }

    public function getLangCodes()
    {
        return $this->_availableLangCodes;
    }
}
