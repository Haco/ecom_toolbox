<?php
namespace Ecom\EcomToolbox\Hooks;


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
 * Class BackendUtility
 */
class BackendUtility
{
    public function updateFlexforms(&$params, &$reference)
    {
        if (\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::isLoaded('cb_newscal')) {
            switch ($params['selectedView']) {
                case 'News->calendar':
                    $this->updateCalendarFlexforms($params, $reference);
                    break;
            }
        }
    }

    // Add item to the "dateField" Dropdown in Calendar View of EXT:cb_newscal
    protected function updateCalendarFlexforms(&$params, &$reference)
    {
        $params['dataStructure']['sheets']['sDEF']['ROOT']['el']['settings.dateField']['TCEforms']['config']['items'][] = [
            'ecom Event Date',
            'ecom_event_date'
        ];
    }
}
