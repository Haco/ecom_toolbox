<?php
/**
 * Created by PhpStorm.
 * User: S3b0
 * Date: 06/05/15
 * Time: 07:39
 */

namespace Ecom\EcomToolbox\Security;

/**
 * Class Backend
 * @package Ecom\EcomToolbox\Security
 * @author Sebastian Iffland <Sebastian.Iffland@ecom-ex.com>
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
			$roles = \TYPO3\CMS\Core\Utility\GeneralUtility::intExplode(',', $roles, TRUE);
			/** @var int $role */
			foreach ( $roles as $role ) {
				if ( is_array($GLOBALS['BE_USER']->userGroups) && \TYPO3\CMS\Core\Utility\MathUtility::canBeInterpretedAsInteger($role) ) {
					foreach ( $GLOBALS['BE_USER']->userGroups as $userGroup ) {
						if ( (int)$userGroup['uid'] === (int)$role ) {
							return TRUE;
						}
					}
				}
			}
		}

		return FALSE;
	}


}