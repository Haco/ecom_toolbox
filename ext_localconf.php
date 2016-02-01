<?php
if ( !defined('TYPO3_MODE') ) {
	die( 'Access denied.' );
}
// Register Extend News
$GLOBALS['TYPO3_CONF_VARS']['EXT']['news']['classes']['Domain/Model/News'][] = 'ecom_toolbox';
$GLOBALS['TYPO3_CONF_VARS']['EXT']['news']['classes']['Domain/Model/FileReference'][] = 'ecom_toolbox';

// Extend GoogleSitemap for indexing languages of landingpage in a single sitemap
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['dd_googlesitemap']['sitemap']['ecom_lp'] = 'Ecom\EcomToolbox\Utility\SitemapUtility->generateSitemap';

// Update News Flexform
$GLOBALS['TYPO3_CONF_VARS']['EXT']['news']['Hooks/BackendUtility.php']['updateFlexforms'][] = 'Ecom\EcomToolbox\Hooks\BackendUtility->updateFlexforms';

// Hook into detailAction of EXT:News
/** @var \TYPO3\CMS\Extbase\SignalSlot\Dispatcher $signalSlotDispatcher */
$signalSlotDispatcher = \TYPO3\CMS\Core\Utility\GeneralUtility::makeInstance('TYPO3\CMS\Extbase\SignalSlot\Dispatcher');
$signalSlotDispatcher->connect(
	'GeorgRinger\News\Controller\NewsController',
	'detailAction',
	'Ecom\EcomToolbox\Slots\NewsControllerSlot',
	'detailActionSlot',
	TRUE
);
