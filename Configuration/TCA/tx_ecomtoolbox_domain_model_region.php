<?php
if (!defined ('TYPO3_MODE')) {
	die ('Access denied.');
}

return array(
	'ctrl' => array(
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
		'enablecolumns' => array(
			'disabled' => 'hidden',
			'starttime' => 'starttime',
			'endtime' => 'endtime',
		),
		'typeicon_column' => 'type',
		'typeicon_classes' => array(
			'default' => 'extensions-ecomToolbox-region-default',
			'0' => 'extensions-ecomToolbox-region-country',
			'1' => 'extensions-ecomToolbox-region-region'
		),
		'searchFields' => 'title,iso_code_a2,iso_code_a3,flag_icon_name,',
		'iconfile' => \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::isLoaded('static_info_tables') ? \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::extRelPath('static_info_tables') . 'Resources/Public/Images/Icons/icon_static_countries.gif' : \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::extRelPath('ecom_toolbox') . 'Resources/Public/Icons/tx_ecomtoolbox_domain_model_region.gif'
	),
	'interface' => array(
		'showRecordFieldList' => 'sys_language_uid, l10n_parent, l10n_diffsource, hidden, title, type, iso_code_a2, iso_code_a3, verified, flag_icon_name, countries, territory',
	),
	'types' => array(
		'0' => array('showitem' => 'sys_language_uid;;;;1-1-1, l10n_parent, l10n_diffsource, hidden;;1, type, title;;2, territory, --div--;LLL:EXT:cms/locallang_ttc.xlf:tabs.access, starttime, endtime'),
		'1' => array('showitem' => 'sys_language_uid;;;;1-1-1, l10n_parent, l10n_diffsource, hidden;;1, type, title;;3, territory, countries, --div--;LLL:EXT:cms/locallang_ttc.xlf:tabs.access, starttime, endtime')
	),
	'palettes' => array(
		'1' => array('showitem' => ''),
		'2' => array('showitem' => 'iso_code_a2, iso_code_a3, verified, --linebreak--, flag_icon_name'),
		'3' => array('showitem' => 'flag_icon_name, verified')
	),
	'columns' => array(

		'sys_language_uid' => array(
			'exclude' => 1,
			'label' => 'LLL:EXT:lang/locallang_general.xlf:LGL.language',
			'config' => array(
				'type' => 'select',
				'foreign_table' => 'sys_language',
				'foreign_table_where' => 'ORDER BY sys_language.title',
				'items' => array(
					array('LLL:EXT:lang/locallang_general.xlf:LGL.allLanguages', -1),
					array('LLL:EXT:lang/locallang_general.xlf:LGL.default_value', 0)
				),
			),
		),
		'l10n_parent' => array(
			'displayCond' => 'FIELD:sys_language_uid:>:0',
			'exclude' => 1,
			'label' => 'LLL:EXT:lang/locallang_general.xlf:LGL.l18n_parent',
			'config' => array(
				'type' => 'select',
				'items' => array(
					array('', 0),
				),
				'foreign_table' => 'tx_ecomtoolbox_domain_model_region',
				'foreign_table_where' => 'AND tx_ecomtoolbox_domain_model_region.pid=###CURRENT_PID### AND tx_ecomtoolbox_domain_model_region.sys_language_uid IN (-1,0)',
			),
		),
		'l10n_diffsource' => array(
			'config' => array(
				'type' => 'passthrough',
			),
		),

		't3ver_label' => array(
			'label' => 'LLL:EXT:lang/locallang_general.xlf:LGL.versionLabel',
			'config' => array(
				'type' => 'input',
				'size' => 30,
				'max' => 255,
			)
		),

		'hidden' => array(
			'exclude' => 1,
			'label' => 'LLL:EXT:lang/locallang_general.xlf:LGL.hidden',
			'config' => array(
				'type' => 'check',
			),
		),

		'starttime' => array(
			'exclude' => 1,
			'l10n_mode' => 'mergeIfNotBlank',
			'label' => 'LLL:EXT:lang/locallang_general.xlf:LGL.starttime',
			'config' => array(
				'type' => 'input',
				'size' => 13,
				'max' => 20,
				'eval' => 'datetime',
				'checkbox' => 0,
				'default' => 0,
				'range' => array(
					'lower' => mktime(0, 0, 0, date('m'), date('d'), date('Y'))
				),
			),
		),
		'endtime' => array(
			'exclude' => 1,
			'l10n_mode' => 'mergeIfNotBlank',
			'label' => 'LLL:EXT:lang/locallang_general.xlf:LGL.endtime',
			'config' => array(
				'type' => 'input',
				'size' => 13,
				'max' => 20,
				'eval' => 'datetime',
				'checkbox' => 0,
				'default' => 0,
				'range' => array(
					'lower' => mktime(0, 0, 0, date('m'), date('d'), date('Y'))
				),
			),
		),

		'title' => array(
			'l10n_mode' => 'prefixLangTitle',
			'exclude' => 0,
			'label' => 'LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang_db.xlf:tx_ecomtoolbox_domain_model_region.title',
			'config' => array(
				'type' => 'input',
				'size' => 30,
				'eval' => 'trim,required'
			),
		),
		'type' => array(
			'l10n_mode' => 'exclude',
			'exclude' => 1,
			'label' => 'LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang_db.xlf:tx_ecomtoolbox_domain_model_region.type',
			'config' => array(
				'type' => 'select',
				'items' => array(
					array('LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang_db.xlf:tx_ecomtoolbox_domain_model_region.type.I.0', 0),
					array('LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang_db.xlf:tx_ecomtoolbox_domain_model_region.type.I.1', 1)
				),
			),
		),
		'iso_code_a2' => array(
			'l10n_mode' => 'exclude',
			'exclude' => 0,
			'label' => 'LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang_db.xlf:tx_ecomtoolbox_domain_model_region.iso_code_a2',
			'config' => array(
				'type' => 'input',
				'size' => 5,
				'max' => 2,
				'eval' => 'trim,alpha,nospace,upper'
			),
		),
		'iso_code_a3' => array(
			'l10n_mode' => 'exclude',
			'exclude' => 0,
			'label' => 'LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang_db.xlf:tx_ecomtoolbox_domain_model_region.iso_code_a3',
			'config' => array(
				'type' => 'input',
				'size' => 5,
				'max' => 3,
				'eval' => 'trim,alpha,nospace,upper'
			),
		),
		'flag_icon_name' => array(
			'l10n_mode' => 'exclude',
			'exclude' => 1,
			'label' => 'LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang_db.xlf:tx_ecomtoolbox_domain_model_region.flag_icon_name',
			'config' => array(
				'type' => 'input',
				'size' => 20,
				'eval' => 'trim'
			),
		),
		'verified' => array(
			'l10n_mode' => 'exclude',
			'exclude' => 1,
			'label' => 'LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang_db.xlf:tx_ecomtoolbox_domain_model_region.verified',
			'config' => array(
				'type' => 'check',
				'default' => 1
			)
		),
		'countries' => array(
			'l10n_mode' => 'exclude',
			'exclude' => 0,
			'label' => 'LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang_db.xlf:tx_ecomtoolbox_domain_model_region.countries',
			'config' => array(
				'type' => 'select',
				'foreign_table' => 'tx_ecomtoolbox_domain_model_region',
				'foreign_table_where' => 'AND tx_ecomtoolbox_domain_model_region.sys_language_uid IN (-1,0) AND tx_ecomtoolbox_domain_model_region.type=0 AND tx_ecomtoolbox_domain_model_region.deleted=0 ORDER BY tx_ecomtoolbox_domain_model_region.title',
				'size' => 10,
				'maxitems' => 9999,
				'wizards' => array(
					'_VALIGN' => 'middle',
					'suggest' => array(
						'type' => 'suggest',
						'default' => array(
							'searchWholePhrase' => 1
						)
					)
				)
			),
		),
		'territory' => array(
			'l10n_mode' => 'exclude',
			'exclude' => 0,
			'label' => 'LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang_db.xlf:tx_ecomtoolbox_domain_model_region.territory',
			'config' => array(
				'type' => 'select',
				'foreign_table' => 'tx_ecomtoolbox_domain_model_territory',
				'foreign_table_where' => 'AND tx_ecomtoolbox_domain_model_territory.sys_language_uid IN (-1,0) AND tx_ecomtoolbox_domain_model_territory.deleted=0 ORDER BY tx_ecomtoolbox_domain_model_territory.title',
				'minitems' => 1,
				'maxitems' => 1,
				'items' => array(
					array('', 0)
				)
			),
		),

	),
);
