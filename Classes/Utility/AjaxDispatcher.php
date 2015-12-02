<?php
namespace Ecom\EcomToolbox\Utility;

/***************************************************************
 * Copyright notice
 *
 * 2015 Sebastian Iffland <Sebastian.Iffland@ecom-ex.com>, ecom instruments GmbH
 * All rights reserved
 *
 *
 * This script is part of the TYPO3 project. The TYPO3 project is
 * free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * The GNU General Public License can be found at
 * http://www.gnu.org/copyleft/gpl.html.
 *
 * This script is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * This copyright notice MUST APPEAR in all copies of the script!
 ***************************************************************/
use TYPO3\CMS\Core\Utility as CoreUtility;

/**
 * Class AjaxDispatcher
 */
class AjaxDispatcher {

	/**
	 * Array of all request Arguments
	 *
	 * @var array
	 */
	protected $requestArguments = [ ];

	/**
	 * @var \TYPO3\CMS\Extbase\Object\ObjectManager
	 */
	protected $objectManager;

	/**
	 * @var string
	 */
	protected $vendorName;

	/**
	 * @var string
	 */
	protected $extensionName;

	/**
	 * @var string
	 */
	protected $pluginName;

	/**
	 * @var string
	 */
	protected $controllerName;

	/**
	 * @var string
	 */
	protected $actionName;

	/**
	 * default value, have to be defined in subclasses!
	 *
	 * @var string
	 */
	protected $defaultVendorName;

	/**
	 * default value, have to be defined in subclasses!
	 *
	 * @var string
	 */
	protected $defaultExtensionName;

	/**
	 * default value, have to be defined in subclasses!
	 *
	 * @var string
	 */
	protected $defaultPluginName;

	/**
	 * default value, have to be defined in subclasses!
	 *
	 * @var string
	 */
	protected $defaultControllerName;

	/**
	 * default value, have to be defined in subclasses!
	 *
	 * @var string
	 */
	protected $defaultActionName;

	/**
	 * @var array
	 */
	protected $arguments = [ ];

	/**
	 * @var array
	 */
	protected $allowedRequestArguments = [ 'vendorName','extensionName','pluginName','controllerName','actionName','arguments' ];

	/**
	 * @var integer
	 */
	protected $pageUid = 1;

	/**
	 * @var integer
	 */
	protected $language = 0;

	/**
	 * the TS pageType, have to be defined in subclasses!
	 *
	 * @var integer
	 */
	protected $pageType = 0;

	/**
	 * Initializes and dispatches actions
	 *
	 * Call this function if you want to use this dispatcher "standalone"
	 */
	public function initAndDispatch() {
		$this->initCallArguments()->dispatch();
	}

	/**
	 * Called by ajax.php / eID.php
	 * Builds an extbase context and returns the response
	 *
	 * ATTENTION: You should not call this method without initializing the dispatcher. Use initAndDispatch() instead!
	 * @return string
	 */
	public function dispatch() {
		$configuration['extensionName'] = $this->extensionName;
		$configuration['pluginName'] = $this->pluginName;

		/** @var \TYPO3\CMS\Extbase\Core\Bootstrap $bootstrap */
		$bootstrap = CoreUtility\GeneralUtility::makeInstance(\TYPO3\CMS\Extbase\Core\Bootstrap::class);
		$bootstrap->initialize($configuration);

		/** @var \TYPO3\CMS\Extbase\Object\ObjectManager objectManager */
		$this->objectManager = CoreUtility\GeneralUtility::makeInstance(\TYPO3\CMS\Extbase\Object\ObjectManager::class);

		$request = $this->buildRequest();
		/** @var \TYPO3\CMS\Extbase\Mvc\Web\Response $response */
		$response = $this->objectManager->get(\TYPO3\CMS\Extbase\Mvc\Web\Response::class);

		/** @var \TYPO3\CMS\Extbase\Mvc\Dispatcher $dispatcher */
		$dispatcher =  $this->objectManager->get(\TYPO3\CMS\Extbase\Mvc\Dispatcher::class);
		$dispatcher->dispatch($request, $response);
		$response->sendHeaders();
		return $response->getContent();
	}

	/**
	 * @param array $TYPO3_CONF_VARS
	 * @return \Ecom\EcomToolbox\Utility\AjaxDispatcher
	 */
	public function init($TYPO3_CONF_VARS) {
		//define('TYPO3_MODE','FE');
		$this->initCallArguments();

		/** @var \TYPO3\CMS\Frontend\Controller\TypoScriptFrontendController $GLOBALS['TSFE'] */
		$GLOBALS['TSFE'] = \TYPO3\CMS\Core\Utility\GeneralUtility::makeInstance(\TYPO3\CMS\Frontend\Controller\TypoScriptFrontendController::class, $TYPO3_CONF_VARS, null, 0, true);

		$GLOBALS['TSFE']->fe_user = \TYPO3\CMS\Frontend\Utility\EidUtility::initFeUser();
		\TYPO3\CMS\Frontend\Utility\EidUtility::initLanguage();
		$GLOBALS['TSFE']->connectToDB();
		$GLOBALS['TSFE']->initFEuser();
		$GLOBALS['TSFE']->id = $this->pageUid;
		$GLOBALS['TSFE']->sys_language_content = $this->language;
		/** @var \TYPO3\CMS\Frontend\Page\PageRepository sys_page */
		$GLOBALS['TSFE']->sys_page = CoreUtility\GeneralUtility::makeInstance(\TYPO3\CMS\Frontend\Page\PageRepository::class);
		$GLOBALS['TSFE']->sys_page->init($GLOBALS['TSFE']->showHiddenPage);
		########################################################
		$GLOBALS['TSFE']->checkAlternativeIdMethods();
		$GLOBALS['TSFE']->clear_preview();
		$GLOBALS['TSFE']->determineId();
		$GLOBALS['TSFE']->initTemplate();
		$GLOBALS['TSFE']->getConfigArray();
		$GLOBALS['TSFE']->cObj = \TYPO3\CMS\Core\Utility\GeneralUtility::makeInstance(\TYPO3\CMS\Frontend\ContentObject\ContentObjectRenderer::class);
		$GLOBALS['TSFE']->settingLanguage();
		$GLOBALS['TSFE']->settingLocale();

		return $this;
	}

	/**
	 * Build a request object
	 *
	 * @return \TYPO3\CMS\Extbase\Mvc\Web\Request $request
	 */
	protected function buildRequest() {
		/** @var \TYPO3\CMS\Extbase\Mvc\Web\Request $request */
		$request = $this->objectManager->get(\TYPO3\CMS\Extbase\Mvc\Web\Request::class);
		$request->setControllerVendorName($this->vendorName);
		$request->setControllerExtensionName($this->extensionName);
		$request->setPluginName($this->pluginName);
		$request->setControllerName($this->controllerName);
		$request->setControllerActionName($this->actionName);
		$request->setArguments($this->arguments);

		return $request;
	}

	/**
	 * Prepare the call arguments
	 *
	 * @return \Ecom\EcomToolbox\Utility\AjaxDispatcher
	 */
	public function initCallArguments() {
		$request = CoreUtility\GeneralUtility::_GP('request');
		switch (gettype($request)) {
			case 'array':
				$this->setRequestArguments($request);
				break;
			case 'string':
				$this->setRequestArgumentsFromJSON($request);
				break;
			default:
				$this->setRequestArgumentsFromGPvar();
		}

		$this
			->setPageUid(CoreUtility\GeneralUtility::_GP('id') ?: 1)
			->setLanguage(CoreUtility\GeneralUtility::_GP('L') ?: 0)
			->setPageType(CoreUtility\GeneralUtility::_GP('type') ?: 1)
			->setVendorName($this->requestArguments['vendorName'] ?: $this->defaultVendorName)
			->setExtensionName($this->requestArguments['extensionName'] ?: $this->defaultExtensionName)
			->setPluginName($this->requestArguments['pluginName'] ?: $this->defaultPluginName)
			->setControllerName($this->requestArguments['controllerName'] ?: $this->defaultControllerName)
			->setActionName($this->requestArguments['actionName'] ?: $this->defaultActionName)
			->setArguments($this->requestArguments['arguments']);

		return $this;
	}

	/**
	 * Set the request array from JSON
	 *
	 * @param string $request
	 */
	protected function setRequestArgumentsFromJSON($request) {
		$requestArray = json_decode($request, true);
		if(is_array($requestArray)) {
			CoreUtility\ArrayUtility::mergeRecursiveWithOverrule($this->requestArguments, $requestArray);
		}
	}

	/**
	 * Set the request array from the getPost array
	 */
	protected function setRequestArgumentsFromGPvar() {
		foreach($this->allowedRequestArguments as $argument) {
			if(CoreUtility\GeneralUtility::_GP($argument)) $this->requestArguments[$argument] = CoreUtility\GeneralUtility::_GP($argument);
		}
	}

	/**
	 * @param array $requestArguments
	 */
	public function setRequestArguments(array $requestArguments) {
		foreach($this->allowedRequestArguments as $argument) {
			if($requestArguments[$argument]) $this->requestArguments[$argument] = $requestArguments[$argument];
		}
	}

	/**
	 * @param string $vendorName
	 * @return \Ecom\EcomToolbox\Utility\AjaxDispatcher
	 */
	public function setVendorName($vendorName) {
		$this->vendorName = $vendorName;
		return $this;
	}

	/**
	 * @param  string $extensionName
	 * @return \Ecom\EcomToolbox\Utility\AjaxDispatcher
	 *
	 * @throws \Exception
	 */
	public function setExtensionName($extensionName) {
		if(!$extensionName) throw new \Exception('No extension name set for extbase request.', 1327583056);

		$this->extensionName = $extensionName;
		return $this;
	}

	/**
	 * @param string $pluginName
	 * @return \Ecom\EcomToolbox\Utility\AjaxDispatcher
	 */
	public function setPluginName($pluginName) {
		$this->pluginName = $pluginName;
		return $this;
	}

	/**
	 * @param string $controllerName
	 * @return \Ecom\EcomToolbox\Utility\AjaxDispatcher
	 */
	public function setControllerName($controllerName) {
		$this->controllerName = $controllerName;
		return $this;
	}

	/**
	 * @param string $actionName
	 * @return \Ecom\EcomToolbox\Utility\AjaxDispatcher
	 */
	public function setActionName($actionName) {
		$this->actionName = $actionName;
		return $this;
	}

	/**
	 * @param int $pageUid
	 * @return \Ecom\EcomToolbox\Utility\AjaxDispatcher
	 */
	public function setPageUid($pageUid) {
		$this->pageUid = CoreUtility\MathUtility::canBeInterpretedAsInteger($pageUid) ? CoreUtility\MathUtility::convertToPositiveInteger($pageUid) : 1;
		return $this;
	}

	/**
	 * @param int $language
	 * @return \Ecom\EcomToolbox\Utility\AjaxDispatcher
	 */
	public function setLanguage($language) {
		$this->language = $language;
		return $this;
	}

	/**
	 * @param int $pageType
	 * @return \Ecom\EcomToolbox\Utility\AjaxDispatcher
	 */
	public function setPageType($pageType) {
		$this->pageType = $pageType;
		return $this;
	}

	/**
	 * @param array $arguments
	 * @return \Ecom\EcomToolbox\Utility\AjaxDispatcher
	 */
	public function setArguments($arguments) {
		$this->arguments = is_array($arguments) ? $arguments : [ ];
		return $this;
	}

}

?>