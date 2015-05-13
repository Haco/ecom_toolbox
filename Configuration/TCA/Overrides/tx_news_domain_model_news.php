<?php
$newsEventDateColumn = array(
	'ecom_eventdate' => Array (
		'exclude' => 1,
		'label' => 'ecom Event Date',
		'l10n_mode' => 'exclude',
		'config' => Array (
			'type' => 'input',
			'eval' => 'date',
			'format' => 'date,trim'
		),
	),
);

// Adds the event field to ext:news TCA palette
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addTCAcolumns('tx_news_domain_model_news', $newsEventDateColumn, 1);
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addFieldsToPalette(
	'tx_news_domain_model_news',
	'paletteArchive',
	'ecom_eventdate,--linebreak--,', 'before:archive'
);