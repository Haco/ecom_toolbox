<?php
if (!defined('TYPO3_MODE')) {
    die ('Access denied.');
}

if (\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::isLoaded('realurl')) {
    $GLOBALS[ 'TCA' ][ 'tx_news_domain_model_tag' ][ 'columns' ][ 'tx_realurl_pathsegment' ] = [
        'label'   => 'RealURL Path Segment (eg: mobile-safety or ptt-devices. Use only a-z, 0-9 and "-" dash characters)',
        'exclude' => 1,
        'default' => '',
        'l10n_mode' => 'noCopy',
        'config'  => [
            'type' => 'input',
            'max'  => 255,
            'eval' => 'trim,nospace,lower,required'
        ]
    ];
    \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addToAllTCAtypes('tx_news_domain_model_tag', 'tx_realurl_pathsegment', '', 'after:title');
}

if (\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::isLoaded('news')) {
    \TYPO3\CMS\Core\Utility\ArrayUtility::mergeRecursiveWithOverrule(
        $GLOBALS[ 'TCA' ][ 'tx_news_domain_model_tag' ][ 'ctrl' ],
        [
            'languageField' => 'sys_language_uid',
            'transOrigPointerField' => 'l10n_parent',
            'transOrigDiffSourceField' => 'l10n_diffsource',
        ]
    );

    \TYPO3\CMS\Core\Utility\ArrayUtility::mergeRecursiveWithOverrule(
        $GLOBALS[ 'TCA' ][ 'tx_news_domain_model_tag' ][ 'columns' ],
        [
            'sys_language_uid' => [
                'exclude' => 1,
                'label' => 'LLL:EXT:lang/locallang_general.xlf:LGL.language',
                'config' => [
                    'type' => 'select',
                    'foreign_table' => 'sys_language',
                    'foreign_table_where' => ' ORDER BY sys_language.title',
                    'items' => [
                        ['LLL:EXT:lang/locallang_general.xlf:LGL.allLanguages', -1],
                        ['LLL:EXT:lang/locallang_general.xlf:LGL.default_value', 0]
                    ]
                ]
            ],
            'l10n_parent' => [
                'displayCond' => 'FIELD:sys_language_uid:>:0',
                'exclude' => 1,
                'label' => 'LLL:EXT:lang/locallang_general.xlf:LGL.l18n_parent',
                'config' => [
                    'type' => 'select',
                    'items' => [
                        ['', 0]
                    ],
                    'foreign_table' => 'tx_news_domain_model_tag',
                    'foreign_table_where' => ' AND tx_news_domain_model_tag.pid=###CURRENT_PID### AND tx_news_domain_model_tag.sys_language_uid IN (-1,0) ORDER BY tx_news_domain_model_tag.title'
                ]
            ],
            'l10n_diffsource' => [
                'exclude' => 1,
                'config' => [
                    'type' => 'passthrough'
                ]
            ],
        ]
    );

    $GLOBALS[ 'TCA' ][ 'tx_news_domain_model_tag' ][ 'interface' ]['showRecordFieldList'] .= ',sys_language_uid, l10n_parent, l10n_diffsource';

    // Adds the event field to ext:news TCA palettes
    \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addToAllTCAtypes('tx_news_domain_model_tag', 'sys_language_uid;;;;1-1-1, l10n_parent, l10n_diffsource','','before:title');
}
