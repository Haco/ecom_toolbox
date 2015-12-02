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
	 * @var string
	 * @validate NotEmpty
	 */
	protected $title = '';

	/**
	 * @var int
	 */
	protected $sysLanguage = 0;

	/**
	 * @var string
	 */
	protected $flag = '';

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
	 * @return int $sysLanguage
	 */
	public function getSysLanguage() {
		return $this->sysLanguage;
	}

	/**
	 * @param int $sysLanguage
	 * @return void
	 */
	public function setSysLanguage($sysLanguage) {
		$this->sysLanguage = $sysLanguage;
	}

	/**
	 * @return string $flag
	 */
	public function getFlag() {
		return $this->flag;
	}

	/**
	 * @param string $flag
	 * @return void
	 */
	public function setFlag($flag) {
		$this->flag = $flag;
	}

	/**
	 * @return string
	 */
	public function getFlagSource() {
		if ( version_compare(TYPO3_branch, '7.1', '>=') ) {
			$source = "EXT:core/Resources/Public/Icons/Flags/{$this->flag}.png";
		} else {
			$source = "EXT:t3skin/images/flags/{$this->flag}.png";
		}

		if ( version_compare(TYPO3_branch, '7.6', '>=') && file_exists(\TYPO3\CMS\Core\Utility\GeneralUtility::getFileAbsFileName('EXT:core/Resources/Public/Icons/Flags/SVG/' . strtoupper($this->flag) . '.svg')) ) {
			$source = 'EXT:core/Resources/Public/Icons/Flags/SVG/' . strtoupper($this->flag) . '.svg';
		}

		return $source;
	}

}