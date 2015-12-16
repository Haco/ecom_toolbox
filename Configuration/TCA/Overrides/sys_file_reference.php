<?php
if (!defined('TYPO3_MODE')) {
    die ('Access denied.');
}

$GLOBALS[ 'TCA' ][ 'sys_file_reference' ][ 'columns' ][ 'hideinpost' ] = [
    'label'     => 'Hide in blog post?',
    'l10n_mode' => 'exclude',
    'config'    => [
        'type'    => 'check',
        'default' => 0
    ]
];

$GLOBALS[ 'TCA' ][ 'sys_file_reference' ][ 'palettes' ][ 'newsPalette' ][ 'showitem' ] .= ',hideinpost';
