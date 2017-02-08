<?php
namespace Ecom\EcomToolbox\Domain\Model\Faq;

use TYPO3\CMS\Extbase\Persistence\ObjectStorage;

class Category extends \TYPO3\CMS\Extbase\DomainObject\AbstractEntity
{
    /**
     * @var string $name
     */
    protected $name = '';

    /**
     * @var \Ecom\EcomToolbox\Domain\Model\Faq\Category $parentCategory
     */
    protected $parentCategory = null;

    /**
     * @var \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\Ecom\EcomToolbox\Domain\Model\Faq\Item>
     */
    protected $items = null;

    /**
     * __construct
     */
    public function __construct()
    {
        //Do not remove the next line: It would break the functionality
        $this->initStorageObjects();
    }

    /**
     * Initializes all ObjectStorage properties
     * Do not modify this method!
     * It will be rewritten on each save in the extension builder
     * You may modify the constructor of this class instead
     *
     * @return void
     */
    protected function initStorageObjects()
    {
        $this->items = new \TYPO3\CMS\Extbase\Persistence\ObjectStorage();
    }

    /**
     * @param string $name
     */
    public function setName($name)
    {
        $this->name = $name;
    }

    /**
     * @return string
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * @param \Ecom\EcomToolbox\Domain\Model\Faq\Category $parentCategory
     */
    public function setParentCategory(\Ecom\EcomToolbox\Domain\Model\Faq\Category $parentCategory)
    {
        $this->parentCategory = $parentCategory;
    }

    /**
     * @return \Ecom\EcomToolbox\Domain\Model\Faq\Category
     */
    public function getParentCategory()
    {
        return $this->parentCategory;
    }

    /**
     * @param Item $item
     * @return void
     */
    public function addItem(Item $item) {
        $this->items->attach($item);
    }

    /**
     * @param Item $item
     * @return void
     */
    public function removeItem(Item $item) {
        $this->items->detach($item);
    }

    /**
     * @return \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\Ecom\EcomToolbox\Domain\Model\Faq\Item>
     */
    public function getItems() {
        return $this->items;
    }

    /**
     * @param ObjectStorage<\Ecom\EcomToolbox\Domain\Model\Faq\Item> $items
     * @return void
     */
    public function setItems(ObjectStorage $items) {
        $this->items = $items;
    }
}