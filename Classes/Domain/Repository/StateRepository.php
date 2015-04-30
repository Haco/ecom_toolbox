<?php
namespace Ecom\EcomToolbox\Domain\Repository;


/***************************************************************
 *
 *  Copyright notice
 *
 *  (c) 2015 Nicolas Scheidler <Nicolas.Scheidler@ecom-ex.com>, ecom instruments GmbH
 *           Sebastian Iffland <sebastian.iffland@ecom-ex.com>, ecom instruments GmbH
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

/**
 * The repository for States
 */
class StateRepository extends \Ecom\EcomToolbox\Domain\Repository\AbstractRepository {

	/**
	 * @var array
	 */
	protected $defaultOrderings = [
		'country.title' => \TYPO3\CMS\Extbase\Persistence\QueryInterface::ORDER_ASCENDING,
		'title' => \TYPO3\CMS\Extbase\Persistence\QueryInterface::ORDER_ASCENDING
	];

	/**
	 * Set repository wide settings
	 */
	public function initializeObject() {
		/** @var \TYPO3\CMS\Extbase\Persistence\Generic\QuerySettingsInterface $querySettings */
		$querySettings = $this->objectManager->get('TYPO3\\CMS\\Extbase\\Persistence\\Generic\\QuerySettingsInterface');
		$querySettings->setRespectStoragePage(FALSE); // Disable storage pid
		$this->setDefaultQuerySettings($querySettings);
	}

	/**
	 * findByAbbreviation
	 *
	 * @param string $abbreviation
	 *
	 * @return array|\TYPO3\CMS\Extbase\Persistence\QueryResultInterface
	 */
	public function findByAbbreviation($abbreviation = '') {
		$query = $this->createQuery();

		$result = $query->matching(
			$query->equals('abbreviation', $abbreviation)
		)->execute();

		if ($result instanceof \TYPO3\CMS\Extbase\Persistence\QueryResultInterface) {
			return $result;
		} else {
			/**
			 * Alternately check for title matching
			 */
			return $query->matching(
				$query->equals('title', $abbreviation)
			)->execute();
		}
	}

	/**
	 * findOneByAbbreviation
	 *
	 * @param string $abbreviation
	 *
	 * @return null|object
	 */
	public function findOneByAbbreviation($abbreviation = '') {
		$query = $this->createQuery();

		$result = $query->matching(
			$query->equals('abbreviation', $abbreviation)
		)->setLimit(1)->execute();

		if ($result instanceof \TYPO3\CMS\Extbase\Persistence\QueryResultInterface) {
			return $result->getFirst();
		} else {
			/**
			 * Alternately check for title matching
			 */
			$result = $query->matching(
				$query->equals('title', $abbreviation)
			)->setLimit(1)->execute();
		}

		if ($result instanceof \TYPO3\CMS\Extbase\Persistence\QueryResultInterface) {
			return $result->getFirst();
		} else {
			return NULL;
		}
	}

}