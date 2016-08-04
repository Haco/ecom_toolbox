<?php
namespace Ecom\EcomToolbox\Utility;

use DmitryDulepov\DdGooglesitemap\Generator\PagesSitemapGenerator;
use TYPO3\CMS\Extbase\Configuration\ConfigurationManagerInterface;
use TYPO3\CMS\Core\Utility\GeneralUtility;

/**
 * Class SitemapUtility
 * @package Ecom\EcomToolbox\Utility
 */
class SitemapUtility extends PagesSitemapGenerator
{
    /**
     * Extension Key
     * @var string
     */
    protected $extKey = 'ecomtoolbox';

    /**
     * Object Manager
     * @var \TYPO3\CMS\Extbase\Object\ObjectManager
     */
    protected $objectManager;

    /**
     * Configuration Manager
     * @var \TYPO3\CMS\Extbase\Configuration\ConfigurationManagerInterface
     */
    protected $configurationManager;

    /**
     * Ecom Toolbox Settings from TS
     * @var array
     */
    protected $settings;

    /**
     * Language IDs for custom Sitemap
     *
     * @var array
     */
    protected $langIds = array();

    /**
     * SitemapUtility constructor
     */
    public function __construct()
    {
        parent::__construct();
        $this->objectManager = GeneralUtility::makeInstance('TYPO3\CMS\Extbase\Object\ObjectManager');
        $this->configurationManager = $this->objectManager->get('TYPO3\CMS\Extbase\Configuration\ConfigurationManagerInterface');
        $this->settings = $this->configurationManager->getConfiguration(ConfigurationManagerInterface::CONFIGURATION_TYPE_SETTINGS,
            $this->extKey);
    }

    /**
     * @return  string
     */
    public function generateSitemap()
    {
        $landingPageArray = GeneralUtility::trimExplode(',', $this->settings['lpSitemapPids'], true);
        $this->langIds = GeneralUtility::trimExplode(',', $this->settings['lpLangIdsToIndex'], true);
        $tempArray = array();

        foreach ($landingPageArray as $pid) {
            $page = $GLOBALS['TSFE']->sys_page->getPage($pid);

            $tempArray[$pid] = array(
                'uid' => $pid,
                'SYS_LASTCHANGED' => $page['SYS_LASTCHANGED'],
                'tx_ddgooglesitemap_lastmod' => $page['tx_ddgooglesitemap_lastmod'],
                'tx_ddgooglesitemap_priority' => $GLOBALS['TSFE']->page['tx_ddgooglesitemap_priority'],
                'doktype' => $page['doktype']
            );
        }

        // Override pageList
        $this->pageList = $tempArray;
        // Initialize Sitemap Rendering
        $this->main();
    }

    /**
     * Generates sitemap for pages (<url> entries in the sitemap)
     *
     * @return  void
     */
    protected function generateSitemapContent()
    {
        $GLOBALS['TSFE']->sys_page->where_hid_del = str_replace(
            'pages.doktype<200',
            'pages.doktype<>255 AND pages.doktype<>6',
            $GLOBALS['TSFE']->sys_page->where_hid_del
        );
        while (!empty($this->pageList) && $this->generatedItemCount - $this->offset <= $this->limit) {
            $pageInfo = array_shift($this->pageList);
            if ($this->generatedItemCount >= $this->offset) {
                foreach ($this->langIds as $langid) {
                    if (!empty($GLOBALS['TSFE']->sys_page->getPagesOverlay(array($pageInfo['uid']), $langid))) {
                        $pageInfo['langId'] = $langid;
                        $this->writeSingleUrl($pageInfo);
                    }
                }
            }
            $this->generatedItemCount++;

            // Add subpages of this page to the end of the page list. This way
            // we get top level pages in the sitemap first, then subpages of the
            // first, second, etc pages of the top level pages and so on.
            //
            // Notice: no sorting (for speed)!
            $GLOBALS['TSFE']->sys_page->sys_language_uid = $GLOBALS['TSFE']->config['config']['sys_language_uid'];
            $morePages = $GLOBALS['TSFE']->sys_page->getMenu($pageInfo['uid'],
                'uid,doktype,no_search,l18n_cfg,SYS_LASTCHANGED,tx_ddgooglesitemap_lastmod,tx_ddgooglesitemap_priority',
                '', '', false);
            $this->removeNonTranslatedPages($morePages);
            $this->pageList = array_merge($this->pageList, array_values($morePages));
            unset($morePages);
        }
    }

    /**
     * Outputs information about single page
     *
     * @param   array $pageInfo Page information (needs 'uid' and 'SYS_LASTCHANGED' columns)
     * @return  void
     */
    protected function writeSingleUrl(array $pageInfo)
    {
        $langId = $pageInfo['langId'];
        if ($this->shouldIncludePageInSitemap($pageInfo) && ($url = $this->getPageLinkNew((int)$pageInfo['uid'], (int)$langId))) {
            echo $this->renderer->renderEntry($url, $pageInfo['title'],
                $this->getLastMod($pageInfo),
                $this->getChangeFrequency($pageInfo), '', $pageInfo['tx_ddgooglesitemap_priority']);

            // Post-process current page and possibly append data
            // @see http://forge.typo3.org/issues/45637
            foreach ($this->hookObjects as $hookObject) {
                if (is_callable(array($hookObject, 'postProcessPageInfo'))) {
                    $parameters = array(
                        'pageInfo' => &$pageInfo,
                        'generatedItemCount' => &$this->generatedItemCount,
                        'offset' => $this->offset,
                        'limit' => $this->limit,
                        'renderer' => $this->renderer,
                        'pObj' => $this
                    );
                    /** @noinspection PhpUndefinedMethodInspection */
                    $hookObject->postProcessPageInfo($parameters);
                }
            }
        }
    }

    /**
     * Creates a link to a single page
     *
     * @param   integer $pageId Page ID
     * @param   integer $langId
     * @return  string    Full URL of the page including host name (escaped)
     */
    protected function getPageLinkNew($pageId, $langId)
    {
        $conf = array(
            'parameter' => $pageId,
            'returnLast' => 'url',
        );

        if ($langId) {
            $conf['additionalParams'] = '&L=' . $langId;
        }

        $link = htmlspecialchars($this->cObj->typoLink('', $conf));
        return GeneralUtility::locationHeaderUrl($link);
    }
}