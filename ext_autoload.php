<?php
	$extensionClassesPath = \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::extPath( 'ecom_toolbox' ) . 'Classes/';

	return [
		'TYPO3\CMS\Fluid\ViewHelpers\Format\CaseViewHelper' => $extensionClassesPath . 'ViewHelpers/Format/CaseViewHelper.php',
		'TYPO3\CMS\Fluid\ViewHelpers\Link\TypolinkViewHelper' => $extensionClassesPath . 'ViewHelpers/Link/TypolinkViewHelper.php',
		'TYPO3\CMS\Fluid\ViewHelpers\Uri\TypolinkViewHelper' => $extensionClassesPath . 'ViewHelpers/Uri/TypolinkViewHelper.php',
		'TYPO3\CMS\Fluid\ViewHelpers\Ecom\Format\BytesViewHelper' => $extensionClassesPath . 'ViewHelpers/Ecom/Format/BytesViewHelper.php',
		'TYPO3\CMS\Fluid\ViewHelpers\Ecom\CalculationViewHelper' => $extensionClassesPath . 'ViewHelpers/Ecom/CalculationViewHelper.php',
		'TYPO3\CMS\Fluid\ViewHelpers\Ecom\CheckBitViewHelper' => $extensionClassesPath . 'ViewHelpers/Ecom/CheckBitViewHelper.php',
		'TYPO3\CMS\Fluid\ViewHelpers\Ecom\ExplodeViewHelper' => $extensionClassesPath . 'ViewHelpers/Ecom/ExplodeViewHelper.php',
		'TYPO3\CMS\Fluid\ViewHelpers\Ecom\FileExistsViewHelper' => $extensionClassesPath . 'ViewHelpers/Ecom/FileExistsViewHelper.php',
		'TYPO3\CMS\Fluid\ViewHelpers\Ecom\InArrayViewHelper' => $extensionClassesPath . 'ViewHelpers/Ecom/InArrayViewHelper.php',
		'TYPO3\CMS\Fluid\ViewHelpers\Ecom\IsIntegerViewHelper' => $extensionClassesPath . 'ViewHelpers/Ecom/IsIntegerViewHelper.php',
		'TYPO3\CMS\Fluid\ViewHelpers\Ecom\MakeListViewHelper' => $extensionClassesPath . 'ViewHelpers/Ecom/MakeListViewHelper.php',
		'TYPO3\CMS\Fluid\ViewHelpers\Ecom\NegateViewHelper' => $extensionClassesPath . 'ViewHelpers/Ecom/NegateViewHelper.php',
		'TYPO3\CMS\Fluid\ViewHelpers\Ecom\ParseUrlViewHelper' => $extensionClassesPath . 'ViewHelpers/Ecom/ParseUrlViewHelper.php'
	];