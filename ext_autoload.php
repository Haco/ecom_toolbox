<?php
	$extensionClassesPath = \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::extPath('ecom_toolbox') . 'Classes/';

	return array(
		'TYPO3\CMS\Fluid\ViewHelpers\Link\TypolinkViewHelper' => $extensionClassesPath . 'ViewHelpers/Link/TypolinkViewHelper.php',
		'TYPO3\CMS\Fluid\ViewHelpers\Ecom\Format\BytesViewHelper' => $extensionClassesPath . 'ViewHelpers/Ecom/Format/BytesViewHelper.php'
	);