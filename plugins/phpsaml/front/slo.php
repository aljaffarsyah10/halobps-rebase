<?php

/**
 * SAMPLE Code to demonstrate how to initiate a SAML Authorization request
 *
 * When the user visits this URL, the browser will be redirected to the SSO
 * IdP with an authorization request. If successful, it will then be
 * redirected to the consume URL (specified in settings) with the auth
 * details.
 */
 
// session_start();
// include ('../../../inc/includes.php');
// die();

// $phpsaml = new PluginPhpsamlPhpsaml();

// $auth = new OneLogin\Saml2\Auth();
// if (!isset($_SESSION['samlUserdata'])) {
// 	$auth->login();
// } else {
//     $indexUrl = str_replace('/sso.php', '/index.php', Utils::getSelfURLNoQuery());
//     Utils::redirect($indexUrl);
// }

/**
 * (Rihan Y. | 20-09-2023) The SLO seems worked and successfully clear the session from GLPI and SSO BPS, but it couldn't redirect properly with session and included class on this code. The best workaround was byppassing it with header and status only
 */
 
 /* Redirect browser: change the location based on latest server deployment place, no need to change 'true' value for default header replacement and default response code (302)*/ 
header("Location: https://halosis.web.bps.go.id"); 
/* Make sure that code below does not get executed when we redirect. */
exit;
?>