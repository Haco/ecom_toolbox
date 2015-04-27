<?php
/**
 * Created by PhpStorm.
 * User: sebo
 * Date: 17.07.14
 * Time: 09:48
 */

namespace Ecom\EcomToolbox\Domain\Session;

/**
 * BackendSessionHandler
 *
 * @package S3b0
 * @subpackage Ecompc
 */
class BackendSessionHandler extends SessionHandler {

	/**
	 * @var string
	 */
	protected $mode = 'BE';

}