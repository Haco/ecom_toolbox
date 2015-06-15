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
	 * @param string $roundMethod (ceil|floor|none); Default value: ceil
	 *
	 * @return string
	 */
	public function render($startDate = NULL, $endDate = NULL, $returnTimestamp = FALSE, $roundMethod = 'ceil') {
		$roundMethod = strtolower($roundMethod);
		if ($startDate === NULL || $endDate === NULL) {
			return 'Error in TimespanViewHelper: Arguments startDate || endDate can not be NULL';
		}

		$startDate = ($startDate instanceof \DateTime) ? $startDate->getTimestamp() : $startDate;
		$endDate = ($endDate instanceof \DateTime) ? $endDate->getTimestamp() : $endDate;

		$result = $endDate - $startDate;

		if (!$returnTimestamp) {
			$result = $result / 60 / 60 / 24;
		}

		switch($roundMethod) {
			case 'ceil': {
				$result = ceil($result);
				break;
			}
			case 'floor': {
				$result = floor($result);
				break;
			}
		}
		
		return $result;
	}
}