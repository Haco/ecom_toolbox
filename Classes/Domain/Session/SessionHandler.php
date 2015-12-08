<?php
namespace Ecom\EcomToolbox\Domain\Session;


    /***************************************************************
     *
     *  Copyright notice
     *
     *  (c) 2014 Nicolas Scheidler <Nicolas.Scheidler@ecom-ex.com>, ecom instruments GmbH
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
 * SessionHandler
 */
class SessionHandler
{

    /**
     * Keeps TYPO3 mode.
     * Either 'FE' or 'BE'.
     *
     * @var string
     */
    protected $mode = null;

    /**
     * The User-Object with the session-methods.
     * Either $GLOBALS['BE_USER'] or $GLOBALS['TSFE']->fe_user.
     *
     * @var object
     */
    protected $sessionObject = null;

    /**
     * The key the data is stored in the session.
     * @var string
     */
    protected $storageKey = 'ecom';

    /**
     * Class constructor.
     *
     * @param  string $mode
     *
     * @throws \Exception
     */
    public function __construct($mode = null)
    {
        if ($mode) {
            $this->mode = $mode;
        }

        if ($this->mode === null || ($this->mode !== 'BE' && $this->mode !== 'FE')) {
            throw new \Exception('TYPO3-Mode is not defined!', 1388660107);
        }
        $this->sessionObject = $this->mode === 'BE' ? $GLOBALS[ 'BE_USER' ] : $GLOBALS[ 'TSFE' ]->fe_user;
    }

    /**
     * @return string
     * @throws \Exception
     */
    public function getStorageKey()
    {
        $this->throwMissingSessionStorageKeyException();

        return $this->storageKey;
    }

    /**
     * @param string $storageKey
     *
     * @throws \Exception
     */
    public function setStorageKey($storageKey)
    {
        $this->storageKey = $storageKey;
        $this->throwMissingSessionStorageKeyException();
    }

    /**
     * @throws \Exception
     */
    public function throwMissingSessionStorageKeyException()
    {
        if (!$this->storageKey) {
            throw new \Exception('No session storage key given!', 1449151277);
        }
    }

    /**
     * Store value in session
     *
     * @param string $key
     * @param mixed  $value
     * @param string $storageKey
     *
     * @return void
     */
    public function store($key, $value, $storageKey = '')
    {
        $sessionData = $this->sessionObject->getSessionData($storageKey ?: $this->storageKey);
        $sessionData[ $key ] = $value;
        $this->sessionObject->setAndSaveSessionData($storageKey ?: $this->storageKey, $sessionData);
    }

    /**
     * Delete value in session
     *
     * @param string $key
     *
     * @return void
     */
    public function delete($key)
    {
        $sessionData = $this->sessionObject->getSessionData($this->storageKey);
        unset($sessionData[ $key ]);
        $this->sessionObject->setAndSaveSessionData($this->storageKey, $sessionData);
    }

    /**
     * Delete all values in session (except of currency)
     *
     * @return void
     */
    public function deleteAll()
    {
        $sessionData = $this->sessionObject->getSessionData($this->storageKey);
        $this->sessionObject->setAndSaveSessionData($this->storageKey, $sessionData[ 'currency' ]);
    }

    /**
     * Read value from session
     *
     * @param string $key
     * @param string $storageKey
     *
     * @return mixed
     */
    public function get($key, $storageKey = '')
    {
        $sessionData = $this->sessionObject->getSessionData($storageKey ?: $this->storageKey);

        return isset($sessionData[ $key ]) ? $sessionData[ $key ] : null;
    }

}