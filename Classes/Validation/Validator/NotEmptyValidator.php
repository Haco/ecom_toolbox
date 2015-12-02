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
 * Validator for not empty values.
 */
class NotEmptyValidator extends AbstractValidator {

	/**
	 * This validator always needs to be executed even if the given value is empty.
	 * See AbstractValidator::validate()
	 *
	 * @var bool
	 */
	protected $acceptsEmptyValues = false;

	/**
	 * Checks if the given property ($propertyValue) is not empty (null, empty string, empty array or empty object).
	 *
	 * If at least one error occurred, the result is false.
	 *
	 * @param mixed $value The value that should be validated
	 * @return bool true if the value is valid, false if an error occurred
	 */
	public function isValid($value) {
		if ( $value === null ) {
			$this->addError(
				$this->translateErrorMessage(
					'validator.notempty.null',
					'ecomToolbox'
				), 1423127982);
		}
		if ( $value === '' ) {
			$this->addError(
				$this->translateErrorMessage(
					'validator.notempty.empty',
					'ecomToolbox'
				), 1423127983);
		}
		if ( is_array($value) && empty($value) ) {
			$this->addError(
				$this->translateErrorMessage(
					'validator.notempty.empty',
					'ecomToolbox'
				), 1423127984);
		}
		if ( is_object($value) && $value instanceof \Countable && $value->count() === 0 ) {
			$this->addError(
				$this->translateErrorMessage(
					'validator.notempty.empty',
					'ecomToolbox'
				), 1423127985);
		}
	}
}
