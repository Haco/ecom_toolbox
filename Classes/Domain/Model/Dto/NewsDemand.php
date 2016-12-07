<?php
namespace Ecom\EcomToolbox\Domain\Model\Dto;

/**
 * This file is part of the TYPO3 CMS project.
 *
 * It is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License, either version 2
 * of the License, or any later version.
 *
 * For the full copyright and license information, please read the
 * LICENSE.txt file that was distributed with this source code.
 *
 * The TYPO3 project - inspiring people to share!
 */

/**
 * News Demand object which holds all information to get the correct
 * news records.
 *
 */
class NewsDemand extends \GeorgRinger\News\Domain\Model\Dto\NewsDemand
{
    /**
     * Get datefield which is used for datemenu
     *
     * @return string
     */
    public function getDateField()
    {
        if (empty($this->dateField) || in_array($this->dateField, ['datetime', 'archive', 'ecom_event_date'])) {
            return $this->dateField;
        } else {
            return null;
        }
    }
}
