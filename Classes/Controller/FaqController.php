<?php
namespace Ecom\EcomToolbox\Controller;

use Ecom\EcomToolbox\Domain\Model\Faq\Category;
use Ecom\EcomToolbox\Domain\Model\Faq\Item;
use TYPO3\CMS\Extbase\Persistence\Generic\PersistenceManager;
use TYPO3\CMS\Extbase\Persistence\ObjectStorage;

class FaqController extends ActionController
{
    /**
     * @var \Ecom\EcomToolbox\Domain\Repository\Faq\ItemRepository
     * @inject
     */
    protected $itemRepository;

    /**
     * @var \Ecom\EcomToolbox\Domain\Repository\Faq\CategoryRepository
     * @inject
     */
    protected $categoryRepository;

    /**
     * @var \Ecom\EcomToolbox\Domain\Repository\Faq\AttachmentRepository
     * @inject
     */
    protected $attachmentRepository;

    /**
     * @var int
     */
    protected $langId = 0;

    public function initializeAction()
    {
        $this->langId = $GLOBALS['TSFE']->sys_language_uid;
    }

    /**
     * @param Category $category
     */
    public function listAction(Category $category = null)
    {
        $subCategories = null;
        if ($category) {
            $subCategories = $this->categoryRepository->findChildren($category);
            foreach ($subCategories as $subCategory) {
                /* @var Category $subCategory */
                $subCategory->setItems($this->fillOjectStorageFromQueryResult($this->itemRepository->findByCategory($subCategory)));
            }
            $category->setItems($this->fillOjectStorageFromQueryResult($this->itemRepository->findByCategory($category)));
        }

        $topCategories = $this->categoryRepository->findTopCategories();

        $this->view->assignMultiple([
            'currentCategory' => $category,
            'topCategories' => $topCategories,
            'subCategories' => $subCategories
        ]);
    }

    /**
     * @param Item $item
     */
    public function showAction(Item $item = null) {
        $this->view->assignMultiple([
            'item' => $item
        ]);
    }

    /**
     * Fill objectStorage from QueryResult
     *
     * @param \TYPO3\CMS\Extbase\Persistence\QueryResultInterface $queryResult
     * @return \TYPO3\CMS\Extbase\Persistence\ObjectStorage
     */
    protected function fillOjectStorageFromQueryResult(\TYPO3\CMS\Extbase\Persistence\QueryResultInterface $queryResult=NULL) {
        /* @var $objectStorage \TYPO3\CMS\Extbase\Persistence\ObjectStorage */
        $objectStorage = $this->objectManager->get('TYPO3\CMS\Extbase\Persistence\ObjectStorage');

        if (NULL!==$queryResult) {
            foreach($queryResult AS $object) {
                $objectStorage->attach($object);
            }
        }

        return $objectStorage;
    }

}