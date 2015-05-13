<?php

namespace Ecom\EcomToolbox\Hooks;

class T3libBefunc extends \Tx_News_Hooks_T3libBefunc {

	public function updateFlexforms(&$params, &$reference) {
		if (\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::isLoaded('cb_newscal')) {
			switch ($params['selectedView']) {
				case 'Newscal->calendar':
					$this->updateCalendarFlexforms($params, $reference);
					break;
			}
		}
	}

	// Add item to the "dateField" Dropdown in Calendar View of EXT:cb_newscal
	protected function updateCalendarFlexforms(&$params, &$reference) {
		$params['dataStructure']['sheets']['sDEF']['ROOT']['el']['settings.dateField']['TCEforms']['config']['items'][] = array('ecom Event Date', 'ecom_eventdate');
	}
}
