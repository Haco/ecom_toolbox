<?php
/**
 * Created by PhpStorm.
 * User: S3b0
 * Date: 16/04/15
 * Time: 13:39
 */
namespace Ecom\EcomToolbox\Utility;

class Div {

	/**
	 * @param $array
	 */
	public static function removeEmptyArrayElements(&$array) {
		if ( is_array($array) ) {
			$array = array_filter($array);
		}
	}

}