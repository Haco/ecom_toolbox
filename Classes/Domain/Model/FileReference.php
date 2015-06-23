<?php
namespace Ecom\EcomToolbox\Domain\Model;

/**
 * Class Media
 * @package Ecom\EcomToolbox\Domain\Model
 *
 * Extends the File Reference Model with custom fields
 */
class FileReference extends \GeorgRinger\News\Domain\Model\FileReference {

	/**
	 * Checkbox for Hiding the image in post but
	 * leave it in preview.
	 *
	 * @var boolean
	 */
	protected $hideinpost = 0;

	/**
	 * Sets the Hideinpost
	 *
	 * @param boolean $hideinpost
	 * @return void
	 */
	public function setHideinpost($hideinpost) {
		$this->hideinpost = $hideinpost;
	}

	/**
	 * Returns the Hideinpost
	 *
	 * @return boolean
	 */
	public function getHideinpost() {
		return $this->hideinpost;
	}
}