<?php
namespace TYPO3\CMS\Fluid\ViewHelpers\Ecom;

	/**                                                                       *
	 * This script belongs to the FLOW3 package "Fluid".                      *
	 *                                                                        *
	 * It is free software; you can redistribute it and/or modify it under    *
	 * the terms of the GNU Lesser General Public License as published by the *
	 * Free Software Foundation, either version 3 of the License, or (at your *
	 * option) any later version.                                             *
	 *                                                                        *
	 * This script is distributed in the hope that it will be useful, but     *
	 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHAN-    *
	 * TABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser       *
	 * General Public License for more details.                               *
	 *                                                                        *
	 * You should have received a copy of the GNU Lesser General Public       *
	 * License along with the script.                                         *
	 * If not, see http://www.gnu.org/licenses/lgpl.html                      *
	 *                                                                        *
	 * The TYPO3 project - inspiring people to share!                         *
	 *                                                                        */

/**
 * Class RandomColorViewHelper
 *
 * @package TYPO3\CMS\Fluid\ViewHelpers\Ecom
 */
class RandomColorViewHelper extends \TYPO3\CMS\Fluid\Core\ViewHelper\AbstractViewHelper {

	/**
	 * @var string
	 */
	private $mode = 'hex';

	/**
	 * @var array
	 * @see http://colors.findthedata.com/
	 */
	protected $cssColorSet = [
		[ 245, 255, 250 ], // Mint cream
		[ 85, 107, 47 ],   // Dark Olive Green
		[ 30, 144, 255 ],  // Dodger Blue
		[ 245, 245, 220 ], // Beige
		[ 46, 255, 139 ],  // Sea Green
		[ 135, 206, 250 ], // Light Sky Blue
		[ 255, 255, 240 ], // Ivory
		[ 105, 105, 105 ], // Dim Gray
		[ 0, 139, 139 ],   // Dark Cyan
		[ 211, 211, 211 ], // Light Gray
		[ 255, 228, 196 ], // Bisque
		[ 240, 255, 240 ], // Honeydew
		[ 222, 184, 135 ], // Burlywood
		[ 230, 230, 250 ], // Lavender Mist
		[ 255, 255, 224 ], // Light Yellow
		[ 144, 238, 144 ], // Light Green
		[ 0, 255, 255 ],   // Aqua
		[ 255, 69, 0 ],    // Orange-Red
		[ 255, 222, 173 ], // Navajo-White
		[ 199, 21, 133 ],  // Medium Violet-Red
		[ 124, 252, 0 ],   // Lawn Green
		[ 238, 130, 238 ], // Lavender Magenta
		[ 220, 220, 220 ], // Gainsboro
		[ 148, 0, 211 ],   // Dark Violet
		[ 0, 191, 255 ],   // Deep Sky Blue
		[ 152, 251, 152 ], // Pale Green
		[ 240, 255, 255 ], // Azure Mist
		[ 143, 188, 143 ], // Dark Sea Green
		[ 255, 160, 122 ], // Light Salmon
		[ 255, 0, 255 ],   // Fuchsia
		[ 176, 196, 222 ], // Light Steel Blue
		[ 154, 205, 50 ],  // Yellow-Green
		[ 205, 92, 92 ],   // Indian Red
		[ 224, 255, 255 ], // Light Cyan
		[ 250, 235, 215 ], // Moccasin
		[ 65, 105, 225 ],  // Royal Blue (Web)
		[ 255, 105, 180 ], // Hot Pink
		[ 220, 20, 60 ],   // Crimson
		[ 255, 235, 205 ], // Blanched Almond
		[ 255, 255, 255 ], // White
		[ 255, 218, 185 ], // Peach Puff
		[ 210, 105, 30 ],  // Cinnamon
		[ 147, 112, 219 ], // Medium Purple
		[ 0, 255, 0 ],     // Electric Green
		[ 0, 0, 255 ],     // Blue
		[ 248, 248, 255 ], // Ghost White
		[ 128, 128, 0 ],   // Olive
		[ 255, 20, 147 ],  // Deep Pink
		[ 47, 79, 79 ],    // Dark Slate Gray
		[ 139, 0, 139 ],   // Dark Magenta
		[ 255, 250, 240 ], // Floral White
		[ 95, 158, 160 ],  // Cadet Blue
		[ 175, 238, 238 ], // Pale Blue
		[ 192, 192, 192 ], // Silver
		[ 245, 222, 179 ], // Wheat
		[ 238, 232, 170 ], // Pale Goldenrod
		[ 219, 112, 147 ], // Pale Red-Violet
		[ 0, 206, 209 ],   // Dark Turquoise
		[ 210, 180, 140 ], // Tan
		[ 189, 183, 107 ], // Dark Khaki
		[ 0, 128, 0 ],     // Ao (English)
		[ 139, 69, 19 ],   // Saddle Brown
		[ 188, 143, 143 ], // Rosy Brown
		[ 60, 179, 113 ],  // Medium Sea Green
		[ 0, 128, 128 ],   // Teal
		[ 0, 0, 128 ],     // Navy Blue
		[ 135, 206, 235 ], // Sky Blue
		[ 255, 215, 0 ],   // Gold
		[ 138, 43, 226 ],  // Blue-Violet
		[ 218, 165, 32 ],  // Goldenrod
		[ 255, 239, 213 ], // Papaya Whip
		[ 153, 50, 204 ],  // Dark Orchid
		[ 255, 0, 0 ],     // Red
		[ 186, 85, 211 ],  // Medium Orchid
		[ 240, 128, 128 ], // Light Coral
		[ 0, 0, 205 ],     // Medium Blue
		[ 169, 169, 169 ], // Dark Gray
		[ 176, 224, 230 ], // Powder Blue
		[ 173, 255, 47 ],  // Green-Yellow
		[ 221, 160, 221 ], // Medium Lavender Magenta
		[ 250, 240, 230 ], // Linen
		[ 250, 250, 210 ], // Light Goldenrod Yellow
		[ 216, 191, 216 ], // Thistle
		[ 173, 216, 230 ], // Light Blue
		[ 205, 133, 63 ],  // Peru
		[ 25, 25, 112 ],   // Midnight Blue
		[ 127, 255, 212 ], // Aquamarine
		[ 128, 128, 128 ], // Gray
		[ 233, 150, 122 ], // Dark Salmon
		[ 255, 99, 71 ],   // Tomato
		[ 128, 0, 128 ],   // Patriarch
		[ 255, 182, 193 ], // Light Pink
		[ 0, 255, 127 ],   // Guppie Green
		[ 34, 139, 34 ],   // Forest Green
		[ 240, 248, 255 ], // Alice Blue
		[ 178, 34, 34 ],   // Firebrick
		[ 165, 42, 42 ],   // Red-Brown
		[ 255, 240, 245 ], // Lavender Blush
		[ 0, 0, 0 ],       // Black
		[ 255, 127, 80 ],  // Coral
		[ 244, 164, 96 ],  // Sandy Brown
		[ 139, 0, 0 ],     // Dark Red
		[ 240, 230, 140 ], // Light Khaki
		[ 123, 104, 238 ], // Medium Slate Blue
		[ 255, 250, 205 ], // Lemon Chiffon
		[ 255, 228, 225 ], // Misty Rose
		[ 255, 192, 203 ]  // Pink
	];

	/**
	 * @var array
	 */
	protected $ecomColorSet = [
		[ 0, 131, 203 ],   // Blue
		[ 255, 203, 49 ],  // Yellow
		[ 212, 214, 216 ], // Gray
		[ 35, 31, 32 ],    // Black
		[ 232, 153, 59 ]   // Orange
	];

	/**
	 * @param string $mode
	 * @param bool   $useColorSet
	 * @param bool   $addInvertedColorToReturn
	 *
	 * @return array|string
	 */
	public function render($mode = 'hex', $useColorSet = FALSE, $addInvertedColorToReturn = FALSE) {
		$this->mode = strtolower($mode);
		$red = $this->getDecColorPart();
		$green = $this->getDecColorPart();
		$blue = $this->getDecColorPart();

		if ( $useColorSet ) {
			$useColorSet = is_string($useColorSet) && $this->$useColorSet ? $this->$useColorSet : $this->ecomColorSet;
			shuffle($useColorSet);
			$red = $useColorSet[0][0];
			$green = $useColorSet[0][1];
			$blue = $useColorSet[0][2];
		}

		switch ( $this->mode ) {
			case 'dec':
				$color = $red . ',' . $green . ',' . $blue;
				break;
			default:
				$color = str_pad(dechex($red), 2, '0', STR_PAD_LEFT) . str_pad(dechex($green), 2, '0', STR_PAD_LEFT) . str_pad(dechex($blue), 2, '0', STR_PAD_LEFT);
		}

		return $addInvertedColorToReturn ? [
			'normal' => $color,
			'inverted' => $this->inverseColor($red, $green, $blue)
		] : $color;
	}

	/**
	 * @return int
	 */
	private function getDecColorPart() {
		return mt_rand(0, 255);
	}

	private function inverseColor($r = 0, $g = 0, $b = 0) {
		$invertedRed = 255 - $r;
		$invertedRed = $invertedRed < 0 ? 0 : $invertedRed;

		$invertedGreen = 255 - $g;
		$invertedGreen = $invertedGreen < 0 ? 0 : $invertedGreen;

		$invertedBlue = 255 - $b;
		$invertedBlue = $invertedBlue < 0 ? 0 : $invertedBlue;

		switch ( $this->mode ) {
			case 'dec':
				return $invertedRed . ',' . $invertedGreen . ',' . $invertedBlue;
				break;
			default:
				return str_pad(dechex($invertedRed), 2, '0', STR_PAD_LEFT) . str_pad(dechex($invertedGreen), 2, '0', STR_PAD_LEFT) . str_pad(dechex($invertedBlue), 2, '0', STR_PAD_LEFT);
		}
	}
}
