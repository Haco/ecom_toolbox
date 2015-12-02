<?php
if ( !defined ('TYPO3_MODE') ) {
	die ( 'Access denied.' );
}

return [
	'ctrl' => [
		'title'	=> 'LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang_db.xlf:tx_ecomtoolbox_domain_model_territory',
		'label' => 'title',
		'tstamp' => 'tstamp',
		'rootLevel' => 1,
		'crdate' => 'crdate',
		'cruser_id' => 'cruser_id',
		'dividers2tabs' => true,
		'default_sortby' => 'ORDER BY title',
		'versioningWS' => 2,
		'versioning_followPages' => true,
		'languageField' => 'sys_language_uid',
		'transOrigPointerField' => 'l10n_parent',
		'transOrigDiffSourceField' => 'l10n_diffsource',
		'delete' => 'deleted',
		'enablecolumns' => [
			'disabled' => 'hidden',
			'starttime' => 'starttime',
			'endtime' => 'endtime',
		],
		'searchFields' => 'title,',
		'iconfile' => \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::isLoaded( 'static_info_tables' ) ? \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::extRelPath( 'static_info_tables' ) . 'Resources/Public/Images/Icons/' . (version_compare(TYPO3_branch, '7.6', '>=') ? 'static_territories.svg' : 'icon_static_territories.gif') : \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::extRelPath( 'ecom_toolbox' ) . 'Resources/Public/Icons/tx_ecomtoolbox_domain_model_territory.gif'
	],
	'interface' => [
		'showRecordFieldList' => 'sys_language_uid, l10n_parent, l10n_diffsource, hidden, title, verified'
	],
	'types' => [
		'1' => [ 'showitem' => 'sys_language_uid;;;;1-1-1, l10n_parent, l10n_diffsource, hidden;;1, title, verified, --div--;LLL:EXT:cms/locallang_ttc.xlf:tabs.access, starttime, endtime' ]
	],
	'palettes' => [
		'1' => [ 'showitem' => '' ]
	],
	'columns' => [
		'sys_language_uid' => [
			'exclude' => 1,
			'label' => 'LLL:EXT:lang/locallang_general.xlf:LGL.language',
			'config' => [
				'type' => 'select',
				'foreign_table' => 'sys_language',
				'foreign_table_where' => 'ORDER BY sys_language.title',
				'items' => [
					[ 'LLL:EXT:lang/locallang_general.xlf:LGL.allLanguages', -1 ],
					[ 'LLL:EXT:lang/locallang_general.xlf:LGL.default_value', 0 ]
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
					[ '', 0 ]
				],
				'foreign_table' => 'tx_ecomtoolbox_domain_model_territory',
				'foreign_table_where' => 'AND tx_ecomtoolbox_domain_model_territory.pid=###CURRENT_PID### AND tx_ecomtoolbox_domain_model_territory.sys_language_uid IN (-1,0)'
			]
		],
		'l10n_diffsource' => [
			'config' => [
				'type' => 'passthrough'
			]
		],
		't3ver_label' => [
			'label' => 'LLL:EXT:lang/locallang_general.xlf:LGL.versionLabel',
			'config' => [
				'type' => 'input',
				'size' => 30,
				'max' => 255
			]
		],
		'hidden' => [
			'exclude' => 1,
			'label' => 'LLL:EXT:lang/locallang_general.xlf:LGL.hidden',
			'config' => [
				'type' => 'check'
			]
		],
		'starttime' => [
			'exclude' => 1,
			'l10n_mode' => 'mergeIfNotBlank',
			'label' => 'LLL:EXT:lang/locallang_general.xlf:LGL.starttime',
			'config' => [
				'type' => 'input',
				'size' => 13,
				'max' => 20,
				'eval' => 'datetime',
				'checkbox' => 0,
				'default' => 0,
				'range' => [ 'lower' => mktime(0, 0, 0, date('m'), date('d'), date('Y')) ]
			]
		],
		'endtime' => [
			'exclude' => 1,
			'l10n_mode' => 'mergeIfNotBlank',
			'label' => 'LLL:EXT:lang/locallang_general.xlf:LGL.endtime',
			'config' => [
				'type' => 'input',
				'size' => 13,
				'max' => 20,
				'eval' => 'datetime',
				'checkbox' => 0,
				'default' => 0,
				'range' => [ 'lower' => mktime(0, 0, 0, date('m'), date('d'), date('Y')) ]
			]
		],
		'title' => [
			'l10n_mode' => 'prefixLangTitle',
			'exclude' => 0,
			'label' => 'LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang_db.xlf:tx_ecomtoolbox_domain_model_territory.title',
			'config' => [
				'type' => 'input',
				'size' => 30,
				'eval' => 'trim,required'
			]
		],
		'verified' => [
			'l10n_mode' => 'exclude',
			'exclude' => 1,
			'label' => 'LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang_db.xlf:tx_ecomtoolbox_domain_model_territory.verified',
			'config' => [
				'type' => 'check',
				'default' => 1
			]
		]

	]
];