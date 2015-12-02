<?php
namespace TYPO3\CMS\Fluid\ViewHelpers\Ecom;


/***************************************************************
 *
 *  Copyright notice
 *
 *  (c) 2015 Nicolas Scheidler <Nicolas.Scheidler@ecom-ex.com>, ecom instruments GmbH
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
use \TYPO3\CMS\Fluid\Core\ViewHelper\AbstractViewHelper;

/**
 * TimespanViewHelper
 * Calculates the time span between two timestamps / dates
 * Accepts DateTime Object, or timestamp(integer) for calculation
 *
 * Returns number of days or optionally the difference in seconds.
 *
 * @package TYPO3\CMS\Fluid\ViewHelpers\Ecom
 */
class TimespanViewHelper extends AbstractViewHelper {

	/**
	 * Render Function
	 *
	 * @param integer|\DateTime $startDate
	 * @param integer|\DateTime $endDate
	 * @param bool $returnTimestamp
	 * @param bool $countFullDays
	 *
	 * @return string
	 */
	public function render($startDate = null, $endDate = null, $returnTimestamp = false, $countFullDays = false) {
		if ($startDate === null || $endDate === null) {
			return 'Error in TimespanViewHelper: Arguments startDate || endDate can not be NULL';
		}

		if (!($startDate instanceof \DateTime)) $startDate = new \DateTime('@'.$startDate);
		if (!($endDate instanceof \DateTime)) $endDate = new \DateTime('@'.$endDate);

		$startDate->setTime(0,0,0);
		$endDate->setTime(0,0,0);
		if($countFullDays) $endDate->setTime(24,0,0);

		$result = date_diff($startDate, $endDate)->days;

		if ($returnTimestamp) {
			$result = $endDate->getTimestamp() - $startDate->getTimestamp();
		}

		return $result;
	}
}