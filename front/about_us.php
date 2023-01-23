<?php

/**
 * ---------------------------------------------------------------------
 *
 * GLPI - Gestionnaire Libre de Parc Informatique
 *
 * http://glpi-project.org
 *
 * @copyright 2015-2022 Teclib' and contributors.
 * @copyright 2003-2014 by the INDEPNET Development Team.
 * @licence   https://www.gnu.org/licenses/gpl-3.0.html
 *
 * ---------------------------------------------------------------------
 *
 * LICENSE
 *
 * This file is part of GLPI.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 *
 * ---------------------------------------------------------------------
 */

include('../inc/includes.php');

// Redirect management
if (isset($_GET["redirect"])) {
    Toolbox::manageRedirect($_GET["redirect"]);
}

Session::checkFaqAccess();

if (Session::getLoginUserID()) {
    Html::helpHeader(__('Tentang Kami'), 'tentang_kami');
} else {
    $_SESSION["glpilanguage"] = $_SESSION['glpilanguage'] ?? $CFG_GLPI['language'];
   // Anonymous FAQ
    Html::simpleHeader(__('Tentang Kami'), [
        __('Authentication') => '/',
        __('Tentang Kami')   => '/front/about_us.php'
    ]);
}


echo "<img src='" . $CFG_GLPI["root_doc"] . "/pics/about/HaloSIS-2.png' width=auto height= auto alt='" . "'>";

Html::helpFooter();
