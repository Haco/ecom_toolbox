<?php
if (!defined('TYPO3_MODE')) {
    die ('Access denied.');
}

if (\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::isLoaded('news')) {
    \TYPO3\CMS\Core\Utility\ArrayUtility::mergeRecursiveWithOverrule(
        $GLOBALS[ 'TCA' ][ 'tx_news_domain_model_link' ][ 'columns' ],
        [
            'ecom_show_button' => [
                'exclude' => 1,
                'label' => 'Show link as button in post ',
                'config' => [
                    'type' => 'check',
                    'default' => 0
                ]
            ]
        ]
    );

    // Adds the event field to ext:news TCA palettes
    \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addToAllTCAtypes('tx_news_domain_model_link', 'ecom_show_button');
}
