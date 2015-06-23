<?php
defined('TYPO3_MODE') or die();

\TYPO3\CMS\Core\Utility\ArrayUtility::mergeRecursiveWithOverrule(
	$GLOBALS['TCA']['sys_file_reference']['columns'],
	[
		'hideinpost' => [
			'label' => 'Hide in blog post?',
			'l10n_mode' => 'exclude',
			'config' => [
				'type' => 'check',
				'default' => 0
			]
		]
	]
);

$GLOBALS['TCA']['sys_file_reference']['palettes']['newsPalette']['showitem'] .= ',hideinpost';
