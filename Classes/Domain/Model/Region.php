<?php
namespace Ecom\EcomToolbox\Domain\Model;


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
 * Region
 */
class Region extends \TYPO3\CMS\Extbase\DomainObject\AbstractEntity {

	/**
	 * @var string
	 * @validate Ecom\EcomToolbox\Validation\Validator\NotEmpty
	 */
	protected $title = '';

	/**
	 * define record type as follows:
	 * 0 -> Country (default)
	 * 1 -> Region
	 *
	 * @var int
	 * @validate $mode Ecom\EcomToolbox\Validation\Validator\InList(list="0,1")
	 */
	protected $type = 0;

	/**
	 * @var string
	 */
	protected $isoCodeA2 = '';

	/**
	 * @var string
	 */
	protected $isoCodeA3 = '';

	/**
	 * @var bool
	 */
	protected $verified = false;

	/**
	 * @var string
	 */
	protected $flagIconName = '';

	/**
	 * @var \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\Ecom\EcomToolbox\Domain\Model\Region>
	 */
	protected $countries = null;

	/**
	 * @var \Ecom\EcomToolbox\Domain\Model\Territory
	 * @validate Ecom\EcomToolbox\Validation\Validator\NotEmpty
	 */
	protected $territory = null;

	/**
	 * __construct
	 */
	public function __construct() {
		//Do not remove the next line: It would break the functionality
		$this->initStorageObjects();
	}

	/**
	 * Initializes all ObjectStorage properties
	 *
	 * @return void
	 */
	protected function initStorageObjects() {
		$this->countries = new \TYPO3\CMS\Extbase\Persistence\ObjectStorage();
	}

	/**
	 * @return string $title
	 */
	public function getTitle() {
		return $this->title;
	}

	/**
	 * @param string $title
	 * @return void
	 */
	public function setTitle($title) {
		$this->title = $title;
	}

	/**
	 * @return int
	 */
	public function getType() {
		return $this->type;
	}

	/**
	 * @param int $type
	 * @return void
	 */
	public function setType($type) {
		$this->type = $type;
	}

	/**
	 * @return string $isoCodeA2
	 */
	public function getIsoCodeA2() {
		return $this->isoCodeA2;
	}

	/**
	 * @param string $isoCodeA2
	 * @return void
	 */
	public function setIsoCodeA2($isoCodeA2) {
		$this->isoCodeA2 = strtoupper($isoCodeA2);
	}

	/**
	 * @return string $isoCodeA3
	 */
	public function getIsoCodeA3() {
		return $this->isoCodeA3;
	}

	/**
	 * @param string $isoCodeA3
	 * @return void
	 */
	public function setIsoCodeA3($isoCodeA3) {
		$this->isoCodeA3 = strtoupper($isoCodeA3);
	}

	/**
	 * @return bool $verified
	 */
	public function isVerified() {
		return $this->verified;
	}

	/**
	 * @param bool $verified
	 * @return void
	 */
	public function setVerified($verified) {
		$this->verified = $verified;
	}

	/**
	 * @return string $flagIconName -> localized
	 */
	public function getFlagIconName() {
		if ( $this->_languageUid ) {
			/** @var \TYPO3\CMS\Core\Database\DatabaseConnection $db */
			$db = $GLOBALS['TYPO3_DB'];
			/** @var \TYPO3\CMS\Frontend\ContentObject\ContentObjectRenderer $contentObjectRenderer */
			$contentObjectRenderer = \TYPO3\CMS\Core\Utility\GeneralUtility::makeInstance(\TYPO3\CMS\Frontend\ContentObject\ContentObjectRenderer::class);
			/**
			 * Fetch default translation, since fallback is not requested
			 * @var array $originalRecord
			 */
			if ( $originalRecord = $db->exec_SELECTgetSingleRow('flag_icon_name,title', 'tx_ecomtoolbox_domain_model_region', 'uid=' . $this->uid . $contentObjectRenderer->enableFields('tx_ecomtoolbox_domain_model_region')) ) {
				return $this->flagIconName ?: ($originalRecord['flag_icon_name'] ?: $originalRecord['title']);
			}
		}

		return $this->flagIconName ?: $this->title;
	}

	/**
	 * @param string $flagIconName
	 * @return void
	 */
	public function setFlagIconName($flagIconName) {
		$this->flagIconName = $flagIconName;
	}

	/**
	 * @param \Ecom\EcomToolbox\Domain\Model\Region $country
	 * @return void
	 */
	public function addCountry(\Ecom\EcomToolbox\Domain\Model\Region $country) {
		if ( $country->getType() === 0 ) {
			$this->countries->attach($country);
		}
	}

	/**
	 * @param \Ecom\EcomToolbox\Domain\Model\Region $countryToRemove The Country to be removed
	 * @return void
	 */
	public function removeCountry(\Ecom\EcomToolbox\Domain\Model\Region $countryToRemove) {
		$this->countries->detach($countryToRemove);
	}

	/**
	 * @return \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\Ecom\EcomToolbox\Domain\Model\Region> $countries
	 */
	public function getCountries() {
		return $this->countries;
	}

	/**
	 * @param \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\Ecom\EcomToolbox\Domain\Model\Region> $countries
	 * @return void
	 */
	public function setCountries(\TYPO3\CMS\Extbase\Persistence\ObjectStorage $countries = null) {
		if ( $countries instanceof \TYPO3\CMS\Extbase\Persistence\ObjectStorage && $countries->count() ) {
			/** @var \Ecom\EcomToolbox\Domain\Model\Region $country */
			foreach ( $countries as $country ) {
				if ( $country->getType() === 0 ) {
					$this->addCountry($country);
				}
			}
		}
	}

	/**
	 * @return \Ecom\EcomToolbox\Domain\Model\Territory $territory
	 */
	public function getTerritory() {
		return $this->territory;
	}

	/**
	 * @param \Ecom\EcomToolbox\Domain\Model\Territory $territory
	 * @return void
	 */
	public function setTerritory(\Ecom\EcomToolbox\Domain\Model\Territory $territory) {
		$this->territory = $territory;
	}

}