<?php
if ( !defined('TYPO3_MODE') ) {
	die( 'Access denied.' );
}

// Update News Flexform
$GLOBALS['TYPO3_CONF_VARS']['EXT']['news']['Hooks/T3libBefunc.php']['updateFlexforms'][] = 'Ecom\EcomToolbox\Hooks\T3libBefunc->updateFlexforms';