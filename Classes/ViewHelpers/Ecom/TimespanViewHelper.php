<?php
namespace TYPO3\CMS\Fluid\ViewHelpers\Ecom;

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
	public function render($startDate = NULL, $endDate = NULL, $returnTimestamp = FALSE, $countFullDays = FALSE) {
		if ($startDate === NULL || $endDate === NULL) {
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