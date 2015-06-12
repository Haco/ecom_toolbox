<?php
namespace Ecom\EcomToolbox\Domain\Model;

/**
 * Class News
 * @package Ecom\EcomToolbox\Domain\Model
 *
 * Extends the News Model with custom fields
 */

class News extends \GeorgRinger\News\Domain\Model\News {
	/**
	 * ecom Event Host
	 *
	 * @var \string
	 */
	protected $ecomEventHost = '';

	/**
	 * ecom Event Consultants
	 *
	 * @var \string
	 */
	protected $ecomEventConsultants = '';

	/**
	 * ecom Event Website
	 *
	 * @var \string
	 */
	protected $ecomEventWebsite = '';

	/**
	 * ecom Event
	 *
	 * @var \DateTime
	 */
	protected $ecomEventDate = NULL;

	/**
	 * ecom Event End
	 *
	 * @var \DateTime
	 */
	protected $ecomEventEnd = NULL;

	/**
	 * ecom Event Open From
	 *
	 * @var \DateTime
	 */
	protected $ecomEventOpenFrom = NULL;

	/**
	 * ecom Event Open Till
	 *
	 * @var \DateTime
	 */
	protected $ecomEventOpenTill = NULL;

	/**
	 * ecom Event Booth
	 *
	 * @var string
	 */
	protected $ecomEventBooth = '';

	/**
	 * ecom Event Country
	 *
	 * @var \Ecom\EcomToolbox\Domain\Model\Region
	 */
	protected $ecomEventCountry = NULL;

	/**
	 * ecom Event City
	 *
	 * @var string
	 */
	protected $ecomEventCity = '';

	/**
	 * ecom Event Address
	 *
	 * @var string
	 */
	protected $ecomEventAddress = '';

	/**
	 * ecom Event Industries
	 *
	 * @var integer
	 */
	protected $ecomEventIndustries = 0;

	/**
	 * ecom Event Industries Custom
	 *
	 * @var string
	 */
	protected $ecomEventIndustriesCustom = '';

	/**
	 * ecom Event Settings
	 *
	 * @var integer
	 */
	protected $ecomEventSettings = 0;

	/**
	 * Returns the ecom Event Host
	 *
	 * @return string $ecomEventHost
	 */
	public function getEcomEventHost() {
		return $this->ecomEventHost;
	}

	/**
	 * Sets the ecom Event Host
	 *
	 * @param string $ecomEventHost
	 * @return void
	 */
	public function setEcomEventHost($ecomEventHost) {
		$this->ecomEventHost = $ecomEventHost;
	}

	/**
	 * Returns the ecom Event Consultants
	 *
	 * @return string $ecomEventConsultants
	 */
	public function getEcomEventConsultants() {
		return $this->ecomEventConsultants;
	}

	/**
	 * Sets the ecom Event Consultants
	 *
	 * @param string $ecomEventConsultants
	 * @return void
	 */
	public function setEcomEventConsultants($ecomEventConsultants) {
		$this->ecomEventConsultants = $ecomEventConsultants;
	}

	/**
	 * Returns the ecom Event Website
	 *
	 * @return string $ecomEventWebsite
	 */
	public function getEcomEventWebsite() {
		return $this->ecomEventWebsite;
	}

	/**
	 * Sets the ecom Event Website
	 *
	 * @param string $ecomEventWebsite
	 * @return void
	 */
	public function setEcomEventWebsite($ecomEventWebsite) {
		$this->ecomEventWebsite = $ecomEventWebsite;
	}

	/**
	 * Returns the ecom Eventdate
	 *
	 * @return \DateTime $ecomEventDate
	 */
	public function getEcomEventDate() {
		return $this->ecomEventDate;
	}

	/**
	 * Sets the ecom Eventdate
	 *
	 * @param \DateTime $ecomEventDate
	 *
	 * @return void
	 */
	public function setEcomEventDate($ecomEventDate) {
		$this->ecomEventDate = $ecomEventDate;
	}

	/**
	 * Returns the ecom Event End
	 *
	 * @return \DateTime $ecomEventEnd
	 */
	public function getEcomEventEnd() {
		return $this->ecomEventEnd;
	}

	/**
	 * Sets the ecom EventEnd
	 *
	 * @param \DateTime $ecomEventEnd
	 * @return void
	 */
	public function setEcomEventEnd($ecomEventEnd) {
		$this->ecomEventEnd = $ecomEventEnd;
	}

	/**
	 * Returns the ecom Event Open From
	 *
	 * @return \DateTime $ecomEventOpenFrom
	 */
	public function getEcomEventOpenFrom() {
		return $this->ecomEventOpenFrom;
	}

	/**
	 * Sets the ecom EventOpenFrom
	 *
	 * @param \DateTime $ecomEventOpenFrom
	 * @return void
	 */
	public function setEcomEventOpenFrom($ecomEventOpenFrom) {
		$this->ecomEventOpenFrom = $ecomEventOpenFrom;
	}

	/**
	 * Returns the ecom Event Open Till
	 *
	 * @return \DateTime $ecomEventOpenTill
	 */
	public function getEcomEventOpenTill() {
		return $this->ecomEventOpenTill;
	}

	/**
	 * Sets the ecom EventOpenTill
	 *
	 * @param \DateTime $ecomEventOpenTill
	 * @return void
	 */
	public function setEcomEventOpenTill($ecomEventOpenTill) {
		$this->ecomEventOpenTill = $ecomEventOpenTill;
	}

	/**
	* Returns the ecom Event Booth
	*
	* @return string $ecomEventBooth
	*/
	public function getEcomEventBooth() {
		return $this->ecomEventBooth;
	}

	/**
	 * Sets the ecom EventBooth
	 *
	 * @param string $ecomEventBooth
	 * @return void
	 */
	public function setEcomEventBooth($ecomEventBooth) {
		$this->ecomEventBooth = $ecomEventBooth;
	}

	/**
	 * Returns the ecom Event Country
	 *
	 * @return \Ecom\EcomToolbox\Domain\Model\Region
	 */
	public function getEcomEventCountry() {
		return $this->ecomEventCountry;
	}

	/**
	 * Sets the ecom EventCountry
	 *
	 * @param \Ecom\EcomToolbox\Domain\Model\Region $ecomEventCountry
	 * @return void
	 */
	public function setEcomEventCountry(\Ecom\EcomToolbox\Domain\Model\Region $ecomEventCountry = NULL) {
		$this->ecomEventCountry = $ecomEventCountry;
	}

	/**
	 * Returns the ecom Event City
	 *
	 * @return string $ecomEventCity
	 */
	public function getEcomEventCity() {
		return $this->ecomEventCity;
	}

	/**
	 * Sets the ecom EventCity
	 *
	 * @param string $ecomEventCity
	 * @return void
	 */
	public function setEcomEventCity($ecomEventCity) {
		$this->ecomEventCity = $ecomEventCity;
	}

	/**
	 * Returns the ecom Event Address
	 *
	 * @return string $ecomEventAddress
	 */
	public function getEcomEventAddress() {
		return $this->ecomEventAddress;
	}

	/**
	 * Sets the ecom EventAddress
	 *
	 * @param string $ecomEventAddress
	 * @return void
	 */
	public function setEcomEventAddress($ecomEventAddress) {
		$this->ecomEventAddress = $ecomEventAddress;
	}

	/**
	 * Returns the ecom Event Industries
	 *
	 * @return array
	 */
	public function getEcomEventIndustries() {
		return $this->ecomEventIndustries;
	}

	/**
	 * Returns the evaluated checkboxes of $ecomEventIndustries
	 * plus the user defined input as array (translated)
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
				$result = array_merge($result, \TYPO3\CMS\Core\Utility\GeneralUtility::trimExplode(',', $this->ecomEventIndustriesCustom, TRUE));
			} else {
				$result = \TYPO3\CMS\Core\Utility\GeneralUtility::trimExplode(',', $this->ecomEventIndustriesCustom, TRUE);
			}
		}

		// Sort values
		if (is_array($result)) sort($result, SORT_LOCALE_STRING | SORT_FLAG_CASE);

		return $result;
	}

	/**
	 * Sets the ecom EventIndustries
	 *
	 * @param integer $ecomEventIndustries
	 * @return void
	 */
	public function setEcomEventIndustries($ecomEventIndustries) {
		$this->ecomEventIndustries = $ecomEventIndustries;
	}

	/**
	 * Returns the ecom Event IndustriesCustom
	 *
	 * @return string $ecomEventIndustriesCustom
	 */
	public function getEcomEventIndustriesCustom() {
		return $this->ecomEventIndustriesCustom;
	}

	/**
	 * Sets the ecom EventIndustriesCustom
	 *
	 * @param string $ecomEventIndustriesCustom
	 * @return void
	 */
	public function setEcomEventIndustriesCustom($ecomEventIndustriesCustom) {
		$this->ecomEventIndustriesCustom = $ecomEventIndustriesCustom;
	}

	/**
	 * Returns the ecom Event Settings
	 *
	 * @return integer
	 */
	public function isEcomEventSettings() {
		return $this->ecomEventSettings;
	}

	/**
	 * Returns the ecom Event Settings
	 *
	 * @param integer $ecomEventSettings
	 */
	public function setEcomEventSettings($ecomEventSettings) {
		$this->ecomEventSettings = $ecomEventSettings;
	}

	/**
	 * Returns the ecom Event Hide Infobox
	 *
	 * @return boolean $ecomEventHideInfobox
	 */
	public function getEcomEventHideInfobox() {
		return (bool) ($this->ecomEventSettings & 1);
	}

	/**
	 * Returns the ecom Event Hide Googlemaps
	 *
	 * @return boolean $ecomEventHideGooglemaps
	 */
	public function getEcomEventHideGooglemaps() {
		return (bool) ($this->ecomEventSettings & 2);
	}

}