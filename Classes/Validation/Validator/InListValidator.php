<?php
namespace Ecom\EcomToolbox\Validation\Validator;


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
 * Validator for list-values
 */
class InListValidator extends AbstractValidator {

	/**
	 * @var array
	 */
	protected $supportedOptions = [
		'list' => [ '', 'Comma-separated list of accepted values.', 'string', true ]
	];

	/**
	 * The given value is valid if appearing in the specified list.
	 *
	 * @param mixed $value The value that should be validated
	 * @return void
	 */
	public function isValid($value) {
		if ( !\TYPO3\CMS\Core\Utility\GeneralUtility::inList($this->options['list'], $value) ) {
			$this->addError(nl2br($this->translateErrorMessage(
				'validator.list.notinlist',
				'ecomToolbox',
				[
					$this->options['list'],
					$value
				]
			)), 1423132575, [ $this->options['list'], $value ]);
		}
	}
}