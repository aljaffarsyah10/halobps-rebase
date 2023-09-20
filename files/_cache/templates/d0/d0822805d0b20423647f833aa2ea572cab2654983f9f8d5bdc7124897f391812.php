<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\CoreExtension;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* layout/parts/page_header.html.twig */
class __TwigTemplate_78e92cc7afaacfa23a5636ba4d419325d8005d85029755f679ed615be6149b93 extends Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 33
        yield "
";
        // line 34
        $context["anonymous"] = (null === $this->extensions['Glpi\Application\View\Extension\SessionExtension']->session("glpiactiveprofile"));
        // line 35
        yield "
";
        // line 36
        $context["is_vertical"] = ($this->extensions['Glpi\Application\View\Extension\SessionExtension']->userPref("page_layout") == "vertical");
        // line 37
        yield "
<body class=\"";
        // line 38
        yield ((($this->extensions['Glpi\Application\View\Extension\SessionExtension']->userPref("fold_menu") && ($context["is_vertical"] ?? null))) ? ("navbar-collapsed") : (""));
        yield " ";
        yield ((($context["is_vertical"] ?? null)) ? ("vertical-layout") : ("horizontal-layout"));
        yield " ";
        yield ((($context["is_debug_active"] ?? null)) ? ("debug-active") : (""));
        yield "\">
   ";
        // line 39
        if ((Twig\Extension\CoreExtension::constantIsDefined("SKIP_UPDATES") && ($this->extensions['Glpi\Application\View\Extension\PhpExtension']->call("Update::isDbUpToDate") == false))) {
            // line 40
            yield "      <div class=\"banner-need-update\">
         ";
            // line 41
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(__("You are bypassing a needed update"), "html", null, true);
            yield "
      </div>
   ";
        }
        // line 44
        yield "   ";
        yield Twig\Extension\CoreExtension::include($this->env, $context, "layout/parts/impersonate_banner.html.twig");
        yield "
   ";
        // line 45
        yield Twig\Extension\CoreExtension::include($this->env, $context, "components/messages_after_redirect_toasts.html.twig", ["display_container" => true]);
        yield "

   <div class=\"page\">

      ";
        // line 49
        if (($context["is_vertical"] ?? null)) {
            // line 50
            yield "      <aside class=\"navbar navbar-vertical navbar-expand-lg sticky-lg-top sidebar\">
         <div class=\"container-fluid\">
            <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbar-menu\">
               <span class=\"navbar-toggler-icon\"></span>
            </button>

            <a href=\"";
            // line 56
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape($this->extensions['Glpi\Application\View\Extension\RoutingExtension']->indexPath(), "html", null, true);
            yield "\" accesskey=\"1\" title=\"";
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(__("Home"), "html", null, true);
            yield "\"
               class=\"navbar-brand\">
               <span class=\"glpi-logo\"></span>
            </a>

            ";
            // line 61
            if ( !($context["anonymous"] ?? null)) {
                // line 62
                yield "               <span class=\"d-none d-lg-inline-block\">
                   ";
                // line 63
                yield Twig\Extension\CoreExtension::include($this->env, $context, "layout/parts/goto_button.html.twig");
                yield "
               </span>
            ";
            }
            // line 66
            yield "
            ";
            // line 67
            if ( !(null === ($context["user"] ?? null))) {
                // line 68
                yield "               ";
                // line 69
                yield "               <div class=\"d-lg-none\">
                  ";
                // line 70
                yield Twig\Extension\CoreExtension::include($this->env, $context, "layout/parts/user_header.html.twig");
                yield "
               </div>
            ";
            }
            // line 73
            yield "
            ";
            // line 74
            if ( !($context["anonymous"] ?? null)) {
                // line 75
                yield "               <div class=\"collapse navbar-collapse\" id=\"navbar-menu\">
                   <span class=\"d-inline-block d-lg-none ms-2\">
                       ";
                // line 77
                yield Twig\Extension\CoreExtension::include($this->env, $context, "layout/parts/goto_button.html.twig");
                yield "
                   </span>
                   ";
                // line 79
                yield Twig\Extension\CoreExtension::include($this->env, $context, "layout/parts/menu.html.twig");
                yield "


                  <p class=\"text-start\">
                     <button class=\"btn btn-sm btn-ghost-secondary  ";
                // line 83
                yield ((($context["is_debug_active"] ?? null)) ? ("mb-4") : ("mb-2"));
                yield " reduce-menu d-none d-md-block\">
                        <span class=\"menu-label\">";
                // line 84
                yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(__("Collapse menu"), "html", null, true);
                yield "</span>
                     </button>
                  </p>
               </div>
            ";
            }
            // line 89
            yield "            <style>
               /*(Rihan Y. | 20-09-2023) CSS For Aside navbar floating circle background (KipApp - Settama Menjawab)*/
               .context {
               width: 100%;
               position: absolute;
               top:50vh;
               
               }

               .area{
                  
               background: -webkit-linear-gradient(to left, #8f94fb, #4e54c8);  
               width: 100%;
               height:100%;
               z-index:-100;
               position: absolute;
               
               }

               .circles{
               position: absolute;
               top: 0;
               left: 0;
               width: 100%;
               height: 100%;
               overflow: hidden;
               }

               .circles li{
               position: absolute;
               display: block;
               list-style: none;
               width: 20px;
               height: 20px;
               background: rgba(255, 255, 255, 0.2);
               animation: animate 25s linear infinite;
               bottom: -150px;
               
               }

               .circles li:nth-child(1){
               left: 25%;
               width: 80px;
               height: 80px;
               animation-delay: 0s;
               }


               .circles li:nth-child(2){
               left: 10%;
               width: 20px;
               height: 20px;
               animation-delay: 2s;
               animation-duration: 12s;
               }

               .circles li:nth-child(3){
               left: 70%;
               width: 20px;
               height: 20px;
               animation-delay: 4s;
               }

               .circles li:nth-child(4){
               left: 40%;
               width: 60px;
               height: 60px;
               animation-delay: 0s;
               animation-duration: 18s;
               }

               .circles li:nth-child(5){
               left: 65%;
               width: 20px;
               height: 20px;
               animation-delay: 0s;
               }

               .circles li:nth-child(6){
               left: 75%;
               width: 110px;
               height: 110px;
               animation-delay: 3s;
               }

               .circles li:nth-child(7){
               left: 35%;
               width: 150px;
               height: 150px;
               animation-delay: 7s;
               }

               .circles li:nth-child(8){
               left: 50%;
               width: 25px;
               height: 25px;
               animation-delay: 15s;
               animation-duration: 45s;
               }

               .circles li:nth-child(9){
               left: 20%;
               width: 15px;
               height: 15px;
               animation-delay: 2s;
               animation-duration: 35s;
               }

               .circles li:nth-child(10){
               left: 85%;
               width: 150px;
               height: 150px;
               animation-delay: 0s;
               animation-duration: 11s;
               }

               @keyframes animate {

               0%{
                     transform: translateY(0) rotate(0deg);
                     opacity: 1;
                     border-radius: 0;
               }

               100%{
                     transform: translateY(-1000px) rotate(720deg);
                     opacity: 0;
                     border-radius: 50%;
               }

               }
               /* End here */
            </style>
            <div class=\"area\">
               <ul class=\"circles\">
                  <li></li>
                  <li></li>
                  <li></li>
                  <li></li>
                  <li></li>
                  <li></li>
                  <li></li>
               </ul>
            </div>
         </div>
      </aside>
      ";
        }
        // line 236
        yield "
      <header class=\"navbar d-print-none sticky-lg-top shadow-sm ";
        // line 237
        yield ((($this->extensions['Glpi\Application\View\Extension\SessionExtension']->userPref("page_layout") == "vertical")) ? ("navbar-light navbar-expand-md") : ("navbar-dark navbar-expand-xl topbar"));
        yield "\">
         <div class=\"container-fluid flex-xl-nowrap pe-xl-0\">
            ";
        // line 239
        if (($this->extensions['Glpi\Application\View\Extension\SessionExtension']->userPref("page_layout") == "vertical")) {
            // line 240
            yield "               ";
            yield Twig\Extension\CoreExtension::include($this->env, $context, "layout/parts/breadcrumbs.html.twig");
            yield "

                <div class=\"ms-lg-auto d-none d-lg-block flex-grow-1 flex-lg-grow-0\">
                     ";
            // line 243
            yield Twig\Extension\CoreExtension::include($this->env, $context, "layout/parts/global_search_form.html.twig");
            yield "
                </div>

            ";
        } elseif (($this->extensions['Glpi\Application\View\Extension\SessionExtension']->userPref("page_layout") == "horizontal")) {
            // line 247
            yield "               <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbar-menu\">
                  <span class=\"navbar-toggler-icon\"></span>
               </button>

               <a href=\"";
            // line 251
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape($this->extensions['Glpi\Application\View\Extension\RoutingExtension']->indexPath(), "html", null, true);
            yield "\" accesskey=\"1\" title=\"";
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(__("Home"), "html", null, true);
            yield "\"
                  class=\"navbar-brand\">
                  <span class=\"glpi-logo\"></span>
               </a>

               <div class=\"d-lg-none\">
                  ";
            // line 257
            yield Twig\Extension\CoreExtension::include($this->env, $context, "layout/parts/user_header.html.twig");
            yield "
               </div>

               <div class=\"collapse navbar-collapse justify-content-center\" id=\"navbar-menu\">
                  ";
            // line 261
            yield Twig\Extension\CoreExtension::include($this->env, $context, "layout/parts/menu.html.twig");
            yield "
                  <span class=\"ms-xl-2 d-inline-block mt-2 mt-xl-2\">
                     ";
            // line 263
            yield Twig\Extension\CoreExtension::include($this->env, $context, "layout/parts/goto_button.html.twig");
            yield "
                  </span>
               </div>
            ";
        }
        // line 267
        yield "
            <div class=\"ms-md-4 d-none d-lg-block\">
               ";
        // line 269
        yield Twig\Extension\CoreExtension::include($this->env, $context, "layout/parts/user_header.html.twig");
        yield "
            </div>
         </div>
      </header>

      ";
        // line 274
        if (($this->extensions['Glpi\Application\View\Extension\SessionExtension']->userPref("page_layout") == "horizontal")) {
            // line 275
            yield "      <div class=\"navbar navbar-expand-md navbar-light secondary-bar sticky-md-top shadow-sm\">
         <div class=\"container-fluid justify-content-start\">
            ";
            // line 277
            yield Twig\Extension\CoreExtension::include($this->env, $context, "layout/parts/breadcrumbs.html.twig");
            yield "
            <div class=\"ms-md-auto d-none d-md-block flex-grow-1 flex-md-grow-0\">
                ";
            // line 279
            yield Twig\Extension\CoreExtension::include($this->env, $context, "layout/parts/global_search_form.html.twig");
            yield "
            </div>
         </div>
      </div>
      ";
        }
        // line 284
        yield "      ";
        // line 285
        yield "      ";
        // line 286
        yield "      <div class=\"page-wrapper mb-0\">
         <div class=\"page-body container-fluid\">
            <main role=\"main\" id=\"page\" class=\"legacy\">
            ";
        return; yield '';
    }

    /**
     * @codeCoverageIgnore
     */
    public function getTemplateName()
    {
        return "layout/parts/page_header.html.twig";
    }

    /**
     * @codeCoverageIgnore
     */
    public function isTraitable()
    {
        return false;
    }

    /**
     * @codeCoverageIgnore
     */
    public function getDebugInfo()
    {
        return array (  406 => 286,  404 => 285,  402 => 284,  394 => 279,  389 => 277,  385 => 275,  383 => 274,  375 => 269,  371 => 267,  364 => 263,  359 => 261,  352 => 257,  341 => 251,  335 => 247,  328 => 243,  321 => 240,  319 => 239,  314 => 237,  311 => 236,  162 => 89,  154 => 84,  150 => 83,  143 => 79,  138 => 77,  134 => 75,  132 => 74,  129 => 73,  123 => 70,  120 => 69,  118 => 68,  116 => 67,  113 => 66,  107 => 63,  104 => 62,  102 => 61,  92 => 56,  84 => 50,  82 => 49,  75 => 45,  70 => 44,  64 => 41,  61 => 40,  59 => 39,  51 => 38,  48 => 37,  46 => 36,  43 => 35,  41 => 34,  38 => 33,);
    }

    public function getSourceContext()
    {
        return new Source("", "layout/parts/page_header.html.twig", "D:\\Data Aplikasi\\xampp php 8.0.2\\htdocs\\b\\halobps-rebase\\templates\\layout\\parts\\page_header.html.twig");
    }
}
