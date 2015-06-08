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
	 * ecom Eventdate
	 *
	 * @var \DateTime
	 */
	protected $ecomEventdate = NULL;

	/**
	 * ecom Event End
	 *
	 * @var \DateTime
	 */
	protected $ecomEventEnd = NULL;

	/**
	 * ecom Event Booth
	 *
	 * @var string
	 */
	protected $ecomEventBooth = NULL;

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
	protected $ecomEventCity = NULL;

	/**
	 * ecom Event Address
	 *
	 * @var string
	 */
	protected $ecomEventAddress = NULL;

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
	protected $ecomEventIndustriesCustom = NULL;

	/**
	 * Returns the ecom Eventdate
	 *
	 * @return \DateTime $ecomEventdate
	 */
	public function getEcomEventdate() {
		return $this->ecomEventdate;
	}

	/**
	 * Sets the ecom Eventdate
	 *
	 * @param \DateTime $ecomEventdate
	 * @return void
	 */
	public function setEcomEventdate($ecomEventdate) {
		$this->ecomEventdate = $ecomEventdate;
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
		$result = array();
		$numberOfCheckboxes = 5;

		if ($this->ecomEventIndustries) {
			$checksArray = NULL;
			for ($i = 0; $i <= $numberOfCheckboxes-1; $i++) {
				if (($this->ecomEventIndustries >> $i) & 1) {
					$checksArray[$i] = 'checked';
				}
			}
			// Generate translated array
			foreach ($checksArray as $checkboxValue => $checked) {
				$result[] = \TYPO3\CMS\Extbase\Utility\LocalizationUtility::translate('event.industries.I.' . $checkboxValue, 'ecom_toolbox');
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
}