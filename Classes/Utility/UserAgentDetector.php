<?php
/**
 * Created by PhpStorm.
 * User: S3b0
 * Date: 30/04/15
 * Time: 16:12
 */

namespace Ecom\EcomToolbox\Utility;


class UserAgentDetector {

	// - http://www.robotstxt.org/db.html

	/**
	 * @return bool
	 */
	public static function isSpecificCrawler() {
		$userAgent    = isset($_SERVER['HTTP_USER_AGENT']) ? $_SERVER['HTTP_USER_AGENT'] : NULL;
		$crawlerNames = 'Google|msnbot|Rambler|Yahoo|AbachoBOT|accoona|AcioRobot|ASPSeek|CocoCrawler|Dumbot|FAST-WebCrawler|GeonaBot|Gigabot|Lycos|MSRBOT|Scooter|AltaVista|IDBot|eStyle|Scrubby';

		return is_string( $userAgent ) && strlen( $userAgent ) ? preg_match("/{$crawlerNames}/i", $userAgent) > 0 : FALSE;
	}

	/**
	 * @return bool
	 */
	public static function isGenericBot() {
		$userAgent = isset($_SERVER['HTTP_USER_AGENT']) ? $_SERVER['HTTP_USER_AGENT'] : NULL;
		$botTypes  = 'bot|crawl|slurp|spider';

		return is_string( $userAgent ) && strlen( $userAgent ) ? preg_match("/{$botTypes}/i", $userAgent) > 0 : FALSE;
	}

}