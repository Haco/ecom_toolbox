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
	 * Convert a string to a sortable array key, might also be used for CSS class names
	 *
	 * @param string $value
	 *
	 * @return mixed|string
	 */
	public static function convertStringToSortableArrayKey($value = '') {
		if ( !(is_string($value) || strlen($value)) ) {
			return '';
		}

		return preg_replace('/\s+/im', '-', strtolower(self::convertUtf8ToAscii(trim($value))));
	}

	/**
	 * Remove whitespaces off a string
	 *
	 * @param string $value
	 *
	 * @return mixed|string
	 */
	public static function removeWhitespace($value = '') {
		if ( !(is_string($value) || strlen($value)) ) {
			return '';
		}

		return preg_replace('/\s+/im', '', $value);
	}

	/**
	 * Convert UTF-8 strings to ASCII
	 *
	 * @param string $value
	 *
	 * @return string
	 */
	public static function convertUtf8ToAscii($value = '') {
		if ( !(is_string($value) || strlen($value)) ) {
			return '';
		}

		return strtr(utf8_decode($value),
			utf8_decode('ŠŒŽšœžŸ¥µÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝßàáâãäåæçèéêëìíîïðñòóôõöøùúûüýÿ'),
			'SOZsozYYuAAAAAAACEEEEIIIIDNOOOOOOUUUUYsaaaaaaaceeeeiiiionoooooouuuuyy');

	}

	/**
	 * Drop empty elements off an array
	 *
	 * @param $array
	 */
	public static function removeEmptyArrayElements(&$array) {
		if ( is_array($array) ) {
			$array = array_filter($array);
		}
	}

}