<?php
namespace TYPO3\CMS\Fluid\ViewHelpers\Ecom;

/**                                                                       *
 * This script belongs to the FLOW3 package "Fluid".                      *
 *                                                                        *
 * It is free software; you can redistribute it and/or modify it under    *
 * the terms of the GNU Lesser General Public License as published by the *
 * Free Software Foundation, either version 3 of the License, or (at your *
 * option) any later version.                                             *
 *                                                                        *
 * This script is distributed in the hope that it will be useful, but     *
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHAN-    *
 * TABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser       *
 * General Public License for more details.                               *
 *                                                                        *
 * You should have received a copy of the GNU Lesser General Public       *
 * License along with the script.                                         *
 * If not, see http://www.gnu.org/licenses/lgpl.html                      *
 *                                                                        *
 * The TYPO3 project - inspiring people to share!                         *
 *                                                                        */

/**
 * Class MakeListViewHelper
 */
class MakeListViewHelper extends \TYPO3\CMS\Fluid\Core\ViewHelper\AbstractViewHelper {

	/**
	 * @param mixed  $value
	 * @param string $separator
	 * @param string $labelField
	 *
	 * @return string
	 * @throws \TYPO3\CMS\Fluid\Core\ViewHelper\Exception
	 */
	public function render($value = null, $separator = ', ', $labelField = 'title') {
		if ( $value === null ) {
			$value = $this->renderChildren();
		}

		if ( $value instanceof \TYPO3\CMS\Extbase\Persistence\ObjectStorage ) {
			return \Ecom\EcomToolbox\Utility\Div::generateStringListFromObjectStorage($value, $separator, $labelField);
		} else {
			throw new \TYPO3\CMS\Fluid\Core\ViewHelper\Exception('Value must be an instance of \TYPO3\CMS\Extbase\Persistence\ObjectStorage, ' . gettype($value) . ' given.', 1429683170);
		}

	}
}
