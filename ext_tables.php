<?php
if ( !defined('TYPO3_MODE') ) {
	die( 'Access denied.' );
}

// Register FAQ Plugin
\TYPO3\CMS\Extbase\Utility\ExtensionUtility::registerPlugin(
    'Ecom.' . $_EXTKEY,
    'Ecomfaq',
    'ecom FAQ'
);

// TS FILE Toolbox Base
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addStaticFile($_EXTKEY, 'Resources/Private/TypoScript', 'ecom Toolbox Base');

// TS FILE for Ext:News
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addStaticFile($_EXTKEY, 'Resources/Private/TypoScript/News', 'ecom Toolbox for EXT:News');

// TS FILE for faq
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addStaticFile($_EXTKEY, 'Resources/Private/TypoScript/Faq', 'ecom FAQ');

// Backend Icons
\TYPO3\CMS\Backend\Sprite\SpriteManager::addSingleIcons(
	[
		'region-default' => \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::extRelPath('static_info_tables') . 'Resources/Public/Images/Icons/static_countries.svg',
		'region-country' => \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::extRelPath('static_info_tables') . 'Resources/Public/Images/Icons/static_countries.svg',
		'region-region' => \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::extRelPath('static_info_tables') . 'Resources/Public/Images/Icons/static_country_zones.svg',
		'language' => \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::extRelPath('static_info_tables') . 'Resources/Public/Images/Icons/static_languages.svg',
	],
	'ecomtoolbox'
);

// CSH Files
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addLLrefForTCAdescr('tx_ecomtoolbox_domain_model_language', 'EXT:ecom_toolbox/Resources/Private/Language/locallang_csh_tx_ecomtoolbox_domain_model_language.xlf');
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addLLrefForTCAdescr('tx_ecomtoolbox_domain_model_region', 'EXT:ecom_toolbox/Resources/Private/Language/locallang_csh_tx_ecomtoolbox_domain_model_region.xlf');
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addLLrefForTCAdescr('tx_ecomtoolbox_domain_model_state', 'EXT:ecom_toolbox/Resources/Private/Language/locallang_csh_tx_ecomtoolbox_domain_model_state.xlf');
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addLLrefForTCAdescr('tx_ecomtoolbox_domain_model_territory', 'EXT:ecom_toolbox/Resources/Private/Language/locallang_csh_tx_ecomtoolbox_domain_model_territory.xlf');

// Extend EXT:News Flexform SortBy Dropdown
$GLOBALS['TYPO3_CONF_VARS']['EXT']['news']['orderByNews'] .= ',ecom_event_date,ecom_blogpost_visits';