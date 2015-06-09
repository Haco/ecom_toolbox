<?php
$newsEventDateColumn = array(
	'ecom_eventdate' => array (
		'exclude' => 0,
		'label' => 'ecom Event Date',
		'config' => array (
			'type' => 'input',
			'eval' => 'date',
			'size' => 10
		),
	),

	'ecom_event_end' => array (
		'exclude' => 0,
		'l10n_mode' => 'exclude',
		'l10n_display' => 'defaultAsReadonly',
		'label' => 'ecom Event End',
		'config' => array (
			'type' => 'input',
			'eval' => 'date',
			'size' => 10
		),
	),

	'ecom_event_booth' => array (
		'label' => 'Hall, Booth/Stand',
		'l10n_mode' => 'exclude',
		'l10n_display' => 'defaultAsReadonly',
		'config' => array (
			'type' => 'input',
			'eval' => 'trim',
			'size' => 12,
		),
	),

	'ecom_event_country' => array (
		'label' => 'Country',
		'l10n_mode' => 'exclude',
		'l10n_display' => 'defaultAsReadonly',
		'config' => array (
			'type' => 'select',
			'cols' => 15,
			'foreign_table' => 'tx_ecomtoolbox_domain_model_region',
			'items' => array(
				array('','')
			)
		),
	),

	'ecom_event_city' => array (
		'label' => 'City',
		'l10n_mode' => 'exclude',
		'l10n_display' => 'defaultAsReadonly',
		'config' => array (
			'type' => 'input',
			'size' => 12,
			'eval' => 'trim'
		),
	),

	'ecom_event_address' => array (
		'label' => 'Address',
		'l10n_mode' => 'exclude',
		'l10n_display' => 'defaultAsReadonly',
		'config' => array (
			'type' => 'text',
			'eval' => 'trim'
		),
	),

	'ecom_event_industries' => array (
		'label' => 'Industries / Topic',
		'l10n_mode' => 'exclude',
		'l10n_display' => 'defaultAsReadonly',
		'config' => array(
			'type' => 'check',
			'items' => array(
				array('LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang.xlf:event.industries.I.0', 0),
				array('LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang.xlf:event.industries.I.1', 1),
				array('LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang.xlf:event.industries.I.2', 2),
				array('LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang.xlf:event.industries.I.3', 3),
				array('LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang.xlf:event.industries.I.4', 4),
			)
		),
	),

	'ecom_event_industries_custom' => array (
		'label' => 'Custom Industries (Comma separated)',
		'l10n_mode' => 'mergeIfNotBlank',
		'config' => array(
			'type' => 'text',
			'eval' => 'trim'
		),
	),

	'ecom_event_hide_infobox' => array (
		'label' => 'Hide Info box in Blog entry',
		'l10n_mode' => 'exclude',
		'l10n_display' => 'defaultAsReadonly',
		'config' => array(
			'type' => 'check',
			'default' => 0
		),
	),
	
	'ecom_event_hide_googlemaps' => array (
		'label' => 'Hide Google Maps Link',
		'l10n_mode' => 'exclude',
		'l10n_display' => 'defaultAsReadonly',
		'config' => array(
			'type' => 'check',
			'default' => 0
		),
	),
);

// Custom Palettes
$GLOBALS['TCA']['tx_news_domain_model_news']['palettes']['ecom_event_options'] = array('showitem' => 'ecom_event_hide_infobox,ecom_event_hide_googlemaps', 'canNotCollapse' => 1);
$GLOBALS['TCA']['tx_news_domain_model_news']['palettes']['ecom_event_dates'] = array('showitem' => 'ecom_eventdate,ecom_event_end', 'canNotCollapse' => 1);
$GLOBALS['TCA']['tx_news_domain_model_news']['palettes']['ecom_event_location'] = array('showitem' => 'ecom_event_booth,--linebreak--,ecom_event_country,ecom_event_city,--linebreak--,ecom_event_address', 'canNotCollapse' => 1);
$GLOBALS['TCA']['tx_news_domain_model_news']['palettes']['ecom_event_topic'] = array('showitem' => 'ecom_event_industries,--linebreak--,ecom_event_industries_custom', 'canNotCollapse' => 1);

// Adds the event field to ext:news TCA palettes
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addTCAcolumns('tx_news_domain_model_news', $newsEventDateColumn, 1);
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addToAllTCAtypes('tx_news_domain_model_news', '--div--;ecom Event,--palette--;Event Options;ecom_event_options,--palette--;Event Dates;ecom_event_dates,--palette--;Event Location;ecom_event_location,--palette--;Event Topic;ecom_event_topic');