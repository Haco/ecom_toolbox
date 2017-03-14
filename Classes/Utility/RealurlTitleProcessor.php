<?php
namespace Ecom\EcomToolbox\Utility;

/**
 * Class RealurlTitleProcessor
 *
 * Used in typo3conf/realurl_conf.php for title processing.
 * - only allow a-z, lowercase
 * - transform spaces to "-" dashes
 */
class RealurlTitleProcessor
{
    /**
     * Title Processing
     *
     * @param $params reaurl params
     * @return string the realurl segment
     */
    public function process($params)
    {
        if ($realurlSegment = $params['title']) {
            $realurlSegment = trim($realurlSegment);
            $realurlSegment = strtolower($realurlSegment);
            // Strip everything but dashes, spaces, a-z & 0-9
            $realurlSegment = preg_replace('/[^- a-z0-9]+/', '', $realurlSegment);
            // Spaces to dashes
            $realurlSegment = preg_replace('/[ ]{1,}/', '-', $realurlSegment);
            return $realurlSegment;
        }

        return null;
    }
}