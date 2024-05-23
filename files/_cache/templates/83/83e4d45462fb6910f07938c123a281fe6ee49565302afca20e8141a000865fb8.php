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

/* layout/page_card_notlogged.html.twig */
class __TwigTemplate_8ea6c7b522113d5fc2fa7636c8f75d21dd73641a5e99f7d93f58fc00aa4aa84c extends Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
            'content_block' => [$this, 'block_content_block'],
            'footer_block' => [$this, 'block_footer_block'],
            'javascript_block' => [$this, 'block_javascript_block'],
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 33
        yield "
";
        // line 34
        $context["theme"] = $this->extensions['Glpi\Application\View\Extension\ConfigExtension']->config("palette");
        // line 35
        if ( !array_key_exists("css_files", $context)) {
            // line 36
            yield "   ";
            $context["css_files"] = [["path" => "public/lib/base.css"], ["path" => (("css/palettes/" .             // line 38
($context["theme"] ?? null)) . ".scss")]];
            // line 40
            yield "   ";
        }
        // line 42
        if ( !array_key_exists("js_files", $context)) {
            // line 43
            yield "   ";
            $context["js_files"] = [["path" => "public/lib/base.js"], ["path" => "js/common.js"], ["path" => "public/lib/fuzzy.js"]];
        }
        // line 49
        yield "
";
        // line 50
        yield Twig\Extension\CoreExtension::include($this->env, $context, "layout/parts/head.html.twig");
        yield "
<body class=\"welcome-anonymous\" style=\"background:url(pics/layout/global_layout_background.png);background-repeat:repeat;\">
   <div class=\"page-anonymous\">
      <div class=\"flex-fill d-flex flex-column justify-content-center py-4 mt-4\">
         ";
        // line 54
        $context["style"] = null;
        // line 55
        yield "         ";
        if (array_key_exists("card_md_width", $context)) {
            // line 56
            yield "            ";
            $context["style"] = "max-width: 40rem";
            // line 57
            yield "         ";
        }
        // line 58
        yield "         ";
        if (array_key_exists("card_bg_width", $context)) {
            // line 59
            yield "            ";
            $context["style"] = "max-width: 70rem";
            // line 60
            yield "         ";
        }
        // line 61
        yield "
         <div class=\"container-tight py-6 mt-5\" ";
        // line 62
        if ( !(null === ($context["style"] ?? null))) {
            yield "style=\"";
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["style"] ?? null), "html", null, true);
            yield "\"";
        }
        yield ">
            ";
        // line 68
        yield "            <div class=\"card card-sm shadow-xl\" style=\"border-radius:2em;\">
               <div class=\"card-body shadow-lg\" style=\"border-radius:2em;background-color:#19BC9C;\">
               ";
        // line 70
        yield from $this->unwrap()->yieldBlock('content_block', $context, $blocks);
        // line 71
        yield "               </div>
            </div>

            <div class=\"text-center text-muted mt-3\">
               ";
        // line 75
        yield from $this->unwrap()->yieldBlock('footer_block', $context, $blocks);
        // line 76
        yield "            </div>
         </div>
      </div>
   </div>

   ";
        // line 81
        yield from $this->unwrap()->yieldBlock('javascript_block', $context, $blocks);
        // line 82
        yield "</body>
</html>
";
        return; yield '';
    }

    // line 70
    public function block_content_block($context, array $blocks = [])
    {
        $macros = $this->macros;
        return; yield '';
    }

    // line 75
    public function block_footer_block($context, array $blocks = [])
    {
        $macros = $this->macros;
        return; yield '';
    }

    // line 81
    public function block_javascript_block($context, array $blocks = [])
    {
        $macros = $this->macros;
        return; yield '';
    }

    /**
     * @codeCoverageIgnore
     */
    public function getTemplateName()
    {
        return "layout/page_card_notlogged.html.twig";
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
        return array (  146 => 81,  139 => 75,  132 => 70,  125 => 82,  123 => 81,  116 => 76,  114 => 75,  108 => 71,  106 => 70,  102 => 68,  94 => 62,  91 => 61,  88 => 60,  85 => 59,  82 => 58,  79 => 57,  76 => 56,  73 => 55,  71 => 54,  64 => 50,  61 => 49,  57 => 43,  55 => 42,  52 => 40,  50 => 38,  48 => 36,  46 => 35,  44 => 34,  41 => 33,);
    }

    public function getSourceContext()
    {
        return new Source("", "layout/page_card_notlogged.html.twig", "D:\\Data Aplikasi\\xampp php 8.0.2\\htdocs\\merging-manual\\halobps-rebase\\templates\\layout\\page_card_notlogged.html.twig");
    }
}
