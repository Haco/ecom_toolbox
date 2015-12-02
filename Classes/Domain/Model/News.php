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
 * News
 */
class News extends \GeorgRinger\News\Domain\Model\News {

	/**
	 * Custom Name for the event (ONLY for usage in the calendar)
	 *
	 * @var \string
	 */
	protected $ecomEventName = '';

	/**
	 * @var \string
	 */
	protected $ecomEventHost = '';

	/**
	 * @var \string
	 */
	protected $ecomEventConsultants = '';

	/**
	 * @var \string
	 */
	protected $ecomEventWebsite = '';

	/**
	 * @var \DateTime
	 */
	protected $ecomEventDate = null;

	/**
	 * @var \DateTime
	 */
	protected $ecomEventEnd = null;

	/**
	 * @var \DateTime
	 */
	protected $ecomEventOpenFrom = null;

	/**
	 * @var \DateTime
	 */
	protected $ecomEventOpenTill = null;

	/**
	 * @var string
	 */
	protected $ecomEventBooth = '';

	/**
	 * @var \Ecom\EcomToolbox\Domain\Model\Region
	 */
	protected $ecomEventCountry = null;

	/**
	 * @var \Ecom\EcomToolbox\Domain\Model\State
	 */
	protected $ecomEventState = null;

	/**
	 * @var string
	 */
	protected $ecomEventZip = '';

	/**
	 * @var string
	 */
	protected $ecomEventCity = '';

	/**
	 * @var string
	 */
	protected $ecomEventAddress = '';

	/**
	 * @var string
	 */
	protected $ecomEventMapsLocation = '';

	/**
	 * @var int
	 */
	protected $ecomEventIndustries = 0;

	/**
	 * @var string
	 */
	protected $ecomEventIndustriesCustom = '';

	/**
	 * @var int
	 */
	protected $ecomEventSettings = 0;

	/**
	 * @var int
	 */
	protected $ecomBlogpostVisits = 0;

	/**
	 * @return string $ecomEventName
	 */
	public function getEcomEventName() {
		return $this->ecomEventName;
	}

	/**
	 * @param string $ecomEventName
	 * @return void
	 */
	public function setEcomEventName($ecomEventName) {
		$this->ecomEventName = $ecomEventName;
	}

	/**
	 * @return string $ecomEventHost
	 */
	public function getEcomEventHost() {
		return $this->ecomEventHost;
	}

	/**
	 * @param string $ecomEventHost
	 * @return void
	 */
	public function setEcomEventHost($ecomEventHost) {
		$this->ecomEventHost = $ecomEventHost;
	}

	/**
	 * @return string $ecomEventConsultants
	 */
	public function getEcomEventConsultants() {
		return $this->ecomEventConsultants;
	}

	/**
	 * @param string $ecomEventConsultants
	 * @return void
	 */
	public function setEcomEventConsultants($ecomEventConsultants) {
		$this->ecomEventConsultants = $ecomEventConsultants;
	}

	/**
	 * @return string $ecomEventWebsite
	 */
	public function getEcomEventWebsite() {
		return $this->ecomEventWebsite;
	}

	/**
	 * @param string $ecomEventWebsite
	 * @return void
	 */
	public function setEcomEventWebsite($ecomEventWebsite) {
		$this->ecomEventWebsite = $ecomEventWebsite;
	}

	/**
	 * @return \DateTime $ecomEventDate
	 */
	public function getEcomEventDate() {
		return $this->ecomEventDate;
	}

	/**
	 * @param \DateTime $ecomEventDate
	 * @return void
	 */
	public function setEcomEventDate($ecomEventDate) {
		$this->ecomEventDate = $ecomEventDate;
	}

	/**
	 * @return \DateTime $ecomEventEnd
	 */
	public function getEcomEventEnd() {
		return $this->ecomEventEnd;
	}

	/**
	 * @param \DateTime $ecomEventEnd
	 * @return void
	 */
	public function setEcomEventEnd($ecomEventEnd) {
		$this->ecomEventEnd = $ecomEventEnd;
	}

	/**
	 * @return \DateTime $ecomEventOpenFrom
	 */
	public function getEcomEventOpenFrom() {
		return $this->ecomEventOpenFrom;
	}

	/**
	 * @param \DateTime $ecomEventOpenFrom
	 * @return void
	 */
	public function setEcomEventOpenFrom($ecomEventOpenFrom) {
		$this->ecomEventOpenFrom = $ecomEventOpenFrom;
	}

	/**
	 * @return \DateTime $ecomEventOpenTill
	 */
	public function getEcomEventOpenTill() {
		return $this->ecomEventOpenTill;
	}

	/**
	 * @param \DateTime $ecomEventOpenTill
	 * @return void
	 */
	public function setEcomEventOpenTill($ecomEventOpenTill) {
		$this->ecomEventOpenTill = $ecomEventOpenTill;
	}

	/**
	* @return string $ecomEventBooth
	*/
	public function getEcomEventBooth() {
		return $this->ecomEventBooth;
	}

	/**
	 * @param string $ecomEventBooth
	 * @return void
	 */
	public function setEcomEventBooth($ecomEventBooth) {
		$this->ecomEventBooth = $ecomEventBooth;
	}

	/**
	 * @return \Ecom\EcomToolbox\Domain\Model\Region
	 */
	public function getEcomEventCountry() {
		return $this->ecomEventCountry;
	}

	/**
	 * @param \Ecom\EcomToolbox\Domain\Model\Region $ecomEventCountry
	 * @return void
	 */
	public function setEcomEventCountry(\Ecom\EcomToolbox\Domain\Model\Region $ecomEventCountry = null) {
		$this->ecomEventCountry = $ecomEventCountry;
	}

	/**
	 * @return \Ecom\EcomToolbox\Domain\Model\State
	 */
	public function getEcomEventState() {
		return $this->ecomEventState;
	}

	/**
	 * @param \Ecom\EcomToolbox\Domain\Model\State $ecomEventState
	 * @return void
	 */
	public function setEcomEventState(\Ecom\EcomToolbox\Domain\Model\State $ecomEventState = null) {
		$this->ecomEventState = $ecomEventState;
	}

	/**
	 * @return string $ecomEventZip
	 */
	public function getEcomEventZip() {
		return $this->ecomEventZip;
	}

	/**
	 * @param string $ecomEventZip
	 * @return void
	 */
	public function setEcomEventZip($ecomEventZip) {
		$this->ecomEventZip = $ecomEventZip;
	}

	/**
	 * @return string $ecomEventCity
	 */
	public function getEcomEventCity() {
		return $this->ecomEventCity;
	}

	/**
	 * @param string $ecomEventCity
	 * @return void
	 */
	public function setEcomEventCity($ecomEventCity) {
		$this->ecomEventCity = $ecomEventCity;
	}

	/**
	 * @return string $ecomEventAddress
	 */
	public function getEcomEventAddress() {
		return $this->ecomEventAddress;
	}

	/**
	 * @param string $ecomEventAddress
	 * @return void
	 */
	public function setEcomEventAddress($ecomEventAddress) {
		$this->ecomEventAddress = $ecomEventAddress;
	}

	/**
	 * @return string $ecomEventMapsLocation
	 */
	public function getEcomEventMapsLocation() {
		return $this->ecomEventMapsLocation;
	}

	/**
	 * @param string $ecomEventMapsLocation
	 * @return void
	 */
	public function setEcomEventMapsLocation($ecomEventMapsLocation) {
		$this->ecomEventMapsLocation = $ecomEventMapsLocation;
	}

	/**
	 * @return array
	 */
	public function getEcomEventIndustries() {
		return $this->ecomEventIndustries;
	}

	/**
	 * @param int $ecomEventIndustries
	 * @return void
	 */
	public function setEcomEventIndustries($ecomEventIndustries) {
		$this->ecomEventIndustries = $ecomEventIndustries;
	}

	/**
	 * Returns the evaluated checkboxes of $ecomEventIndustries
	 * plus user defined input as array (translated)
	 *
	 * @return array
	 */
	public function getEcomEventIndustriesArray() {
		$result = [];
		$numberOfCheckboxes = 5;

		if ($this->ecomEventIndustries) {
			for ($i = 0; $i <= $numberOfCheckboxes-1; $i++) {
				if (($this->ecomEventIndustries >> $i) & 1) {
					$result[] = \TYPO3\CMS\Extbase\Utility\LocalizationUtility::translate('event.industries.I.' . $i, 'ecom_toolbox');
				}
			}
		}

		// Merge with user-defined
		if($this->ecomEventIndustriesCustom) {
			if (is_array($result)) {
				$result = array_merge($result, \TYPO3\CMS\Core\Utility\GeneralUtility::trimExplode(',', $this->ecomEventIndustriesCustom, true));
			} else {
				$result = \TYPO3\CMS\Core\Utility\GeneralUtility::trimExplode(',', $this->ecomEventIndustriesCustom, true);
			}
		}

		// Sort values
		if (is_array($result)) sort($result, SORT_LOCALE_STRING | SORT_FLAG_CASE);

		return $result;
	}

	/**
	 * @return string $ecomEventIndustriesCustom
	 */
	public function getEcomEventIndustriesCustom() {
		return $this->ecomEventIndustriesCustom;
	}

	/**
	 * @param string $ecomEventIndustriesCustom
	 * @return void
	 */
	public function setEcomEventIndustriesCustom($ecomEventIndustriesCustom) {
		$this->ecomEventIndustriesCustom = $ecomEventIndustriesCustom;
	}

	/**
	 * @return int
	 */
	public function getEcomEventSettings() {
		return $this->ecomEventSettings;
	}

	/**
	 * @param int $ecomEventSettings
	 */
	public function setEcomEventSettings($ecomEventSettings) {
		$this->ecomEventSettings = $ecomEventSettings;
	}

	/**
	 * @return bool $ecomEventHideInfobox
	 */
	public function getEcomEventHideInfobox() {
		return (bool) ($this->ecomEventSettings & 1);
	}

	/**
	 * @return bool $ecomEventHideGooglemaps
	 */
	public function getEcomEventHideGooglemaps() {
		return (bool) ($this->ecomEventSettings & 2);
	}

	/**
	 * @return int $ecomBlogpostVisits
	 */
	public function getEcomBlogpostVisits() {
		return $this->ecomBlogpostVisits;
	}

	/**
	 * @param int $ecomBlogpostVisits
	 * @return void
	 */
	public function setEcomBlogpostVisits($ecomBlogpostVisits) {
		$this->ecomBlogpostVisits = $ecomBlogpostVisits;
	}
}