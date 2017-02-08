<?php
namespace Ecom\EcomToolbox\Domain\Repository\Faq;

use Ecom\EcomToolbox\Domain\Model\Faq\Category;
use TYPO3\CMS\Extbase\Persistence\Repository;

class ItemRepository extends Repository
{
    /**
     * @return array|\TYPO3\CMS\Extbase\Persistence\QueryResultInterface
     */
    public function findAll()
    {
        $query = $this->createQuery();
        return $query->execute(false);
    }

    /**
     * @param Category $category
     * @return array|\TYPO3\CMS\Extbase\Persistence\QueryResultInterface
     */
    public function findByCategory(Category $category)
    {
        $query = $this->createQuery();
        $query->matching($query->equals('category', $category, false));
        return $query->execute(false);
    }
}