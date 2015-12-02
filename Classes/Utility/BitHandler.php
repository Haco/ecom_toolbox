<?php
namespace Ecom\EcomToolbox\Utility;


/***************************************************************
 *
 *  Copyright notice
 *
 *  (c) 2014 Nicolas Scheidler <Nicolas.Scheidler@ecom-ex.com>, ecom instruments GmbH
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
 * BitHandler
 */
class BitHandler {

	/**
	 * @var integer
	 */
	protected $bits = 0;

	/**
	 * Gets the bits
	 *
	 * @return int
	 */
	public function getBits() {
		return $this->bits;
	}

	/**
	 * Sets the bits
	 *
	 * @param $bits
	 */
	public function setBits($bits) {
		$this->bits = $bits;
	}

	/**
	 * Resets the bits property
	 *
	 * @return $this For method chaining
	 */
	public function reset() {
		$this->setBits(0);
		return $this;
	}

	/**
	 * Checks if flag (bit) is set
	 *
	 * @param  int  $bit The Bit to be checked against
	 * @return bool
	 */
	public function isBitSet($bit) {
		return ($this->bits & $bit) == $bit;
	}

	/**
	 * @param int $bit The Bit to be set
	 */
	public function setSingleBit($bit = 0) {
		$this->bits |= $bit;
	}

	/**
	 * @param int $bit The Bit to be unset
	 */
	public function unsetSingleBit($bit = 0) {
		$this->bits &= ~$bit;
	}

}