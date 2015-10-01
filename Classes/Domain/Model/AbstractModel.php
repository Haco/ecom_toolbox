<?php
namespace S3b0\EcomConfigCodeGenerator\Domain\Model;


/***************************************************************
 *
 *  Copyright notice
 *
 *  (c) 2015 Sebastian Iffland <Sebastian.Iffland@ecom-ex.com>, ecom instruments GmbH
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
 * AbstractModel
 */
class AbstractModel extends \TYPO3\CMS\Extbase\DomainObject\AbstractEntity {

	/**
	 * Reset function, returning cleared model
	 *
	 * @param array $properties
	 */
	public function reset(array $properties = [ ]) {
		$vars = get_object_vars($this);
		foreach ($vars as $property => $value) {
			if ( (sizeof($properties) && in_array($property, $properties)) || !sizeof($properties) ) {
				$this->{$property} = $this->_getCleanProperty($property);
			}
		}
		/** at complete reset re-construct */
		if ( !sizeof($properties) && method_exists($this, '__construct') ) {
			$reflection = new \ReflectionFunction('__construct');
			if ( $reflection->getNumberOfParameters() === 0 )
				$this->__construct();
		}
	}

	/**
	 * Returns this object as an array
	 *
	 * @return array The object
	 */
	public function toArray() {
		$array = array();
		$vars = get_object_vars($this);
		foreach ($vars as $property => $value) {
			$array[$property] = $value;
		}
		return $array;
	}

}