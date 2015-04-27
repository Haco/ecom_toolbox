<?php
/**
 * Created by PhpStorm.
 * User: sebo
 * Date: 17.07.14
 * Time: 09:48
 */

namespace Ecom\EcomToolbox\Domain\Session;

/**
 * FrontendSessionHandler
 */
class FrontendSessionHandler extends SessionHandler {

	/**
	 * @var string
	 */
	protected $mode = 'FE';

}