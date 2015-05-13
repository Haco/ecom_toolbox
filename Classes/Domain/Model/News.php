<?php
namespace Ecom\EcomToolbox\Domain\Model;

/**
 * Class News
 * @package Ecom\EcomToolbox\Domain\Model
 *
 * Extends the News Model with custom fields
 */

class News extends \Tx_News_Domain_Model_News {

	/**
	 * ecom Eventdate
	 *
	 * @var DateTime
	 */
	protected $ecomEventdate = NULL;

	/**
	 * Returns the ecom Eventdate
	 *
	 * @return DateTime $ecomEventdate
	 */
	public function getEcomEventdate() {
		return $this->ecomEventdate;
	}

	/**
	 * Sets the ecom Eventdate
	 *
	 * @param DateTime $ecomEventdate
	 * @return void
	 */
	public function setNewsComments($ecomEventdate) {
		$this->ecomEventdate = $ecomEventdate;
	}

}