<?php

namespace Ecom\EcomToolbox\Slots;
use \TYPO3\CMS\Core\Utility\GeneralUtility;

class NewsControllerSlot extends \GeorgRinger\News\Controller\NewsController {

	/**
	 * feSession
	 *
	 * @var \Ecom\EcomToolbox\Domain\Session\FrontendSessionHandler
	 * @inject
	 */
	protected $feSession = NULL;

	/**
	 * Is excluded IP?
	 *
	 * @var bool
	 */
	protected $isExcludedIp = FALSE;

	/**
	 * Handles the blogpost visits
	 *
	 * @param \GeorgRinger\News\Domain\Model\News $news
	 * @return void
	 */
	public function detailActionSlot(\GeorgRinger\News\Domain\Model\News $news = null) {
		$sessionKey = $this->extensionName . '_visits_news';
		$excludedIps = $this->settings['excludedIpsForVisits'];
		$this->isExcludedIp = in_array($GLOBALS['_SERVER']['REMOTE_ADDR'], GeneralUtility::trimExplode(',', $excludedIps, TRUE)) ? TRUE : FALSE;
		$viewedNewsArray = $this->feSession->get($sessionKey);

		// Increases view count, updates news object, remembers object UID in session for unique views
		if ( (!is_array($viewedNewsArray) || (is_array($viewedNewsArray) && !in_array($news->getUid(), $viewedNewsArray))) && !$this->isExcludedIp ) {
			$viewedNewsArray[] = $news->getUid();

			/** @var \Ecom\EcomToolbox\Domain\Model\News $news */
			$news->setEcomBlogpostVisits($news->getEcomBlogpostVisits() + 1);
			$this->newsRepository->update($news);

			$this->feSession->store($sessionKey, $viewedNewsArray);
		}
	}
}
