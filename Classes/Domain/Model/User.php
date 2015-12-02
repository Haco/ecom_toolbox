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

}
?>