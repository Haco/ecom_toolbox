<?php
/**
 * Created by PhpStorm.
 * User: S3b0
 * Date: 06/05/15
 * Time: 07:39
 */

namespace Ecom\EcomToolbox\Security;

/**
 * Class Frontend
 * @package Ecom\EcomToolbox\Security
 * @author Sebastian Iffland <Sebastian.Iffland@ecom-ex.com>
 */
class Frontend extends \TYPO3\CMS\Frontend\Authentication\FrontendUserAuthentication {

	/**
	 * Check for logged in FE-user
	 *
	 * @return bool
	 */
	public static function isAuthenticated() {
		return $GLOBALS['TSFE']->loginUser && (int) $GLOBALS['TSFE']->fe_user->user['uid'] > 0;
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
				if ( $GLOBALS['TSFE']->fe_user->groupData['uid'] && \TYPO3\CMS\Core\Utility\MathUtility::canBeInterpretedAsInteger($role) ) {
					foreach ( $GLOBALS['TSFE']->fe_user->groupData['uid'] as $userGroup ) {
						if ( (int)$userGroup === (int)$role ) {
							return TRUE;
						}
					}
				}
			}
		}

		return FALSE;
	}


}