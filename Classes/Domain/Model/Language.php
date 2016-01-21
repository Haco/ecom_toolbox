<?php
namespace Ecom\EcomToolbox\Domain\Model;


/***************************************************************
 *
 *  Copyright notice
 *
 *  (c) 2015 Nicolas Scheidler <Nicolas.Scheidler@ecom-ex.com>, ecom instruments GmbH
 *           Sebastian Iffland <sebastian.iffland@ecom-ex.com>, ecom instruments GmbH
 *
 *  All rights reserved
 *
 *  This script is part of the TYPO3 project. The TYPO3 project is
 *  free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  The GNU General Public License can be found at
 *  http://www.gnu.org/copyleft/gpl.html.
 *
 *  This script is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  This copyright notice MUST APPEAR in all copies of the script!
 ***************************************************************/

/**
 * Language
 */
class Language extends \TYPO3\CMS\Extbase\DomainObject\AbstractEntity
{

    /**
     * @var string
     * @validate NotEmpty
     */
    protected $title = '';

    /**
     * @var int
     */
    protected $sysLanguage = 0;

    /**
     * @var string
     */
    protected $flag = '';

    /**
     * Build up an array to translate ISO 3166-1 alpha-2 country codes
     *
     * Codes are set as key, holding another array with a maximum of 2
     * items. First array element is the official country name, while
     * second is holding the modified name for flag sources that is only
     * set if differing from first (e.g. special chars or short names),
     * see EXT:ecom_toolbox/Resources/Public/Images/Flags/
     *
     * @var array
     */
    protected $translateCountryIso2 = [
        'ad' => ['Andorra'],
        'ae' => ['United Arab Emirates'],
        'af' => ['Afghanistan'],
        'ag' => ['Antigua and Barbuda'],
        'ai' => ['Anguilla'],
        'al' => ['Albania'],
        'am' => ['Armenia'],
        'ao' => ['Angola'],
        'aq' => ['Antarctica'],
        'ar' => ['Argentina'],
        'as' => ['American Samoa'],
        'at' => ['Austria'],
        'au' => ['Australia'],
        'aw' => ['Aruba'],
        'ax' => [
            'Åland Islands',
            'Aland'
        ],
        'az' => ['Azerbaijan'],
        'ba' => ['Bosnia and Herzegovina'],
        'bb' => ['Barbados'],
        'bd' => ['Bangladesh'],
        'be' => ['Belgium'],
        'bf' => ['Burkina Faso'],
        'bg' => ['Bulgaria'],
        'bh' => ['Bahrain'],
        'bi' => ['Burundi'],
        'bj' => ['Benin'],
        'bl' => [
            'Saint Barthélemy',
            'Saint Barthelemy'
        ],
        'bm' => ['Bermuda'],
        'bn' => [
            'Brunei Darussalam',
            'Brunei'
        ],
        'bo' => [
            'Bolivia, Plurinational State of',
            'Bolivia'
        ],
        'bq' => ['Bonaire, Sint Eustatius and Saba'],
        'br' => ['Brazil'],
        'bs' => ['Bahamas'],
        'bt' => ['Bhutan'],
        'bv' => ['Bouvet Island'],
        'bw' => ['Botswana'],
        'by' => ['Belarus'],
        'bz' => ['Belize'],
        'ca' => ['Canada'],
        'cc' => [
            'Cocos (Keeling) Islands',
            'Cocos Keeling Islands'
        ],
        'cd' => [
            'Congo, the Democratic Republic of the',
            'Democratic Republic of the Congo'
        ],
        'cf' => ['Central African Republic'],
        'cg' => [
            'Congo',
            'Republic of the Congo'
        ],
        'ch' => ['Switzerland'],
        'ci' => [
            'Côte d\'Ivoire',
            'Cote dIvoire',
        ],
        'ck' => ['Cook Islands'],
        'cl' => ['Chile'],
        'cm' => ['Cameroon'],
        'cn' => ['China'],
        'co' => ['Colombia'],
        'cr' => ['Costa Rica'],
        'cu' => ['Cuba'],
        'cv' => [
            'Cabo Verde',
            'Cape Verde'
        ],
        'cw' => [
            'Curaçao',
            'Curacao'
        ],
        'cx' => ['Christmas Island'],
        'cy' => ['Cyprus'],
        'cz' => ['Czech Republic'],
        'de' => ['Germany'],
        'dj' => ['Djibouti'],
        'dk' => ['Denmark'],
        'dm' => ['Dominica'],
        'do' => ['Dominican Republic'],
        'dz' => ['Algeria'],
        'ec' => ['Ecuador'],
        'ee' => ['Estonia'],
        'eg' => ['Egypt'],
        'eh' => ['Western Sahara'],
        'er' => ['Eritrea'],
        'es' => ['Spain'],
        'et' => ['Ethiopia'],
        'fi' => ['Finland'],
        'fj' => ['Fiji'],
        'fk' => [
            'Falkland Islands (Malvinas)',
            'Falkland Islands'
        ],
        'fm' => [
            'Micronesia, Federated States of',
            'Micronesia'
        ],
        'fo' => [
            'Faroe Islands',
            'Faroes',
        ],
        'fr' => ['France'],
        'ga' => ['Gabon'],
        'gb' => [
            'United Kingdom of Great Britain and Northern Ireland',
            'United Kingdom'
        ],
        'gd' => ['Grenada'],
        'ge' => ['Georgia'],
        'gf' => ['French Guiana'],
        'gg' => ['Guernsey'],
        'gh' => ['Ghana'],
        'gi' => ['Gibraltar'],
        'gl' => ['Greenland'],
        'gm' => ['Gambia'],
        'gn' => ['Guinea'],
        'gp' => ['Guadeloupe'],
        'gq' => ['Equatorial Guinea'],
        'gr' => ['Greece'],
        'gs' => ['South Georgia and the South Sandwich Islands'],
        'gt' => ['Guatemala'],
        'gu' => ['Guam'],
        'gw' => ['Guinea-Bissau'],
        'gy' => ['Guyana'],
        'hk' => ['Hong Kong'],
        'hm' => ['Heard Island and McDonald Islands'],
        'hn' => ['Honduras'],
        'hr' => ['Croatia'],
        'ht' => ['Haiti'],
        'hu' => ['Hungary'],
        'id' => ['Indonesia'],
        'ie' => ['Ireland'],
        'il' => ['Israel'],
        'im' => ['Isle of Man'],
        'in' => ['India'],
        'io' => ['British Indian Ocean Territory'],
        'iq' => ['Iraq'],
        'ir' => [
            'Iran, Islamic Republic of',
            'Iran'
        ],
        'is' => ['Iceland'],
        'it' => ['Italy'],
        'je' => ['Jersey'],
        'jm' => ['Jamaica'],
        'jo' => ['Jordan'],
        'jp' => ['Japan'],
        'ke' => ['Kenya'],
        'kg' => ['Kyrgyzstan'],
        'kh' => ['Cambodia'],
        'ki' => ['Kiribati'],
        'km' => ['Comoros'],
        'kn' => ['Saint Kitts and Nevis'],
        'kp' => [
            'Korea, Democratic People\'s Republic of',
            'North Korea'
        ],
        'kr' => [
            'Korea, Republic of',
            'South Korea'
        ],
        'kw' => ['Kuwait'],
        'ky' => ['Cayman Islands'],
        'kz' => ['Kazakhstan'],
        'la' => [
            'Lao People\'s Democratic Republic',
            'Laos',
        ],
        'lb' => ['Lebanon'],
        'lc' => ['Saint Lucia'],
        'li' => ['Liechtenstein'],
        'lk' => ['Sri Lanka'],
        'lr' => ['Liberia'],
        'ls' => ['Lesotho'],
        'lt' => ['Lithuania'],
        'lu' => ['Luxembourg'],
        'lv' => ['Latvia'],
        'ly' => ['Libya'],
        'ma' => ['Morocco'],
        'mc' => ['Monaco'],
        'md' => [
            'Moldova, Republic of',
            'Moldova'
        ],
        'me' => ['Montenegro'],
        'mf' => [
            'Saint Martin (French part)',
            'Saint Martin',
        ],
        'mg' => ['Madagascar'],
        'mh' => ['Marshall Islands'],
        'mk' => [
            'Macedonia, the former Yugoslav Republic of',
            'Macedonia'
        ],
        'ml' => ['Mali'],
        'mm' => ['Myanmar'],
        'mn' => ['Mongolia'],
        'mo' => ['Macao'],
        'mp' => ['Northern Mariana Islands'],
        'mq' => ['Martinique'],
        'mr' => ['Mauritania'],
        'ms' => ['Montserrat'],
        'mt' => ['Malta'],
        'mu' => ['Mauritius'],
        'mv' => ['Maldives'],
        'mw' => ['Malawi'],
        'mx' => ['Mexico'],
        'my' => ['Malaysia'],
        'mz' => ['Mozambique'],
        'na' => ['Namibia'],
        'nc' => ['New Caledonia'],
        'ne' => ['Niger'],
        'nf' => ['Norfolk Island'],
        'ng' => ['Nigeria'],
        'ni' => ['Nicaragua'],
        'nl' => ['Netherlands'],
        'no' => ['Norway'],
        'np' => ['Nepal'],
        'nr' => ['Nauru'],
        'nu' => ['Niue'],
        'nz' => ['New Zealand'],
        'om' => ['Oman'],
        'pa' => ['Panama'],
        'pe' => ['Peru'],
        'pf' => ['French Polynesia'],
        'pg' => ['Papua New Guinea'],
        'ph' => ['Philippines'],
        'pk' => ['Pakistan'],
        'pl' => ['Poland'],
        'pm' => ['Saint Pierre and Miquelon'],
        'pn' => [
            'Pitcairn',
            'Pitcairn Islands'
        ],
        'pr' => ['Puerto Rico'],
        'ps' => [
            'Palestine, State of',
            'Palestine'
        ],
        'pt' => ['Portugal'],
        'pw' => ['Palau'],
        'py' => ['Paraguay'],
        'qa' => ['Qatar'],
        're' => [
            'Réunion',
            'Reunion',
        ],
        'ro' => ['Romania'],
        'rs' => ['Serbia'],
        'ru' => [
            'Russian Federation',
            'Russia'
        ],
        'rw' => ['Rwanda'],
        'sa' => ['Saudi Arabia'],
        'sb' => ['Solomon Islands'],
        'sc' => ['Seychelles'],
        'sd' => ['Sudan'],
        'se' => ['Sweden'],
        'sg' => ['Singapore'],
        'sh' => [
            'Saint Helena, Ascension and Tristan da Cunha',
            'Saint Helena'
        ],
        'si' => ['Slovenia'],
        'sj' => ['Svalbard and Jan Mayen'],
        'sk' => ['Slovakia'],
        'sl' => ['Sierra Leone'],
        'sm' => ['San Marino'],
        'sn' => ['Senegal'],
        'so' => ['Somalia'],
        'sr' => ['Suriname'],
        'ss' => ['South Sudan'],
        'st' => ['Sao Tome and Principe'],
        'sv' => ['El Salvador'],
        'sx' => [
            'Sint Maarten (Dutch part)',
            'Sint Maarten'
        ],
        'sy' => [
            'Syrian Arab Republic',
            'Syria'
        ],
        'sz' => ['Swaziland'],
        'tc' => ['Turks and Caicos Islands'],
        'td' => ['Chad'],
        'tf' => ['French Southern Territories'],
        'tg' => ['Togo'],
        'th' => ['Thailand'],
        'tj' => ['Tajikistan'],
        'tk' => ['Tokelau'],
        'tl' => ['Timor-Leste'],
        'tm' => ['Turkmenistan'],
        'tn' => ['Tunisia'],
        'to' => ['Tonga'],
        'tr' => ['Turkey'],
        'tt' => ['Trinidad and Tobago'],
        'tv' => ['Tuvalu'],
        'tw' => [
            'Taiwan, Province of China',
            'Taiwan'
        ],
        'tz' => [
            'Tanzania, United Republic of',
            'Tanzania'
        ],
        'ua' => ['Ukraine'],
        'ug' => ['Uganda'],
        'um' => ['United States Minor Outlying Islands'],
        'us' => [
            'United States of America',
            'United States',
        ],
        'uy' => ['Uruguay'],
        'uz' => ['Uzbekistan'],
        'va' => [
            'Holy See',
            'Vatican City'
        ],
        'vc' => ['Saint Vincent and the Grenadines'],
        've' => [
            'Venezuela, Bolivarian Republic of',
            'Venezuela'
        ],
        'vg' => [
            'Virgin Islands, British',
            'British Virgin Islands'
        ],
        'vi' => [
            'Virgin Islands, U.S.',
            'US Virgin Islands'
        ],
        'vn' => [
            'Viet Nam',
            'Vietnam'
        ],
        'vu' => ['Vanuatu'],
        'wf' => ['Wallis and Futuna'],
        'ws' => ['Samoa'],
        'ye' => ['Yemen'],
        'yt' => ['Mayotte'],
        'za' => ['South Africa'],
        'zm' => ['Zambia'],
        'zw' => ['Zimbabwe']
    ];

    /**
     * @return string $title
     */
    public function getTitle()
    {
        return $this->title;
    }

    /**
     * @param string $title
     *
     * @return void
     */
    public function setTitle($title)
    {
        $this->title = $title;
    }

    /**
     * @return int $sysLanguage
     */
    public function getSysLanguage()
    {
        return $this->sysLanguage;
    }

    /**
     * @param int $sysLanguage
     *
     * @return void
     */
    public function setSysLanguage($sysLanguage)
    {
        $this->sysLanguage = $sysLanguage;
    }

    /**
     * @return string $flag
     */
    public function getFlag()
    {
        return $this->flag;
    }

    /**
     * @param string $flag
     *
     * @return void
     */
    public function setFlag($flag)
    {
        $this->flag = $flag;
    }

    /**
     * @param bool $preferCustomFlags
     *
     * @return string
     */
    public function getFlagSource($preferCustomFlags = true)
    {
        if (version_compare(TYPO3_branch, '7.1', '>=')) {
            $source = "EXT:core/Resources/Public/Icons/Flags/{$this->flag}.png";
        } else {
            $source = "EXT:t3skin/images/flags/{$this->flag}.png";
        }

        if (version_compare(TYPO3_branch, '7.6', '>=')) {
            $file = 'EXT:core/Resources/Public/Icons/Flags/SVG/' . strtoupper($this->flag) . '.svg';
            if (file_exists(\TYPO3\CMS\Core\Utility\GeneralUtility::getFileAbsFileName($file))) {
                $source = $file;
            }
        }

        if ($preferCustomFlags) {
            $file = 'EXT:ecom_toolbox/Resources/Public/Images/Flags/' . str_ireplace(' ', '-', ($this->translateCountryIso2[ $this->flag ][ 1 ] ?: $this->translateCountryIso2[ $this->flag ][ 0 ])) . '.png';
            if (file_exists(\TYPO3\CMS\Core\Utility\GeneralUtility::getFileAbsFileName($file))) {
                $source = $file;
            }
        }

        return $source;
    }

}