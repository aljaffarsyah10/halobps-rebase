<?php

    use Glpi\Application\View\TemplateRenderer;

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


    Html::requireJs('masonry');
    TemplateRenderer::getInstance()->display('pages/self-service/about.html.twig', []);

    Html::helpFooter();
