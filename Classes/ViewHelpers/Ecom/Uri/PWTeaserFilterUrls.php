<?php
namespace TYPO3\CMS\Fluid\ViewHelpers\Ecom\Uri;

use TYPO3\CMS\Core\Utility\GeneralUtility;
use TYPO3\CMS\Core\Utility\MathUtility;
use TYPO3\CMS\Fluid\Core\Rendering\RenderingContextInterface;
use TYPO3\CMS\Fluid\Core\ViewHelper\Facets\CompilableInterface;

/**
 * Class PWTeaserFilterUrls ViewHelper
 */
class PWTeaserFilterUrlsViewHelper extends \TYPO3\CMS\Fluid\Core\ViewHelper\AbstractViewHelper implements CompilableInterface
{
    /**
     * @param int|NULL $pageUid target PID
     * @param string $parameter
     * @param integer $value
     * @param string $valueSplitCharacter
     * @param bool $noCache set this to disable caching for the target page. You should not need this.
     * @param bool $noCacheHash set this to suppress the cHash query parameter created by TypoLink. You should not need this.
     * @param bool $addQueryString If set, the current query parameters will be kept in the URI
     * @param array $argumentsToBeExcludedFromQueryString arguments to be removed from the URI. Only active if $addQueryString = TRUE
     * @param string $addQueryStringMethod Set which parameters will be kept. Only active if $addQueryString = TRUE
     * @return string Rendered page URI
     */
    public function render($pageUid = null, $parameter = null, $value = null, $valueSplitCharacter = '|', $noCache = false, $noCacheHash = false, $addQueryString = false, array $argumentsToBeExcludedFromQueryString = [], $addQueryStringMethod = null)
    {
        return static::renderStatic(
            [
                'pageUid' => $pageUid,
                'parameter' => $parameter,
                'value' => $value,
                'valueSplitCharacter' => $valueSplitCharacter,
                'noCache' => $noCache,
                'noCacheHash' => $noCacheHash,
                'addQueryString' => $addQueryString,
                'argumentsToBeExcludedFromQueryString' => $argumentsToBeExcludedFromQueryString,
                'addQueryStringMethod' => $addQueryStringMethod
            ],
            $this->buildRenderChildrenClosure(),
            $this->renderingContext
        );
    }

    /**
     * @param array $arguments
     * @param callable $renderChildrenClosure
     * @param RenderingContextInterface $renderingContext
     * @return string
     */
    public static function renderStatic(array $arguments, \Closure $renderChildrenClosure, RenderingContextInterface $renderingContext)
    {
        $pageUid = $arguments['pageUid'];
        $parameter = $arguments['parameter'];
        $value = $arguments['value'];
        $valueSplitCharacter = $arguments['valueSplitCharacter'];
        $noCache = $arguments['noCache'];
        $noCacheHash = $arguments['noCacheHash'];
        $addQueryString = $arguments['addQueryString'];
        $argumentsToBeExcludedFromQueryString = $arguments['argumentsToBeExcludedFromQueryString'];
        $addQueryStringMethod = $arguments['addQueryStringMethod'];

        if (!empty(GeneralUtility::_GET($parameter))) {
            $GETValue = GeneralUtility::_GET($parameter);
            $valuesArray = GeneralUtility::trimExplode($valueSplitCharacter, $GETValue, true);

            if (in_array($value, $valuesArray)) {
                $keyOfValue = array_search($value, $valuesArray);
                unset($valuesArray[$keyOfValue]);
                $value = implode('|', $valuesArray);
            } else {
                $value = $GETValue . $valueSplitCharacter . $value;
            }
        }

        if ($value === '') {
            $argumentsToBeExcludedFromQueryString = [$parameter];
            $additionalParams = [];
        } else {
            $additionalParams = [$parameter => $value];
        }

        $uriBuilder = $renderingContext->getControllerContext()->getUriBuilder();
        $uri = $uriBuilder->setTargetPageUid($pageUid)->setNoCache($noCache)->setUseCacheHash(!$noCacheHash)->setArguments($additionalParams)->setAddQueryString($addQueryString)->setArgumentsToBeExcludedFromQueryString($argumentsToBeExcludedFromQueryString)->setAddQueryStringMethod($addQueryStringMethod)->build();
        return $uri;
    }
}
