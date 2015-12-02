<?php
namespace TYPO3\CMS\Fluid\ViewHelpers\Ecom;


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
 * Class CheckBitViewHelper
 */
class CheckBitViewHelper extends \TYPO3\CMS\Fluid\Core\ViewHelper\AbstractViewHelper {

	/**
	 * @param int $value
	 * @param int $bit
	 * @return bool
	 */
	public function render($value = null, $bit = 0) {
		if ( $value === null ) {
			$value = $this->renderChildren();
		}

		return \TYPO3\CMS\Core\Utility\MathUtility::canBeInterpretedAsInteger( $bit ) && \TYPO3\CMS\Core\Utility\MathUtility::canBeInterpretedAsInteger( $value ) ? ( (int) $bit & (int) $value ) > 0 : false;
	}
}
