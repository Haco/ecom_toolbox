<?php
if ( !defined('TYPO3_MODE') ) {
	die( 'Access denied.' );
}

// TS FILE
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addStaticFile($_EXTKEY, 'Configuration/TypoScript', 'ecom Toolbox');

// Backend Icons
\TYPO3\CMS\Backend\Sprite\SpriteManager::addSingleIcons(
	[
		'region-default' => \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::extRelPath('ecom_toolbox') . 'Resources/Public/Icons/tx_ecomtoolbox_domain_model_region.gif',
		'region-country' => \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::extRelPath('ecom_toolbox') . 'Resources/Public/Icons/tx_ecomtoolbox_domain_model_region_country.gif',
		'region-region' => \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::extRelPath('ecom_toolbox') . 'Resources/Public/Icons/tx_ecomtoolbox_domain_model_region_region.gif',
		'language' => \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::extRelPath('ecom_toolbox') . 'Resources/Public/Icons/tx_ecomtoolbox_domain_model_language.png',
	],
	'ecomToolbox'
);

// CSH Files
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addLLrefForTCAdescr('tx_ecomtoolbox_domain_model_language', 'EXT:ecom_toolbox/Resources/Private/Language/locallang_csh_tx_ecomtoolbox_domain_model_language.xlf');
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addLLrefForTCAdescr('tx_ecomtoolbox_domain_model_region', 'EXT:ecom_toolbox/Resources/Private/Language/locallang_csh_tx_ecomtoolbox_domain_model_region.xlf');
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addLLrefForTCAdescr('tx_ecomtoolbox_domain_model_state', 'EXT:ecom_toolbox/Resources/Private/Language/locallang_csh_tx_ecomtoolbox_domain_model_state.xlf');
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addLLrefForTCAdescr('tx_ecomtoolbox_domain_model_territory', 'EXT:ecom_toolbox/Resources/Private/Language/locallang_csh_tx_ecomtoolbox_domain_model_territory.xlf');
