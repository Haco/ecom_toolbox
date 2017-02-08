plugin.tx_ecomtoolbox_ecomfaq {
    persistence {
        classes {
            // FAQ
            Ecom\EcomToolbox\Domain\Model\Faq\Item {
                mapping {
                    tableName = ecom_faq_item
                    recordType = Ecom\EcomToolbox\Domain\Model\Faq\Item
                    columns {
                        f_subject.mapOnProperty = subject
                        category_id.mapOnProperty = category
                        f_language_id.mapOnProperty = language
                    }
                }
            }

            Ecom\EcomToolbox\Domain\Model\Faq\Category {
                mapping {
                    tableName = ecom_faq_category
                    columns {
                        name.mapOnProperty = name
                        uid.mapOnProperty = uid
                        parent_id.mapOnProperty = parentCategory
                    }
                }
            }

            Ecom\EcomToolbox\Domain\Model\Faq\Attachment {
                mapping {
                    tableName = ecom_faq_attachment
                    columns {

                    }
                }
            }
        }
    }
    features {
        # uncomment the following line to enable the new Property Mapper.
        rewrittenPropertyMapper = 1
    }
}