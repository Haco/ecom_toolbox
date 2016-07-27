<?php

/***************************************************************
 * Extension Manager/Repository config file for ext: "ecom_toolbox"
 *
 * Auto generated by Extension Builder 2015-04-14
 *
 * Manual updates:
 * Only the data in the array - anything else is removed by next write.
 * "version" and "dependencies" must not be touched!
 ***************************************************************/

$EM_CONF[ 'ecom_toolbox' ] = [
	'title' => 'ecom Toolbox',
	'description' => 'Provides useful tools for and from ecom.',
	'category' => 'plugin',
	'author' => 'Nicolas Scheidler, Sebastian Iffland',
	'author_email' => 'Nicolas.Scheidler@ecom-ex.com',
	'state' => 'stable',
	'internal' => '',
	'uploadfolder' => '0',
	'createDirs' => '',
	'clearCacheOnLoad' => 0,
	'version' => '2.0.7',
	'constraints' => [
		'depends' => [
			'typo3' => '6.2-7.6.99',
			'php' => '5.6',
			'news' => '4.0.0-4.2.99'
		],
		'conflicts' => [],
		'suggests' => [
            'dd_googlesitemap' => '2.0.4-2.0.99',
			'cb_newscal' => ''
		]
	]
];
