<?php
namespace Ecom\EcomToolbox\Utility;


/***************************************************************
 *
 *  Copyright notice
 *
 *  (c) 2015 Nicolas Scheidler <Nicolas.Scheidler@ecom-ex.com>, ecom instruments GmbH
 *           Sebastian Iffland <sebastian.iffland@ecom-ex.com>, ecom instruments GmbH
 *
 *  All rights reserved
 *
 *  This script is part of the TYPO3 project. The TYPO3 project is
 *  free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  The GNU General Public License can be found at
 *  http://www.gnu.org/copyleft/gpl.html.
 *
 *  This script is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  This copyright notice MUST APPEAR in all copies of the script!
 ***************************************************************/

/**
 * Class UserAgentDetector
 */
class UserAgentDetector
{

    // - http://www.robotstxt.org/db.html

    /**
     * @return bool
     */
    public static function isSpecificCrawler()
    {
        $userAgent = isset($_SERVER[ 'HTTP_USER_AGENT' ]) ? $_SERVER[ 'HTTP_USER_AGENT' ] : null;
        $crawlerNames = 'Google|msnbot|Rambler|Yahoo|AbachoBOT|accoona|AcioRobot|ASPSeek|CocoCrawler|Dumbot|FAST-WebCrawler|GeonaBot|Gigabot|Lycos|MSRBOT|Scooter|AltaVista|IDBot|eStyle|Scrubby';

        return is_string($userAgent) && strlen($userAgent) ? preg_match("/{$crawlerNames}/i", $userAgent) > 0 : false;
    }

    /**
     * @return bool
     */
    public static function isGenericBot()
    {
        $userAgent = isset($_SERVER[ 'HTTP_USER_AGENT' ]) ? $_SERVER[ 'HTTP_USER_AGENT' ] : null;
        $botTypes = 'bot|crawl|slurp|spider';

        return is_string($userAgent) && strlen($userAgent) ? preg_match("/{$botTypes}/i", $userAgent) > 0 : false;
    }

}