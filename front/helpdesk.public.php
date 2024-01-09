<?php

/**
 * ---------------------------------------------------------------------
 *
 * GLPI - Gestionnaire Libre de Parc Informatique
 *
 * http://glpi-project.org
 *
 * @copyright 2015-2024 Teclib' and contributors.
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

use Glpi\Application\View\TemplateRenderer;

/** @var array $CFG_GLPI */
global $CFG_GLPI;

include('../inc/includes.php');

function hasFilledSurvey()
{
    global $DB;

    $JOINS = [];
    $WHERE = [
        'is_deleted' => 0
    ];
    $search_users_id = [
        'glpi_tickets_users.users_id' => Session::getLoginUserID(),
        'glpi_tickets_users.type'     => CommonITILActor::REQUESTER
    ];

    $JOINS['INNER JOIN'] = [
        'glpi_ticketsatisfactions' => [
            'ON' => [
                'glpi_ticketsatisfactions' => 'tickets_id',
                'glpi_tickets'             => 'id'
            ]
        ],
        'glpi_entities'            => [
            'ON' => [
                'glpi_tickets'    => 'entities_id',
                'glpi_entities'   => 'id'
            ]
        ]
    ];
    $ORWHERE = ['AND' => $search_users_id];
    if (Session::haveRight('ticket', Ticket::SURVEY)) {
        $ORWHERE[] = ['glpi_tickets.users_id_recipient' => Session::getLoginUserID()];
    }
    $WHERE[] = ['OR' => $ORWHERE];

    $WHERE = array_merge(
        $WHERE,
        [
            'glpi_tickets.status'   => CommonITILObject::CLOSED,
            [
                'OR'                   => [
                    'glpi_entities.inquest_duration' => 0,
                    new \QueryExpression(
                        'DATEDIFF(ADDDATE(' . $DB->quoteName('glpi_ticketsatisfactions.date_begin') .
                            ', INTERVAL ' . $DB->quoteName('glpi_entities.inquest_duration')  . ' DAY), CURDATE()) > 0'
                    )
                ]
            ],
            'glpi_ticketsatisfactions.date_answered'  => null
        ]
    );

    $criteria = [
        'SELECT'          => ['glpi_tickets.id', 'glpi_tickets.date_mod'],
        'DISTINCT'        => true,
        'FROM'            => 'glpi_tickets',
        'LEFT JOIN'       => [
            'glpi_tickets_users'    => [
                'ON' => [
                    'glpi_tickets_users' => 'tickets_id',
                    'glpi_tickets'       => 'id'
                ]
            ],
            'glpi_groups_tickets'   => [
                'ON' => [
                    'glpi_groups_tickets'   => 'tickets_id',
                    'glpi_tickets'          => 'id'
                ]
            ]
        ],
        'WHERE'           => $WHERE + getEntitiesRestrictCriteria('glpi_tickets'),
        'ORDERBY'         => 'glpi_tickets.date_mod DESC'
    ];
    if (count($JOINS)) {
        $criteria = array_merge_recursive($criteria, $JOINS);
    }

    $iterator = $DB->request($criteria);
    $total_row_count = count($iterator);
    return $total_row_count === 0;
}

// Change profile system
if (isset($_REQUEST['newprofile'])) {
    if (isset($_SESSION["glpiprofiles"][$_REQUEST['newprofile']])) {
        Session::changeProfile($_REQUEST['newprofile']);

        if (Session::getCurrentInterface() == "central") {
            Html::redirect($CFG_GLPI['root_doc'] . "/front/central.php");
        } else {
            Html::redirect($_SERVER['PHP_SELF']);
        }
    } else {
        Html::redirect(preg_replace("/entities_id=.*/", "", $_SERVER['HTTP_REFERER']));
    }
}

// Manage entity change
if (isset($_GET["active_entity"])) {
    if (!isset($_GET["is_recursive"])) {
        $_GET["is_recursive"] = 0;
    }
    if (Session::changeActiveEntities($_GET["active_entity"], $_GET["is_recursive"])) {
        if ($_GET["active_entity"] == $_SESSION["glpiactive_entity"]) {
            Html::redirect(preg_replace("/(\?|&|" . urlencode('?') . "|" . urlencode('&') . ")?(entities_id|active_entity).*/", "", $_SERVER['HTTP_REFERER']));
        }
    }
}

// Redirect management
if (isset($_GET["redirect"])) {
    Toolbox::manageRedirect($_GET["redirect"]);
}

// redirect if no create ticket right
if (
    !Session::haveRight('ticket', CREATE)
    && !Session::haveRight('reminder_public', READ)
    && !Session::haveRight("rssfeed_public", READ)
) {
    if (
        Session::haveRight('followup', ITILFollowup::SEEPUBLIC)
        || Session::haveRight('task', TicketTask::SEEPUBLIC)
        || Session::haveRightsOr('ticketvalidation', [
            TicketValidation::VALIDATEREQUEST,
            TicketValidation::VALIDATEINCIDENT
        ])
    ) {
        Html::redirect($CFG_GLPI['root_doc'] . "/front/ticket.php");
    } else if (Session::haveRightsOr('reservation', [READ, ReservationItem::RESERVEANITEM])) {
        Html::redirect($CFG_GLPI['root_doc'] . "/front/reservationitem.php");
    } else if (Session::haveRight('knowbase', KnowbaseItem::READFAQ)) {
        Html::redirect($CFG_GLPI['root_doc'] . "/front/helpdesk.faq.php");
    }
}

Session::checkValidSessionId();

if (isset($_GET['create_ticket'])) {

    // if (!hasFilledSurvey()) {
    //     Session::addMessageAfterRedirect('Harap isi survei kepuasan terlebih dahulu.', true, WARNING);
    //     //Html::redirect($CFG_GLPI['root_doc'] . "/front/ticket.php?criteria%5B0%5D%5Bfield%5D=12&criteria%5B0%5D%5Bsearchtype%5D=equals&criteria%5B0%5D%5Bvalue%5D=6&criteria%5B0%5D%5Blink%5D=AND&criteria%5B1%5D%5Bfield%5D=60&criteria%5B1%5D%5Bsearchtype%5D=contains&criteria%5B1%5D%5Bvalue%5D=%5E&criteria%5B1%5D%5Blink%5D=AND&criteria%5B2%5D%5Bfield%5D=61&criteria%5B2%5D%5Bsearchtype%5D=contains&criteria%5B2%5D%5Bvalue%5D=NULL&criteria%5B2%5D%5Blink%5D=AND&criteria%5B3%5D%5Bfield%5D=4&criteria%5B3%5D%5Bsearchtype%5D=equals&criteria%5B3%5D%5Bvalue%5D=3&criteria%5B3%5D%5Blink%5D=AND&reset=reset");

    //     //redirect to satisfaction survey form
    //     $ticket_satisfactions_id = Ticket::getIDTicketSatisfactions();
    //     Html::redirect($CFG_GLPI['root_doc'] . "/front/ticket.form.php?id=" . $ticket_satisfactions_id . "&forcetab=Ticket$3");
    // }

<<<<<<< HEAD
=======
        //redirect to satisfaction survey form
        $ticket_satisfactions_id = Ticket::getIDTicketSatisfactions();
        Html::redirect($CFG_GLPI['root_doc'] . "/front/ticket.form.php?id=" . $ticket_satisfactions_id . "&forcetab=Ticket$3");
    }

>>>>>>> 429933fc5 (add field hidden bmn_value,js,used current email)
    Html::helpHeader(__('New ticket'), "create_ticket");
    $ticket = new Ticket();
    $ticket->showFormHelpdesk(Session::getLoginUserID());
} else {
    Html::helpHeader(__('Home'));

    $password_alert = "";
    $user = new User();
    $user->getFromDB(Session::getLoginUserID());

    $ticket_summary = "";
    $survey_list    = "";
    if (Session::haveRight('ticket', CREATE)) {
        $ticket_summary = Ticket::showCentralCount(true, false);
        $survey_list    = Ticket::showCentralList(0, "survey", false, false);
    }

    // $reminder_list = "";
    // if (Session::haveRight("reminder_public", READ)) {
    //     $reminder_list = Reminder::showListForCentral(false, false);
    // }

    // $rss_feed = "";
    // if (Session::haveRight("rssfeed_public", READ)) {
    //     $rss_feed = RSSFeed::showListForCentral(false, false);
    // }

    // banner beranda
    echo "<div class='d-flex mb-3'> <img class='d-flex flex-wrap align-items-center' alt='HaloSIS Quote' src='../pics/layout/global_layout_quote.png'/></div>";
    //search bar
    echo "<div style='  background-color:transparent;padding-top:10px;'>";
    $ki = new KnowbaseItem();
    $ki->searchForm($_GET);
    echo "</div>";

    // $kb_popular    = "";
    // $kb_recent     = "";
    // $kb_lastupdate = "";

    if (Session::haveRight('knowbase', KnowbaseItem::READFAQ)) {
        // $kb_popular    = KnowbaseItem::showRecentPopular("popular");
        // $kb_recent     = KnowbaseItem::showRecentPopular("recent");
        // $kb_lastupdate = KnowbaseItem::showRecentPopular("lastupdate");
        // echo "<div class='card mb-4'><div class='card-body'><table class='table mx-auto'><tr class='noHover'><td class='center top'>";
        // $kb_popular = KnowbaseItem::showRecentPopular("recent");
        //     echo "</td><td class='center top'>";
        // $kb_recent = KnowbaseItem::showRecentPopular("lastupdate");
        //     echo "</td><td class='center top'>";
        // $kb_lastupdate = KnowbaseItem::showRecentPopular("popular");
        //     echo "</td></tr>";
        //     echo "</table></div></div>";
        $kb_popular    = KnowbaseItem::showMostPopular("popular");
    };

    Html::requireJs('masonry');
    TemplateRenderer::getInstance()->display('pages/self-service/home.html.twig', [
        'password_alert' => $password_alert,
        'ticket_summary' => $ticket_summary,
        'survey_list'    => $survey_list,
        // 'reminder_list'  => $reminder_list,
        // 'rss_feed'       => $rss_feed,
        // 'kb_popular'     => $kb_popular,
        // 'kb_recent'      => $kb_recent,
        // 'kb_lastupdate'  => $kb_lastupdate,
    ]);
}

Html::helpFooter();
