<?php
namespace Ecom\EcomToolbox\Domain\Model;

class User extends \TYPO3\CMS\Extbase\Domain\Model\FrontendUser {

	/**
	 * @var \Ecom\EcomToolbox\Domain\Model\Region
	 */
	protected $ecomToolboxCountry = null;

	/**
	 * @var \Ecom\EcomToolbox\Domain\Model\State
	 */
	protected $ecomToolboxState = null;

	/**
	 * @var boolean
	 */
	protected $privacyPolicy = false;

	/**
	 * @param string $username
	 * @param string $password
	 */
	public function __construct($username = '', $password = '') {
		parent::__construct($username, $password);
	}

	/**
	 * @return \Ecom\EcomToolbox\Domain\Model\Region $ecomToolboxCountry
	 */
	public function getEcomToolboxCountry() {
		return $this->ecomToolboxCountry;
	}

	/**
	 * @param \Ecom\EcomToolbox\Domain\Model\Region $ecomToolboxCountry
	 * @return void
	 */
	public function setEcomToolboxCountry(\Ecom\EcomToolbox\Domain\Model\Region $ecomToolboxCountry = null) {
		$this->ecomToolboxCountry = $ecomToolboxCountry;
	}

	/**
	 * @return \Ecom\EcomToolbox\Domain\Model\State $ecomToolboxState
	 */
	public function getEcomToolboxState() {
		return $this->ecomToolboxState;
	}

	/**
	 * @param \Ecom\EcomToolbox\Domain\Model\State $ecomToolboxState
	 * @return void
	 */
	public function setEcomToolboxState(\Ecom\EcomToolbox\Domain\Model\State $ecomToolboxState = null) {
		$this->ecomToolboxState = $ecomToolboxState;
	}

	/**
	 * @return boolean $privacyPolicy
	 */
	public function isPrivacyPolicy() {
		return $this->privacyPolicy;
	}

	/**
	 * @param boolean $privacyPolicy
	 * @return void
	 */
	public function setPrivacyPolicy($privacyPolicy) {
		$this->privacyPolicy = $privacyPolicy;
	}

	/**
	 * @return array|null
	 */
	public function getFeUserGroups()
	{
		if ($this->getUsergroup() instanceof \TYPO3\CMS\Extbase\Persistence\ObjectStorage) {
			return $this->getFeUserGroupUidsAsArray($this->getUsergroup());
		}
		return null;
	}

	/**
	 * @param \TYPO3\CMS\Extbase\Persistence\ObjectStorage $userGroups
	 *
	 * @return array
	 */
	public function getFeUserGroupUidsAsArray(\TYPO3\CMS\Extbase\Persistence\ObjectStorage $userGroups)
	{
		$array = [];
		if ($userGroups->count()) {
			/** @var \TYPO3\CMS\Extbase\Domain\Model\FrontendUserGroup $userGroup */
			foreach ($userGroups as $userGroup) {
				$array[] = $userGroup->getUid();
				if ($userGroup->getSubgroup() instanceof \TYPO3\CMS\Extbase\Persistence\ObjectStorage && $userGroup->getSubgroup()->count()) {
					$array = array_merge($array, $this->getFeUserGroupUidsAsArray($userGroup->getSubgroup()));
				}
			}
		}

		return $array;
	}

}
?>