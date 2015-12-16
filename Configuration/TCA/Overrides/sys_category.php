<?php
if (!defined('TYPO3_MODE')) {
    die ('Access denied.');
}

if (\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::isLoaded('realurl')) {
    $GLOBALS[ 'TCA' ][ 'sys_category' ][ 'columns' ][ 'tx_realurl_pathsegment' ] = [
        'label'   => 'LLL:EXT:realurl/locallang_db.xml:pages.tx_realurl_pathsegment',
        'exclude' => 1,
        'config'  => [
            'type' => 'input',
            'max'  => 255,
            'eval' => 'trim,nospace,lower'
        ]
    ];
    \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addToAllTCAtypes('sys_category', 'tx_realurl_pathsegment', '', 'after:parent');
}

$GLOBALS[ 'TCA' ][ 'sys_category' ][ 'columns' ][ 'tx_ext_type' ] = [
    'exclude'   => 1,
    'l10n_mode' => 'exclude',
    'label'     => 'EXT (list includes not loaded extensions)',
    'config'    => [
        'type'  => 'select',
        'items' => [
            ['-- none --', '']
        ]
    ]
];

/** Load extension list */
$GLOBALS[ 'TCA' ][ 'sys_category' ][ 'columns' ][ 'tx_ext_type' ][ 'config' ][ 'items' ][] = [
    'Local Extensions',
    '--div--'
];
foreach (scandir(PATH_site . '/typo3conf/ext') as $directory) {
    if (!preg_match('/^\.\.?$/', $directory)) {
        $GLOBALS[ 'TCA' ][ 'sys_category' ][ 'columns' ][ 'tx_ext_type' ][ 'config' ][ 'items' ][] = [
            $directory,
            $directory
        ];
    }
}

$GLOBALS[ 'TCA' ][ 'sys_category' ][ 'ctrl' ][ 'requestUpdate' ] .= ',tx_ext_type';
$GLOBALS[ 'TCA' ][ 'sys_category' ][ 'palettes' ][ 1 ][ 'showitem' ] .= ',tx_ext_type';
