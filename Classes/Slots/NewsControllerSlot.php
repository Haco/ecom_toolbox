<?php
namespace Ecom\EcomToolbox\Slots;

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
require \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::extPath('ecom_toolbox') . 'vendor/autoload.php';

use TYPO3\CMS\Core\Utility\GeneralUtility;
use Jaybizzle\CrawlerDetect\CrawlerDetect;

/**
 * Class NewsControllerSlot
 */
class NewsControllerSlot extends \GeorgRinger\News\Controller\NewsController {

	/**
	 * feSession
	 *
	 * @var \Ecom\EcomToolbox\Domain\Session\FrontendSessionHandler
	 * @inject
	 */
	protected $feSession = null;

	/**
	 * Is excluded IP?
	 *
	 * @var bool
	 */
	protected $isExcludedIp = false;

	/**
	 * Handles the blogpost visits
	 *
	 * @param \GeorgRinger\News\Domain\Model\News $news
	 * @return void
	 */
	public function detailActionSlot(\GeorgRinger\News\Domain\Model\News $news = null) {
        $CrawlerDetect = new CrawlerDetect;
        $sessionKey = $this->extensionName . '_visits_news';
		$excludedIps = $this->settings['excludedIpsForVisits'];
		$this->isExcludedIp = in_array($GLOBALS['_SERVER']['REMOTE_ADDR'], GeneralUtility::trimExplode(',', $excludedIps, true));
		$viewedNewsArray = $this->feSession->get($sessionKey);
        
		// Increases view count, updates news object, remembers object UID in session for unique views
		if ((!is_array($viewedNewsArray) || (is_array($viewedNewsArray) && !in_array($news->getUid(), $viewedNewsArray))) && !$this->isExcludedIp && !$CrawlerDetect->isCrawler()) {
			$viewedNewsArray[] = $news->getUid();

			/** @var \Ecom\EcomToolbox\Domain\Model\News $news */
			$news->setEcomBlogpostVisits($news->getEcomBlogpostVisits() + 1);
			$this->newsRepository->update($news);

			$this->feSession->store($sessionKey, $viewedNewsArray);
		}
	}
}
