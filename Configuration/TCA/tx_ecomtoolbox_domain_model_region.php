<?php
if ( !defined ('TYPO3_MODE') ) {
	die ( 'Access denied.' );
}

return [
	'ctrl' => [
		'title'	=> 'LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang_db.xlf:tx_ecomtoolbox_domain_model_region',
		'label' => 'title',
		'tstamp' => 'tstamp',
		'rootLevel' => 1,
		'crdate' => 'crdate',
		'cruser_id' => 'cruser_id',
		'dividers2tabs' => TRUE,
		'default_sortby' => 'ORDER BY title',
		'versioningWS' => 2,
		'versioning_followPages' => TRUE,
		'type' => 'type',
		'languageField' => 'sys_language_uid',
		'transOrigPointerField' => 'l10n_parent',
		'transOrigDiffSourceField' => 'l10n_diffsource',
		'delete' => 'deleted',
		'enablecolumns' => [
			'disabled' => 'hidden',
			'starttime' => 'starttime',
			'endtime' => 'endtime',
		],
		'typeicon_column' => 'type',
		'typeicons' => [
			'1' => \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::extRelPath( 'static_info_tables' ) . 'Resources/Public/Images/Icons/' . (version_compare(TYPO3_branch, '7.6', '>=') ? 'static_countries.svg' : 'icon_static_countries.gif')
		],
		'searchFields' => 'title,iso_code_a2,iso_code_a3,flag_icon_name,',
		'iconfile' => \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::isLoaded( 'static_info_tables' ) ? \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::extRelPath( 'static_info_tables' ) . 'Resources/Public/Images/Icons/' . (version_compare(TYPO3_branch, '7.6', '>=') ? 'static_countries.svg' : 'icon_static_countries.gif') : \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::extRelPath( 'ecom_toolbox' ) . 'Resources/Public/Icons/tx_ecomtoolbox_domain_model_region.gif'
	],
	'interface' => [
		'showRecordFieldList' => 'sys_language_uid, l10n_parent, l10n_diffsource, hidden, title, type, iso_code_a2, iso_code_a3, verified, flag_icon_name, countries, territory'
	],
	'types' => [
		'0' => [ 'showitem' => 'sys_language_uid;;;;1-1-1, l10n_parent, l10n_diffsource, hidden;;1, type, title;;2, territory, --div--;LLL:EXT:cms/locallang_ttc.xlf:tabs.access, starttime, endtime' ],
		'1' => [ 'showitem' => 'sys_language_uid;;;;1-1-1, l10n_parent, l10n_diffsource, hidden;;1, type, title;;3, territory, countries, --div--;LLL:EXT:cms/locallang_ttc.xlf:tabs.access, starttime, endtime' ]
	],
	'palettes' => [
		'1' => [ 'showitem' => '' ],
		'2' => [ 'showitem' => 'iso_code_a2, iso_code_a3, verified, --linebreak--, flag_icon_name' ],
		'3' => [ 'showitem' => 'flag_icon_name, verified' ]
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
				'foreign_table' => 'tx_ecomtoolbox_domain_model_region',
				'foreign_table_where' => 'AND tx_ecomtoolbox_domain_model_region.pid=###CURRENT_PID### AND tx_ecomtoolbox_domain_model_region.sys_language_uid IN (-1,0)'
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
			'label' => 'LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang_db.xlf:tx_ecomtoolbox_domain_model_region.title',
			'config' => [
				'type' => 'input',
				'size' => 30,
				'eval' => 'trim,required'
			]
		],
		'type' => [
			'l10n_mode' => 'exclude',
			'exclude' => 1,
			'label' => 'LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang_db.xlf:tx_ecomtoolbox_domain_model_region.type',
			'config' => [
				'type' => 'select',
				'items' => [
					[ 'LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang_db.xlf:tx_ecomtoolbox_domain_model_region.type.I.0', 0 ],
					[ 'LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang_db.xlf:tx_ecomtoolbox_domain_model_region.type.I.1', 1 ]
				]
			]
		],
		'iso_code_a2' => [
			'l10n_mode' => 'exclude',
			'exclude' => 0,
			'label' => 'LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang_db.xlf:tx_ecomtoolbox_domain_model_region.iso_code_a2',
			'config' => [
				'type' => 'input',
				'size' => 5,
				'max' => 2,
				'eval' => 'trim,alpha,nospace,upper'
			]
		],
		'iso_code_a3' => [
			'l10n_mode' => 'exclude',
			'exclude' => 0,
			'label' => 'LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang_db.xlf:tx_ecomtoolbox_domain_model_region.iso_code_a3',
			'config' => [
				'type' => 'input',
				'size' => 5,
				'max' => 3,
				'eval' => 'trim,alpha,nospace,upper'
			]
		],
		'flag_icon_name' => [
			'l10n_mode' => 'exclude',
			'exclude' => 1,
			'label' => 'LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang_db.xlf:tx_ecomtoolbox_domain_model_region.flag_icon_name',
			'config' => [
				'type' => 'input',
				'size' => 20,
				'eval' => 'trim'
			]
		],
		'verified' => [
			'l10n_mode' => 'exclude',
			'exclude' => 1,
			'label' => 'LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang_db.xlf:tx_ecomtoolbox_domain_model_region.verified',
			'config' => [
				'type' => 'check',
				'default' => 1
			]
		],
		'countries' => [
			'l10n_mode' => 'exclude',
			'exclude' => 0,
			'label' => 'LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang_db.xlf:tx_ecomtoolbox_domain_model_region.countries',
			'config' => [
				'type' => 'select',
				'foreign_table' => 'tx_ecomtoolbox_domain_model_region',
				'foreign_table_where' => 'AND tx_ecomtoolbox_domain_model_region.sys_language_uid IN (-1,0) AND tx_ecomtoolbox_domain_model_region.type=0 AND tx_ecomtoolbox_domain_model_region.deleted=0 ORDER BY tx_ecomtoolbox_domain_model_region.title',
				'size' => 10,
				'maxitems' => 9999,
				'wizards' => [
					'_VALIGN' => 'middle',
					'suggest' => [
						'type' => 'suggest',
						'default' => [ 'searchWholePhrase' => 1 ]
					]
				]
			]
		],
		'territory' => [
			'l10n_mode' => 'exclude',
			'exclude' => 0,
			'label' => 'LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang_db.xlf:tx_ecomtoolbox_domain_model_region.territory',
			'config' => [
				'type' => 'select',
				'foreign_table' => 'tx_ecomtoolbox_domain_model_territory',
				'foreign_table_where' => 'AND tx_ecomtoolbox_domain_model_territory.sys_language_uid IN (-1,0) AND tx_ecomtoolbox_domain_model_territory.deleted=0 ORDER BY tx_ecomtoolbox_domain_model_territory.title',
				'minitems' => 1,
				'maxitems' => 1,
				'items' => [
					[ '', 0 ]
				]
			]
		]
	]
];