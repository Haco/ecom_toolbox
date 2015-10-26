<?php
/**
 * Created by PhpStorm.
 * User: sebo
 * Date: 17.07.14
 * Time: 09:39
 */

namespace Ecom\EcomToolbox\Domain\Session;

/**
 * SessionHandler
 */
class SessionHandler {

	/**
	 * Keeps TYPO3 mode.
	 * Either 'FE' or 'BE'.
	 *
	 * @var string
	 */
	protected $mode = NULL;

	/**
	 * The User-Object with the session-methods.
	 * Either $GLOBALS['BE_USER'] or $GLOBALS['TSFE']->fe_user.
	 *
	 * @var object
	 */
	protected $sessionObject = NULL;

	/**
	 * The key the data is stored in the session.
	 * @var string
	 */
	protected $storageKey = 'tx_ecompc';

	/**
	 * Class constructor.
	 *
	 * @param  string $mode
	 * @throws \Exception
	 */
	public function __construct($mode = NULL) {
		if ( $mode ) {
			$this->mode = $mode;
		}

		if ( $this->mode === NULL || ( $this->mode !== 'BE' && $this->mode !== 'FE' ) ) {
			throw new \Exception( 'TYPO3-Mode is not defined!', 1388660107 );
		}
		$this->sessionObject = $this->mode === 'BE' ? $GLOBALS['BE_USER'] : $GLOBALS['TSFE']->fe_user;
	}

	/**
	 * @return string
	 */
	public function getStorageKey() {
		return $this->storageKey;
	}

	/**
	 * @param  string $storageKey
	 * @return void
	 */
	public function setStorageKey($storageKey) {
		$this->storageKey = $storageKey;
	}

	/**
	 * Store value in session
	 *
	 * @param string $key
	 * @param mixed  $value
	 * @param string $storageKey
	 * @return void
	 */
	public function store($key, $value, $storageKey = '') {
		$sessionData = $this->sessionObject->getSessionData($storageKey ?: $this->storageKey);
		$sessionData[ $key ] = $value;
		$this->sessionObject->setAndSaveSessionData( $storageKey ?: $this->storageKey, $sessionData );
	}

	/**
	 * Delete value in session
	 *
	 * @param string $key
	 * @return void
	 */
	public function delete($key) {
		$sessionData = $this->sessionObject->getSessionData($this->storageKey);
		unset($sessionData[ $key ]);
		$this->sessionObject->setAndSaveSessionData( $this->storageKey, $sessionData );
	}

	/**
	 * Delete all values in session except of currency
	 *
	 * @return void
	 */
	public function deleteAll() {
		$sessionData = $this->sessionObject->getSessionData( $this->storageKey );
		$this->sessionObject->setAndSaveSessionData( $this->storageKey, $sessionData['currency'] );
	}

	/**
	 * Read value from session
	 *
	 * @param string $key
	 * @param string $storageKey
	 * @return mixed
	 */
	public function get($key, $storageKey = '') {
		$sessionData = $this->sessionObject->getSessionData( $storageKey ?: $this->storageKey );
		return isset( $sessionData[ $key ] ) ? $sessionData[ $key ] : NULL;
	}

}