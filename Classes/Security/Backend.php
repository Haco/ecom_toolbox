<?php
namespace Ecom\EcomToolbox\Security;


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
 * Class Backend
 */
class Backend extends \TYPO3\CMS\Core\Authentication\BackendUserAuthentication {

	/**
	 * Check for logged in BE-user
	 *
	 * @return bool
	 */
	public static function isAuthenticated() {
		return isset($GLOBALS['BE_USER']) && (int) $GLOBALS['BE_USER']->user['uid'] > 0;
	}

	/**
	 * @param string $roles
	 *
	 * @return bool
	 */
	public static function checkForUserRoles($roles = '') {
		if ( $roles !== '' ) {
			$roles = \TYPO3\CMS\Core\Utility\GeneralUtility::intExplode(',', $roles, true);
			/** @var int $role */
			foreach ( $roles as $role ) {
				if ( is_array($GLOBALS['BE_USER']->userGroups) && \TYPO3\CMS\Core\Utility\MathUtility::canBeInterpretedAsInteger($role) ) {
					foreach ( $GLOBALS['BE_USER']->userGroups as $userGroup ) {
						if ( (int)$userGroup['uid'] === (int)$role ) {
							return true;
						}
					}
				}
			}
		}

		return false;
	}

}