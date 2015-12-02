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
 * An abstract repository
 */
class AbstractRepository extends \TYPO3\CMS\Extbase\Persistence\Repository {

	/**
	 * @param string $labelField
	 *
	 * @return \Ecom\EcomToolbox\Domain\Repository\AbstractRepository
	 */
	public function jsonRequestSetOrderingByAlphabet($labelField = 'title') {
		$this->setDefaultOrderings([ $labelField => \TYPO3\CMS\Extbase\Persistence\QueryInterface::ORDER_ASCENDING ]);

		return $this;
	}

	/**
	 * @return \Ecom\EcomToolbox\Domain\Repository\AbstractRepository
	 */
	public function ignoreStoragePidAndSysLanguageUid() {
		/** @var \TYPO3\CMS\Extbase\Persistence\Generic\QuerySettingsInterface $querySettings */
		$querySettings = $this->objectManager->get(\TYPO3\CMS\Extbase\Persistence\Generic\QuerySettingsInterface::class);
		$querySettings
			->setRespectStoragePage(false)  // Disable storage pid
			->setRespectSysLanguage(false); // Disable sys_language
		$this->setDefaultQuerySettings($querySettings);

		return $this;
	}

	/**
	 * @return \Ecom\EcomToolbox\Domain\Repository\AbstractRepository
	 */
	public function ignoreStoragePid() {
		/** @var \TYPO3\CMS\Extbase\Persistence\Generic\QuerySettingsInterface $querySettings */
		$querySettings = $this->objectManager->get(\TYPO3\CMS\Extbase\Persistence\Generic\QuerySettingsInterface::class);
		$querySettings->setRespectStoragePage(false); // Disable storage pid
		$this->setDefaultQuerySettings($querySettings);

		return $this;
	}

	/**
	 * @return \Ecom\EcomToolbox\Domain\Repository\AbstractRepository
	 */
	public function ignoreSysLanguageUid() {
		/** @var \TYPO3\CMS\Extbase\Persistence\Generic\QuerySettingsInterface $querySettings */
		$querySettings = $this->objectManager->get(\TYPO3\CMS\Extbase\Persistence\Generic\QuerySettingsInterface::class);
		$querySettings->setRespectSysLanguage(false); // Disable sys_language
		$this->setDefaultQuerySettings($querySettings);

		return $this;
	}

	/**
	 * @return void
	 */
	public function ignoreStoragePidAndSysLanguageUidOnQuery(\TYPO3\CMS\Extbase\Persistence\QueryInterface &$query) {
		$query->setQuerySettings( $query->getQuerySettings()->setRespectStoragePage( false )->setRespectSysLanguage( false ) );
	}

	/**
	 * @return void
	 */
	public function ignoreStoragePidOnQuery(\TYPO3\CMS\Extbase\Persistence\QueryInterface &$query) {
		$query->setQuerySettings( $query->getQuerySettings()->setRespectStoragePage( false ) );
	}

	/**
	 * @return void
	 */
	public function ignoreSysLanguageUidOnQuery(\TYPO3\CMS\Extbase\Persistence\QueryInterface &$query) {
		$query->setQuerySettings( $query->getQuerySettings()->setRespectSysLanguage( false ) );
	}

	/**
	 * @param string $list
	 * @param array  $storagePids
	 *
	 * @return array|\TYPO3\CMS\Extbase\Persistence\QueryResultInterface
	 */
	public function findByUidList($list, array $storagePids = [ ]) {
		$query = $this->createQuery();
		$query->setQuerySettings( $query->getQuerySettings()->setRespectSysLanguage( false )->setStoragePageIds( $storagePids ) );

		return $query->matching(
			$query->in('uid', \TYPO3\CMS\Core\Utility\GeneralUtility::intExplode(',', $list, true))
		)->execute();
	}

	/**
	 * @param string $property
	 * @param string $lookUp
	 *
	 * @return array|\TYPO3\CMS\Extbase\Persistence\QueryResultInterface
	 */
	public function findSimilarByProperty($property, $lookUp) {
		$query = $this->createQuery();
		$query->setQuerySettings( $query->getQuerySettings()->setRespectStoragePage( false ) );

		return $query->matching(
			$query->logicalOr([
				$query->equals($property, $lookUp, false),
				$query->like($property, '%' . $lookUp . '%', false),
				$query->like($property, '%' . $lookUp, false),
				$query->like($property, $lookUp . '%', false)
			])
		)->execute();
	}
}