<?php
namespace Ecom\EcomToolbox\Hooks;

class BackendUtility
{
    /**
     * @param array $dataStructArray
     * @param array $conf
     * @param array $row
     * @param string $table
     */
    public function getFlexFormDS_postProcessDS(&$dataStructArray, $conf, $row, $table)
    {
        if ($table === 'tt_content' && $row['CType'] === 'list' && $row['list_type'] === 'news_pi1') {
            $dataArray = \TYPO3\CMS\Core\Utility\GeneralUtility::xml2array($row['pi_flexform']);
            $selectedView = $dataArray['data']['sDEF']['lDEF']['switchableControllerActions']['vDEF'];

            if ($selectedView === 'News->calendar') {
                // Add ecom event date as datefield for calendar
                $dataStructArray['sheets']['sDEF']['ROOT']['el']['settings.dateField']['TCEforms']['config']['items'][] = [
                    'ecom Event Date',
                    'ecom_event_date'
                ];
            }
        }
    }
}
