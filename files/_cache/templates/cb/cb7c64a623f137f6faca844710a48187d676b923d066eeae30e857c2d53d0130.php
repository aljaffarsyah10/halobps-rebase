<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* layout/parts/page_footer.html.twig */
class __TwigTemplate_659c3d5fc833d692cdd4792a644aba9a3716e5ac358cf1736f40e3a69b45d047 extends Template
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
        echo "
            </main> ";
        // line 35
        echo "         </div> ";
        // line 36
        echo "      </div> ";
        // line 37
        echo "   </div> ";
        // line 38
        echo "
   ";
        // line 46
        echo "   <div class=\"footer d-flex flex-column\">
      <span class=\"text-center\">GLPI - Gestionnaire Libre de Parc Informatique</span>
   </div>


   ";
        // line 51
        if ($this->extensions['Glpi\Application\View\Extension\ConfigExtension']->config("maintenance_mode")) {
            // line 52
            echo "      <div id=\"maintenance-float\">
         <a href=\"";
            // line 53
            echo twig_escape_filter($this->env, $this->extensions['Glpi\Application\View\Extension\RoutingExtension']->path("front/config.form.php?forcetab=Config\$5"), "html", null, true);
            echo "\">GLPI MAINTENANCE MODE</a>
      </div>
   ";
        }
        // line 56
        echo "
   ";
        // line 57
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["js_files"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["js_file"]) {
            // line 58
            echo "      <script type=\"text/javascript\" src=\"";
            echo twig_escape_filter($this->env, $this->extensions['Glpi\Application\View\Extension\FrontEndAssetsExtension']->jsPath(twig_get_attribute($this->env, $this->source, $context["js_file"], "path", [], "any", false, false, false, 58), (((twig_get_attribute($this->env, $this->source, $context["js_file"], "options", [], "any", true, true, false, 58) &&  !(null === twig_get_attribute($this->env, $this->source, $context["js_file"], "options", [], "any", false, false, false, 58)))) ? (twig_get_attribute($this->env, $this->source, $context["js_file"], "options", [], "any", false, false, false, 58)) : ([]))), "html", null, true);
            echo "\"></script>
   ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['js_file'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 60
        echo "
   ";
        // line 61
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["js_modules"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["js_file"]) {
            // line 62
            echo "      <script type=\"module\" src=\"";
            echo twig_escape_filter($this->env, $this->extensions['Glpi\Application\View\Extension\FrontEndAssetsExtension']->jsPath(twig_get_attribute($this->env, $this->source, $context["js_file"], "path", [], "any", false, false, false, 62), (((twig_get_attribute($this->env, $this->source, $context["js_file"], "options", [], "any", true, true, false, 62) &&  !(null === twig_get_attribute($this->env, $this->source, $context["js_file"], "options", [], "any", false, false, false, 62)))) ? (twig_get_attribute($this->env, $this->source, $context["js_file"], "options", [], "any", false, false, false, 62)) : ([]))), "html", null, true);
            echo "\"></script>
   ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['js_file'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 64
        echo "
</body>
</html>
";
    }

    /**
     * @codeCoverageIgnore
     */
    public function getTemplateName()
    {
        return "layout/parts/page_footer.html.twig";
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
        return array (  99 => 64,  90 => 62,  86 => 61,  83 => 60,  74 => 58,  70 => 57,  67 => 56,  61 => 53,  58 => 52,  56 => 51,  49 => 46,  46 => 38,  44 => 37,  42 => 36,  40 => 35,  37 => 33,);
    }

    public function getSourceContext()
    {
        return new Source("", "layout/parts/page_footer.html.twig", "D:\\Data Aplikasi\\xampp php 8.0.2\\htdocs\\b\\halobps-rebase\\templates\\layout\\parts\\page_footer.html.twig");
    }
}
