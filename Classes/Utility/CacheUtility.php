<?php
namespace Ecom\EcomToolbox\Utility;

use TYPO3\CMS\Core\Utility\GeneralUtility;
use TYPO3\CMS\Core\Cache\CacheManager;

/**
 * Class CacheUtility
 * @package Ecom\EcomToolbox\Utility
 *
 * USAGE:
 * Register caching in ext_localconf.php: In this case: $_EXTKEY used for $cacheKey
 *
 *      // Caching framework
 *      if( !is_array($GLOBALS['TYPO3_CONF_VARS'] ['SYS']['caching']['cacheConfigurations'][$_EXTKEY] ) ) {
 *      $GLOBALS['TYPO3_CONF_VARS'] ['SYS']['caching']['cacheConfigurations'][$_EXTKEY] = array();
 *      }
 *      if( !isset($GLOBALS['TYPO3_CONF_VARS'] ['SYS']['caching']['cacheConfigurations'][$_EXTKEY]['frontend'] ) ) {
 *      $GLOBALS['TYPO3_CONF_VARS'] ['SYS']['caching']['cacheConfigurations'][$_EXTKEY]['frontend'] = 'TYPO3\\CMS\\Core\\Cache\\Frontend\\VariableFrontend';
 *      }
 *      if( !isset($GLOBALS['TYPO3_CONF_VARS'] ['SYS']['caching']['cacheConfigurations'][$_EXTKEY]['options'] ) ) {
 *      $GLOBALS['TYPO3_CONF_VARS'] ['SYS']['caching']['cacheConfigurations'][$_EXTKEY]['options'] = array('defaultLifetime' => 0);
 *      }
 *      if( !isset($GLOBALS['TYPO3_CONF_VARS'] ['SYS']['caching']['cacheConfigurations'][$_EXTKEY]['groups'] ) ) {
 *      $GLOBALS['TYPO3_CONF_VARS'] ['SYS']['caching']['cacheConfigurations'][$_EXTKEY]['groups'] = array('pages');
 *      }
 *
 * Extend CacheUtility & set the $cacheKey in the extending Class.
 * Inject or instance new class.
 */
class CacheUtility
{
    const CACHE_LIFETIME_DEFAULT = 2420000; // Weeks

    /**
     * Have to be defined in the extending class.
     *
     * @var string The cache key. Commonly the extkey eg. 'app_library'
     */
    public $cacheKey;

    /**
     * Inits the default frontend cacheManager.
     * For use of the original methods if neccessary
     *
     * @var \TYPO3\CMS\Core\Cache\Frontend\VariableFrontend
     */
    public $cacheManager;

    /**
     * Disable caches
     *
     * @var boolean
     */
    public $disableCache = false;

    /**
     * CacheUtility constructor.
     *
     * @throws \Exception
     */
    public function __construct()
    {
        if ($this->cacheKey) {
            // Init Caching Framework
            $this->cacheManager = GeneralUtility::makeInstance(CacheManager::class)->getCache($this->cacheKey);
        } else {
            throw new \Exception('The $cacheKey variable in the extending class has not been defined.');
        }
    }

    /**
     * @param array $options
     *
     * @return string
     */
    private function generateCacheIdentifier($options)
    {
        $defaultOptions = [
            $GLOBALS['TSFE']->id,
            $GLOBALS['TSFE']->sys_language_uid
        ];

        $options = array_merge($defaultOptions, $options);

        return sha1(json_encode($options));
    }

    /**
     * @param array $identifierOptions
     *
     * @return mixed
     */
    public function getCache(array $identifierOptions)
    {
        if ($this->disableCache) return false;
        $cacheIdentifier = $this->generateCacheIdentifier($identifierOptions);

        return $this->cacheManager->get($cacheIdentifier);
    }

    /**
     * @param array $identifierOptions
     * @param mixed $content
     * @param array $cacheTags
     * @param int $lifetime in Seconds. 0 unlimited
     *
     * @return void
     */
    public function setCache(array $identifierOptions, $content, array $cacheTags, $lifetime = 0)
    {
        if ($this->disableCache) return false;
        $cacheIdentifier = $this->generateCacheIdentifier($identifierOptions);

        $this->cacheManager->set($cacheIdentifier, $content, $cacheTags, $lifetime);
    }
}