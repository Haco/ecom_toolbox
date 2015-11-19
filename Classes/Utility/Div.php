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
	 * Converts an array into an objectStorage
	 *
	 * @param array $array
	 *
	 * @return \TYPO3\CMS\Extbase\Persistence\ObjectStorage
	 */
	public static function arrayToObjectStorage(array $array = [ ]) {
		$objectStorage = new \TYPO3\CMS\Extbase\Persistence\ObjectStorage();

		foreach ( $array as $element ) {
			$objectStorage->attach($element);
		}

		return $objectStorage;
	}

	/**
	 * Returns a list generated from ObjectStorage
	 * In best practice 'title' property should exist in target model.
	 *
	 * @param \TYPO3\CMS\Extbase\Persistence\ObjectStorage $objectStorage
	 * @param string                                       $separator
	 * @param string                                       $property
	 *
	 * @return string
	 */
	public static function generateStringListFromObjectStorage(\TYPO3\CMS\Extbase\Persistence\ObjectStorage $objectStorage, $separator = ', ', $property = 'title') {
		$list = [];

		if ( $objectStorage->count() ) {
			/** @var \TYPO3\CMS\Extbase\DomainObject\AbstractDomainObject $object */
			foreach ( $objectStorage as $object ) {
				$list[] = $object->_hasProperty($property) ? ucfirst($object->_getProperty($property)) : '';
			}
		}

		return count($list) ? implode($separator, $list) : '';
	}

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

	/**
	 * Minify All Output - based on the search and replace regexes.
	 * @param string $buffer Input string
	 * @return string
	 */
	public static function sanitize_output($buffer) {
		$search = [
				'/\>[^\S ]+/s', //strip whitespaces after tags, except space
				'/[^\S ]+\</s', //strip whitespaces before tags, except space
				'/(\s)+/s'  // shorten multiple whitespace sequences
		];
		$replace = [
				'>',
				'<',
				'\\1'
		];
		$buffer = preg_replace($search, $replace, $buffer);
		return $buffer;
	}

}