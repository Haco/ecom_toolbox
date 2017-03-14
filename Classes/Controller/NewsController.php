<?php

namespace Ecom\EcomToolbox\Controller;


use GeorgRinger\News\Domain\Model\Dto\NewsDemand;
use TYPO3\CMS\Core\Utility\GeneralUtility;

class NewsController extends \GeorgRinger\News\Controller\NewsController
{
    /**
     * @param array $overwriteDemand
     * @return void
     */
    public function listbytagAction(array $overwriteDemand = NULL)
    {
        $demand = $this->createDemandObjectFromSettings($this->settings);
        $demand->setActionAndClass(__METHOD__, __CLASS__);

        if ($this->settings['disableOverrideDemand'] != 1 && $overwriteDemand !== null) {
            $demand = $this->overwriteDemandObject($demand, $overwriteDemand);
        }

        $newsRecords = $this->newsRepository->demandArticlesByTags($demand);

        $assignedValues = [
            'news' => $newsRecords,
            //'allTags' => $this->tagRepository->findDemanded(GeneralUtility::makeInstance(\GeorgRinger\News\Domain\Model\Dto\NewsDemand::class)),
            'overwriteDemand' => $overwriteDemand,
            'demand' => $demand,
        ];

        if ($demand->getTags() !== '') {
            $tagList = $demand->getTags();
            if (!is_array($tagList)) {
                $tagList = GeneralUtility::trimExplode(',', $tagList);
            }
            if (!empty($tagList)) {
                $assignedValues['tags'] = $this->tagRepository->findByIdList($tagList);
            }
        }

        $this->view->assignMultiple($assignedValues);
    }
}