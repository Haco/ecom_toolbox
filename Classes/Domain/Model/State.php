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
 * State
 */
class State extends \TYPO3\CMS\Extbase\DomainObject\AbstractEntity {

	/**
	 * title
	 *
	 * @var string
	 * @validate Ecom\EcomToolbox\Validation\Validator\NotEmpty
	 */
	protected $title = '';

	/**
	 * abbreviation
	 *
	 * @var string
	 */
	protected $abbreviation = '';

	/**
	 * verified
	 *
	 * @var bool
	 */
	protected $verified = FALSE;

	/**
	 * Assign corresponding country
	 *
	 * @var \Ecom\EcomToolbox\Domain\Model\Region
	 * @validate Ecom\EcomToolbox\Validation\Validator\NotEmpty
	 */
	protected $country = NULL;

	/**
	 * Returns the title
	 *
	 * @return string $title
	 */
	public function getTitle() {
		return $this->title;
	}

	/**
	 * Sets the title
	 *
	 * @param string $title
	 * @return void
	 */
	public function setTitle($title) {
		$this->title = $title;
	}

	/**
	 * Returns the abbreviation
	 *
	 * @return string $abbreviation
	 */
	public function getAbbreviation() {
		return $this->abbreviation ?: $this->title;
	}

	/**
	 * Sets the abbreviation
	 *
	 * @param string $abbreviation
	 * @return void
	 */
	public function setAbbreviation($abbreviation) {
		$this->abbreviation = $abbreviation;
	}

	/**
	 * Returns the verified
	 *
	 * @return bool $verified
	 */
	public function isVerified() {
		return $this->verified;
	}

	/**
	 * Sets the verified
	 *
	 * @param bool $verified
	 * @return void
	 */
	public function setVerified($verified) {
		$this->verified = $verified;
	}

	/**
	 * Returns the country
	 *
	 * @return \Ecom\EcomToolbox\Domain\Model\Region $country
	 */
	public function getCountry() {
		return $this->country;
	}

	/**
	 * Sets the country
	 *
	 * @param \Ecom\EcomToolbox\Domain\Model\Region $country
	 * @return void
	 */
	public function setCountry(\Ecom\EcomToolbox\Domain\Model\Region $country) {
		$this->country = $country;
	}

}