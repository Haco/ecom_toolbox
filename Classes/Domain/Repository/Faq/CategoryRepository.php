<?php
namespace Ecom\EcomToolbox\Domain\Repository\Faq;

use Ecom\EcomToolbox\Domain\Model\Faq\Category;
use TYPO3\CMS\Extbase\Persistence\Repository;

class CategoryRepository extends Repository
{
    /**
     * Top Category Id = 0
     * @return array|\TYPO3\CMS\Extbase\Persistence\QueryResultInterface
     */
    public function findTopCategories() {
        $query = $this->createQuery();
        $query->matching($query->equals('parentCategory', 0));
        return $query->execute();
    }

    /**
     * @param Category $category
     */
    public function findChildren(Category $category) {
        $query = $this->createQuery();
        $query->matching($query->equals('parentCategory', $category));
        return $query->execute();
    }
}