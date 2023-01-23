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

/* pages/login.html.twig */
class __TwigTemplate_3dd253aa866e0440de9dbbe25a80e1c8e2acf8526574dce1723fcfc7c2b714b1 extends Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->blocks = [
            'content_block' => [$this, 'block_content_block'],
            'footer_block' => [$this, 'block_footer_block'],
            'javascript_block' => [$this, 'block_javascript_block'],
        ];
    }

    protected function doGetParent(array $context)
    {
        // line 34
        return "layout/page_card_notlogged.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        $this->parent = $this->loadTemplate("layout/page_card_notlogged.html.twig", "pages/login.html.twig", 34);
        yield from $this->parent->unwrap()->yield($context, array_merge($this->blocks, $blocks));
    }

    // line 36
    public function block_content_block($context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 37
        yield "   <form action=\"";
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape($this->extensions['Glpi\Application\View\Extension\RoutingExtension']->path("front/login.php"), "html", null, true);
        yield "\" method=\"post\" autocomplete=\"off\"  data-submit-once>
      <input type=\"hidden\" name=\"noAUTO\" value=\"";
        // line 38
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["noAuto"] ?? null), "html", null, true);
        yield "\" />
      <input type=\"hidden\" name=\"redirect\" value=\"";
        // line 39
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["redirect"] ?? null), "html", null, true);
        yield "\" />
      <input type=\"hidden\" name=\"_glpi_csrf_token\" value=\"";
        // line 40
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(Session::getNewCSRFToken(), "html", null, true);
        yield "\" />

      <div class=\"row justify-content-center align-items-center my-1\">
         <img class=\"w-75 img-sm\" src=\"pics/layout/global_layout_tagline.png\">
         <div class=\"row justify-content-center align-items-center mx-4 my-3\">
            <input value=\"Login SSO BPS\" formaction=\"#\" class=\"w-50 input-md submit btn btn-primary\" onclick=\"window.location.href='?SSO=1'";
        // line 45
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(CoreExtension::getAttribute($this->env, $this->source, CoreExtension::getAttribute($this->env, $this->source, CoreExtension::getAttribute($this->env, $this->source, ($context["app"] ?? null), "request", [], "any", false, false, false, 45), "request", [], "any", false, false, false, 45), "get", ["redirect_login_sso_bps"], "method", false, false, false, 45), "html", null, true);
        yield "\"/>
         </div>
            ";
        // line 47
        if ((Twig\Extension\CoreExtension::length($this->env->getCharset(), ($context["errors"] ?? null)) > 0)) {
            // line 48
            yield "               <hr />
               <div class=\"alert alert-danger text-dark\" role=\"alert\">
                  ";
            // line 50
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["errors"] ?? null), "html", null, true);
            yield "
               </div>
            ";
        }
        // line 53
        yield "
         ";
        // line 54
        if (($context["right_panel"] ?? null)) {
            // line 55
            yield "            <div class=\"col-auto px-2 text-center\">
               ";
            // line 56
            if ((Twig\Extension\CoreExtension::length($this->env->getCharset(), ($context["text_login"] ?? null)) > 0)) {
                // line 57
                yield "                  <div class=\"rich_text_container\">
                     ";
                // line 58
                yield $this->extensions['Glpi\Application\View\Extension\DataHelpersExtension']->getSafeHtml(($context["text_login"] ?? null));
                yield "
                  </div>
               ";
            }
            // line 61
            yield "
               ";
            // line 62
            if ($this->extensions['Glpi\Application\View\Extension\ConfigExtension']->config("use_public_faq")) {
                // line 63
                yield "                  <hr />

                  <a class=\"btn btn-outline-secondary btn-icon\" href=\"front/helpdesk.faq.php\">
                     <i class=\"fas fa-question\"></i>&nbsp;
                     ";
                // line 67
                yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(__("FAQ"), "html", null, true);
                yield "
                  </a>
               ";
            }
            // line 70
            yield "
               ";
            // line 71
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape($this->extensions['Glpi\Application\View\Extension\PluginExtension']->callPluginHook(Twig\Extension\CoreExtension::constant("Glpi\\Plugin\\Hooks::DISPLAY_LOGIN")), "html", null, true);
            yield "
            </div>
         ";
        }
        // line 74
        yield "      </div>
   </form>
";
        return; yield '';
    }

    // line 78
    public function block_footer_block($context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 79
        yield "   ";
        yield ($context["copyright_message"] ?? null);
        yield "
";
        return; yield '';
    }

    // line 82
    public function block_javascript_block($context, array $blocks = [])
    {
        $macros = $this->macros;
        yield "<script type=\"text/javascript\">
   \$(function () {
\$('#login_name').focus();
});

</script>
";
        return; yield '';
    }

    /**
     * @codeCoverageIgnore
     */
    public function getTemplateName()
    {
        return "pages/login.html.twig";
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
        return array (  155 => 82,  147 => 79,  143 => 78,  136 => 74,  130 => 71,  127 => 70,  121 => 67,  115 => 63,  113 => 62,  110 => 61,  104 => 58,  101 => 57,  99 => 56,  96 => 55,  94 => 54,  91 => 53,  85 => 50,  81 => 48,  79 => 47,  74 => 45,  66 => 40,  62 => 39,  58 => 38,  53 => 37,  49 => 36,  38 => 34,);
    }

    public function getSourceContext()
    {
        return new Source("", "pages/login.html.twig", "D:\\Data Aplikasi\\xampp php 8.0.2\\htdocs\\b\\halobps-rebase\\templates\\pages\\login.html.twig");
    }
}
