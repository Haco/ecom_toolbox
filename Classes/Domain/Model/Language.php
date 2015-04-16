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
 * Language
 */
class Language extends \TYPO3\CMS\Extbase\DomainObject\AbstractEntity {

	/**
	 * title
	 *
	 * @var string
	 * @validate NotEmpty
	 */
	protected $title = '';

	/**
	 * sysLanguage
	 *
	 * @var int
	 */
	protected $sysLanguage = 0;

	/**
	 * flag
	 *
	 * @var string
	 */
	protected $flag = '';

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
	 * Returns the sysLanguage
	 *
	 * @return int $sysLanguage
	 */
	public function getSysLanguage() {
		return $this->sysLanguage;
	}

	/**
	 * Sets the sysLanguage
	 *
	 * @param int $sysLanguage
	 * @return void
	 */
	public function setSysLanguage($sysLanguage) {
		$this->sysLanguage = $sysLanguage;
	}

	/**
	 * Returns the flag
	 *
	 * @return string $flag
	 */
	public function getFlag() {
		return $this->flag;
	}

	/**
	 * Sets the flag
	 *
	 * @param string $flag
	 * @return void
	 */
	public function setFlag($flag) {
		$this->flag = $flag;
	}

}