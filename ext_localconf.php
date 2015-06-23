<?php
if ( !defined('TYPO3_MODE') ) {
	die( 'Access denied.' );
}
// Register Extend News
$GLOBALS['TYPO3_CONF_VARS']['EXT']['news']['classes']['Domain/Model/News'][] = 'ecom_toolbox';
$GLOBALS['TYPO3_CONF_VARS']['EXT']['news']['classes']['Domain/Model/FileReference'][] = 'ecom_toolbox';

// Update News Flexform
$GLOBALS['TYPO3_CONF_VARS']['EXT']['news']['Hooks/BackendUtility.php']['updateFlexforms'][] = 'Ecom\EcomToolbox\Hooks\BackendUtility->updateFlexforms';