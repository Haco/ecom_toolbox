<?php
\TYPO3\CMS\Core\Utility\ArrayUtility::mergeRecursiveWithOverrule(
	$GLOBALS['TCA']['tx_news_domain_model_news']['columns'],
	[
		'ecom_event_host' => [
			'label' => 'Event Host',
			'l10n_mode' => 'exclude',
			'l10n_display' => 'defaultAsReadonly',
			'config' => [
				'type' => 'input',
				'eval' => 'trim',
				'size' => '13'
			]
		],

		'ecom_event_consultants' => [
			'label' => 'Consultants',
			'l10n_mode' => 'exclude',
			'l10n_display' => 'defaultAsReadonly',
			'config' => [
				'type' => 'text',
				'eval' => 'trim',
				'rows' => '4',
				'cols' => '31'
			]
		],

		'ecom_event_website' => [
			'label' => 'Official Website',
			'l10n_mode' => 'exclude',
			'l10n_display' => 'defaultAsReadonly',
			'config' => [
				'type' => 'input',
				'size' => '13',
				'eval' => 'trim',
				'wizards' => [
					'_PADDING' => 2,
					'link' => [
						'type' => 'popup',
						'title' => 'LLL:EXT:cms/locallang_ttc.xml:header_link_formlabel',
						'icon' => 'link_popup.gif',
						'module' => [
							'name' => 'wizard_element_browser',
							'urlParameters' => [ 'mode' => 'wizard' ]
						],
						'JSopenParams' => 'height=500,width=700,status=0,menubar=0,scrollbars=1',
						'params' => [ 'blindLinkOptions' => 'file, folder, mail, spec' ]
					],
				],
				'softref' => 'typolink'
			]
		],

		'ecom_eventdate' => [
			'exclude' => 0,
			'label' => 'ecom Event Date',
			'config' => [
				'type' => 'input',
				'eval' => 'datetime',
				'size' => 10
			]
		],

		'ecom_event_end' => [
			'exclude' => 0,
			'l10n_mode' => 'exclude',
			'l10n_display' => 'defaultAsReadonly',
			'label' => 'ecom Event End',
			'config' => [
				'type' => 'input',
				'eval' => 'datetime',
				'size' => 10
			]
		],

		'ecom_event_open_from' => [
			'exclude' => 0,
			'l10n_mode' => 'exclude',
			'l10n_display' => 'defaultAsReadonly',
			'label' => 'Open from',
			'config' => [
				'type' => 'input',
				'eval' => 'time',
				'size' => 4
			]
		],

		'ecom_event_open_till' => [
			'exclude' => 0,
			'l10n_mode' => 'exclude',
			'l10n_display' => 'defaultAsReadonly',
			'label' => 'Open till',
			'config' => [
				'type' => 'input',
				'eval' => 'time',
				'size' => 4
			]
		],

		'ecom_event_booth' => [
			'label' => 'Hall, Booth/Stand',
			'l10n_mode' => 'exclude',
			'l10n_display' => 'defaultAsReadonly',
			'config' => [
				'type' => 'input',
				'eval' => 'trim',
				'size' => 12
			]
		],

		'ecom_event_country' => [
			'label' => 'Country',
			'l10n_mode' => 'exclude',
			'l10n_display' => 'defaultAsReadonly',
			'config' => [
				'type' => 'select',
				'cols' => 15,
				'foreign_table' => 'tx_ecomtoolbox_domain_model_region',
				'items' => [
					[ '','' ]
				]
			]
		],

		'ecom_event_city' => [
			'label' => 'City',
			'l10n_mode' => 'exclude',
			'l10n_display' => 'defaultAsReadonly',
			'config' => [
				'type' => 'input',
				'size' => 12,
				'eval' => 'trim'
			]
		],

		'ecom_event_address' => [
			'label' => 'Address',
			'l10n_mode' => 'exclude',
			'l10n_display' => 'defaultAsReadonly',
			'config' => [
				'type' => 'text',
				'eval' => 'trim'
			]
		],

		'ecom_event_industries' => [
			'label' => 'Industries / Topic',
			'l10n_mode' => 'exclude',
			'l10n_display' => 'defaultAsReadonly',
			'config' => [
				'type' => 'check',
				'items' => [
					[ 'LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang.xlf:event.industries.I.0', 0 ],
					[ 'LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang.xlf:event.industries.I.1', 1 ],
					[ 'LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang.xlf:event.industries.I.2', 2 ],
					[ 'LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang.xlf:event.industries.I.3', 3 ],
					[ 'LLL:EXT:ecom_toolbox/Resources/Private/Language/locallang.xlf:event.industries.I.4', 4 ],
				]
			],
		],

		'ecom_event_industries_custom' => [
			'label' => 'Custom Industries (Comma separated)',
			'l10n_mode' => 'mergeIfNotBlank',
			'config' => [
				'type' => 'text',
				'eval' => 'trim'
			],
		],

		'ecom_event_settings' => [
			'label' => 'Event Options',
			'l10n_mode' => 'exclude',
			'l10n_display' => 'defaultAsReadonly',
			'config' => [
				'type' => 'check',
				'items' => [
					[ 'Hide Info box in Blog entry' ],
					[ 'Hide Google Maps Link' ]
				],
				'default' => 0
			]
		]
	]
);

// Custom Palettes
\TYPO3\CMS\Core\Utility\ArrayUtility::mergeRecursiveWithOverrule(
	$GLOBALS['TCA']['tx_news_domain_model_news']['palettes'],
	[
		'ecom_event_contact' => [ 'showitem' => 'ecom_event_host,ecom_event_website,--linebreak--,ecom_event_consultants', 'canNotCollapse' => 1 ],
		'ecom_event_dates' => [ 'showitem' => 'ecom_eventdate,ecom_event_end', 'canNotCollapse' => 1 ],
		'ecom_event_daily_openings' => [ 'showitem' => 'ecom_event_open_from,ecom_event_open_till', 'canNotCollapse' => 1 ],
		'ecom_event_location' => [ 'showitem' => 'ecom_event_booth,--linebreak--,ecom_event_country,ecom_event_city,--linebreak--,ecom_event_address', 'canNotCollapse' => 1 ],
		'ecom_event_topic' => [ 'showitem' => 'ecom_event_industries,--linebreak--,ecom_event_industries_custom', 'canNotCollapse' => 1 ]
	]
);

// Adds the event field to ext:news TCA palettes
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addToAllTCAtypes('tx_news_domain_model_news', '--div--;ecom Event,ecom_event_settings,--palette--;Event Contact;ecom_event_contact,--palette--;Event Dates;ecom_event_dates,--palette--;Event Daily Openings;ecom_event_daily_openings,--palette--;Event Location;ecom_event_location,--palette--;Event Topic;ecom_event_topic');