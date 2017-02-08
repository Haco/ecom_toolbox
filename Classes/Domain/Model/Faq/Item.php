<?php
namespace Ecom\EcomToolbox\Domain\Model\Faq;

class Item extends \TYPO3\CMS\Extbase\DomainObject\AbstractEntity
{
    /**
     * @var integer
     */
    protected $uid = null;

    /**
     * @var string $subject
     */
    protected $subject = '';

    /**
     * @var \Ecom\EcomToolbox\Domain\Model\Faq\Category $category
     */
    protected $category = null;

    /**
     * @param string $uid
     */
    public function setUid($uid)
    {
        $this->uid = $uid;
    }

    /**
     * @return string
     */
    public function getUid()
    {
        return $this->uid;
    }

    /**
     * @param string $subject
     */
    public function setSubject($subject)
    {
        $this->subject = $subject;
    }

    /**
     * @return string
     */
    public function getSubject()
    {
        return $this->subject;
    }

    /**
     * @param Category $category
     */
    public function setCategory($category)
    {
        $this->category = $category;
    }

    /**
     * @return Category
     */
    public function getCategory()
    {
        return $this->category;
    }
}