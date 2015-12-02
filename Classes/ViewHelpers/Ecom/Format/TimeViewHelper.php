<?php
namespace TYPO3\CMS\Fluid\ViewHelpers\Ecom\Format;

/*                                                                        *
 * This script is backported from the TYPO3 Flow package "TYPO3.Fluid".   *
 *                                                                        *
 * It is free software; you can redistribute it and/or modify it under    *
 * the terms of the GNU Lesser General Public License, either version 3   *
 *  of the License, or (at your option) any later version.                *
 *                                                                        *
 * The TYPO3 project - inspiring people to share!                         *
 *                                                                        */

use TYPO3\CMS\Fluid\Core\Rendering\RenderingContextInterface;
use TYPO3\CMS\Fluid\Core\ViewHelper\AbstractViewHelper;
use TYPO3\CMS\Fluid\Core\ViewHelper\Facets\CompilableInterface;

/**
 * Class TimeViewHelper
 */
class TimeViewHelper extends AbstractViewHelper {

	/**
	 * @param \DateTime $time
	 * @param string    $section
	 * @param int       $pad
	 * @param string    $thfCase
	 * @param bool      $usDate
	 *
	 * @return string Time
	 */
	public function render($time = null, $section = 'h', $pad = 2, $thfCase = 'upper', $usDate = false) {
		if ( $time === null ) {
			$time = $this->renderChildren();
		}

		if ( $time instanceof \DateTime ) {
			$time = $time->getTimestamp();
		}

		$thfCase = preg_match('/^(upper|lower)$/i', $thfCase) ? $thfCase : 'upper';

		$hours = intval($time / 3600);
		$minutes = intval(($time % 3600) / 60);
		$seconds = intval($time % 60);
		$twelveHourFormat = call_user_func('strto' . strtolower($thfCase), $hours > 11 ? 'pm' : 'am');

		if ( $usDate ) {
			$hours = $hours % 12 ?: 12;
		}

		switch ( $section ) {
			case 'h':
				$output = str_pad($hours, $pad, '0', STR_PAD_LEFT);
				break;
			case 'm':
				$output = str_pad($minutes, $pad, '0', STR_PAD_LEFT);
				break;
			case 's':
				$output = str_pad($seconds, $pad, '0', STR_PAD_LEFT);
				break;
			case '12h':
				$output = $twelveHourFormat;
				break;
			default:
				$output = $time;
		}

		return $output;
	}

}
