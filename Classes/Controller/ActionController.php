<?php
namespace Ecom\EcomToolbox\Controller;


/***************************************************************
 *
 *  Copyright notice
 *
 *  (c) 2014 Sebastian Iffland <Sebastian.Iffland@ecom-ex.com>, ecom instruments GmbH
 *
 *  All rights reserved
 *
 *  This script is part of the TYPO3 project. The TYPO3 project is
 *  free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  The GNU General Public License can be found at
 *  http://www.gnu.org/copyleft/gpl.html.
 *
 *  This script is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  This copyright notice MUST APPEAR in all copies of the script!
 ***************************************************************/
use TYPO3\CMS\Extbase\Utility\LocalizationUtility;

/**
 * Class ActionController
 */
class ActionController extends \TYPO3\CMS\Extbase\Mvc\Controller\ActionController {

	const MALE_ARTICLE = 'm';
	const FEMALE_ARTICLE = 'f';
	const NEUTER_ARTICLE = 'n';

	/**
	 * This action is for lazy programmers who don't want write the NULL values
	 * for extension and Controller all time (minimized arguments)
	 *
	 * @param string $action
	 * @param array  $arguments
	 * @param int    $pid
	 * @param int    $statusCode
	 *
	 * @throws \TYPO3\CMS\Extbase\Mvc\Exception\UnsupportedRequestTypeException
	 */
	public function internalRedirect($action, array $arguments = NULL, $pid = NULL, $statusCode = 303) {
		$this->redirect($action, NULL, NULL, $arguments, $pid, 0, $statusCode);
	}

	/**
	 * Assign an object to fluid
	 *
	 * @param \TYPO3\CMS\Extbase\DomainObject\AbstractDomainObject $abstractDomainObject
	 */
	public function assignFluidObject(\TYPO3\CMS\Extbase\DomainObject\AbstractDomainObject $abstractDomainObject) {
		$reflect = new \ReflectionClass($abstractDomainObject);
		$this->view->assign(lcfirst($reflect->getShortName()), $abstractDomainObject);
	}

	/**
	 * @param \TYPO3\CMS\Extbase\DomainObject\AbstractDomainObject $abstractDomainObject
	 * @param string                                               $message
	 * @param int                                                  $severity
	 * @param string                                               $translateArticle
	 * @param boolean                                              $addFlashMessage
	 */
	public function createRecord(\TYPO3\CMS\Extbase\DomainObject\AbstractDomainObject $abstractDomainObject, $message = '', $severity = \TYPO3\CMS\Core\Messaging\AbstractMessage::OK, $translateArticle = ActionController::NEUTER_ARTICLE, $addFlashMessage = FALSE) {
		$reflect = new \ReflectionClass($abstractDomainObject);
		$repository = lcfirst($reflect->getShortName()) . 'Repository';
		if ( $addFlashMessage )
			$this->addFlashMessage($message ?: LocalizationUtility::translate($translateArticle . '.record_created', 'ecom_toolbox', [ $reflect->getShortName() ]), '', $severity);
		$this->{$repository}->add($abstractDomainObject);
	}

	/**
	 * @param \TYPO3\CMS\Extbase\DomainObject\AbstractDomainObject $abstractDomainObject
	 * @param string                                               $message
	 * @param int                                                  $severity
	 * @param string                                               $translateArticle
	 * @param boolean                                              $addFlashMessage
	 */
	public function updateRecord(\TYPO3\CMS\Extbase\DomainObject\AbstractDomainObject $abstractDomainObject, $message = '', $severity = \TYPO3\CMS\Core\Messaging\AbstractMessage::OK, $translateArticle = ActionController::NEUTER_ARTICLE, $addFlashMessage = FALSE) {
		$reflect = new \ReflectionClass($abstractDomainObject);
		$repository = lcfirst($reflect->getShortName()) . 'Repository';
		if ( $addFlashMessage )
			$this->addFlashMessage($message ?: LocalizationUtility::translate($translateArticle . '.record_updated', 'ecom_toolbox', [ $reflect->getShortName(), $abstractDomainObject->_hasProperty('title') ? $abstractDomainObject->_getProperty('title') : $abstractDomainObject->__toString() ]), '', $severity);
		$this->{$repository}->update($abstractDomainObject);
	}

	/**
	 * @param \TYPO3\CMS\Extbase\DomainObject\AbstractDomainObject $abstractDomainObject
	 * @param string                                               $message
	 * @param int                                                  $severity
	 * @param string                                               $translateArticle
	 * @param boolean                                              $addFlashMessage
	 */
	public function deleteRecord(\TYPO3\CMS\Extbase\DomainObject\AbstractDomainObject $abstractDomainObject, $message = '', $severity = \TYPO3\CMS\Core\Messaging\AbstractMessage::ERROR, $translateArticle = ActionController::NEUTER_ARTICLE, $addFlashMessage = FALSE) {
		$reflect = new \ReflectionClass($abstractDomainObject);
		$repository = lcfirst($reflect->getShortName()) . 'Repository';
		if ( $addFlashMessage )
			$this->addFlashMessage($message ?: LocalizationUtility::translate($translateArticle . '.record_deleted', 'ecom_toolbox', [ $reflect->getShortName(), $abstractDomainObject->_hasProperty('title') ? $abstractDomainObject->_getProperty('title') : $abstractDomainObject->__toString() ]), '', $severity);
		$this->{$repository}->remove($abstractDomainObject);
	}
}