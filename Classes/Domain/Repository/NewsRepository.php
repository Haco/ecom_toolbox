<?php

namespace Ecom\EcomToolbox\Domain\Repository;


class NewsRepository extends \GeorgRinger\News\Domain\Repository\NewsRepository
{
    /**
     * Returns the objects of this repository matching the demand.
     *
     * @param DemandInterface $demand
     * @param bool $respectEnableFields
     * @return \TYPO3\CMS\Extbase\Persistence\QueryResultInterface
     */
    public function demandArticlesByTags($demand, $respectEnableFields = true) {
        $query = $this->generateQuery($demand, $respectEnableFields);
        $query->getQuerySettings()->setRespectSysLanguage(false);

        return $query->execute();
    }
}