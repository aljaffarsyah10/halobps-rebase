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

/* layout/parts/profile_selector.html.twig */
class __TwigTemplate_5d748a7a03d91eb889e5590edfd40819eef8fab71fd99c45b4c76d14e06e88ba extends Template
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
        $context["rand"] = Twig\Extension\CoreExtension::random($this->env->getCharset());
        // line 35
        yield "
<div class=\"dropdown dropstart\">
   <button class=\"dropdown-item dropdown-toggle\" type=\"button\" data-bs-toggle=\"dropdown\"
           aria-haspopup=\"true\" aria-expanded=\"false\">
      <i class=\"ti ti-user-check\"></i>
      ";
        // line 40
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape($this->extensions['Glpi\Application\View\Extension\DataHelpersExtension']->getVerbatimValue(__((((CoreExtension::getAttribute($this->env, $this->source, $this->extensions['Glpi\Application\View\Extension\SessionExtension']->session("glpiactiveprofile"), "name", [], "array", true, true, false, 40) &&  !(null === (($__internal_compile_0 = $this->extensions['Glpi\Application\View\Extension\SessionExtension']->session("glpiactiveprofile")) && is_array($__internal_compile_0) || $__internal_compile_0 instanceof ArrayAccess ? ($__internal_compile_0["name"] ?? null) : null)))) ? ((($__internal_compile_1 = $this->extensions['Glpi\Application\View\Extension\SessionExtension']->session("glpiactiveprofile")) && is_array($__internal_compile_1) || $__internal_compile_1 instanceof ArrayAccess ? ($__internal_compile_1["name"] ?? null) : null)) : ("")))), "html", null, true);
        yield "
   </button>
   <div class=\"dropdown-menu\" data-bs-popper=\"none\">
      <span class=\"dropdown-header\">";
        // line 43
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(__("Profiles"), "html", null, true);
        yield "</span>
      ";
        // line 44
        $context['_parent'] = $context;
        $context['_seq'] = CoreExtension::ensureTraversable($this->extensions['Glpi\Application\View\Extension\SessionExtension']->session("glpiprofiles"));
        foreach ($context['_seq'] as $context["profile_id"] => $context["profile"]) {
            // line 45
            yield "      <a class=\"dropdown-item ";
            yield ((($context["profile_id"] == (((CoreExtension::getAttribute($this->env, $this->source, $this->extensions['Glpi\Application\View\Extension\SessionExtension']->session("glpiactiveprofile"), "id", [], "array", true, true, false, 45) &&  !(null === (($__internal_compile_2 = $this->extensions['Glpi\Application\View\Extension\SessionExtension']->session("glpiactiveprofile")) && is_array($__internal_compile_2) || $__internal_compile_2 instanceof ArrayAccess ? ($__internal_compile_2["id"] ?? null) : null)))) ? ((($__internal_compile_3 = $this->extensions['Glpi\Application\View\Extension\SessionExtension']->session("glpiactiveprofile")) && is_array($__internal_compile_3) || $__internal_compile_3 instanceof ArrayAccess ? ($__internal_compile_3["id"] ?? null) : null)) : (0)))) ? ("active") : (""));
            yield "\"
         href=\"";
            // line 46
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape($this->extensions['Glpi\Application\View\Extension\RoutingExtension']->indexPath(), "html", null, true);
            yield "?newprofile=";
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape($context["profile_id"], "html", null, true);
            yield "\">
         <i class=\"ti ti-user-check\"></i>";
            // line 47
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape($this->extensions['Glpi\Application\View\Extension\DataHelpersExtension']->getVerbatimValue(__((($__internal_compile_4 = $context["profile"]) && is_array($__internal_compile_4) || $__internal_compile_4 instanceof ArrayAccess ? ($__internal_compile_4["name"] ?? null) : null))), "html", null, true);
            yield "
      </a>
      ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['profile_id'], $context['profile'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 50
        yield "   </div>
</div>

";
        // line 53
        $context["target"] = $this->extensions['Glpi\Application\View\Extension\RoutingExtension']->path("front/central.php");
        // line 54
        if (($this->extensions['Glpi\Application\View\Extension\SessionExtension']->getCurrentInterface() == "helpdesk")) {
            // line 55
            yield "    ";
            $context["target"] = $this->extensions['Glpi\Application\View\Extension\RoutingExtension']->path("front/helpdesk.public.php");
        }
        // line 57
        yield "
";
        // line 58
        $context["current_entity"] = $this->extensions['Glpi\Application\View\Extension\DataHelpersExtension']->getVerbatimValue($this->extensions['Glpi\Application\View\Extension\SessionExtension']->session("glpiactive_entity_name"));
        // line 59
        $context["current_entity_short"] = $this->extensions['Glpi\Application\View\Extension\DataHelpersExtension']->getVerbatimValue($this->extensions['Glpi\Application\View\Extension\SessionExtension']->session("glpiactive_entity_shortname"));
        // line 60
        if ((($context["current_entity"] ?? null) != ($context["current_entity_short"] ?? null))) {
            // line 61
            yield "    ";
            $context["current_entity_short"] = ("... > " . ($context["current_entity_short"] ?? null));
        }
        // line 63
        if ( !Session::isMultiEntitiesMode()) {
            // line 64
            yield "   <span class=\"dropdown-item dropdown-item-text\" title=\"";
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["current_entity"] ?? null), "html", null, true);
            yield "\">
      <i class=\"fa-fw ti ti-stack\"></i>
      ";
            // line 66
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(CoreExtension::getAttribute($this->env, $this->source, $this->extensions['Twig\Extra\String\StringExtension']->createUnicodeString(($context["current_entity_short"] ?? null)), "truncate", [35, "..."], "method", false, false, false, 66), "html", null, true);
            yield "
   </span>
";
        } else {
            // line 69
            yield "    <div class=\"dropdown dropstart\" id=\"entity-tree-dropdown-";
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
            yield "\">
        <a href=\"#\" class=\"dropdown-item dropdown-toggle entity-dropdown-toggle\" data-bs-toggle=\"dropdown\" data-bs-auto-close=\"outside\" title=\"";
            // line 70
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["current_entity"] ?? null), "html", null, true);
            yield "\">
            <i class=\"fa-fw ti ti-stack\"></i>
            ";
            // line 72
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(CoreExtension::getAttribute($this->env, $this->source, $this->extensions['Twig\Extra\String\StringExtension']->createUnicodeString(($context["current_entity_short"] ?? null)), "truncate", [35, "..."], "method", false, false, false, 72), "html", null, true);
            yield "
        </a>
        <div class=\"dropdown-menu p-3\">
            <h3>";
            // line 75
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(__("Select the desired entity"), "html", null, true);
            yield "</h3>

            <div class=\"alert alert-info\" role=\"alert\">
                ";
            // line 78
            $context["shortcut"] = __("Ctrl + Alt + E");
            // line 79
            yield "                ";
            if ((($context["platform"] ?? null) == Twig\Extension\CoreExtension::constant("donatj\\UserAgent\\Platforms::MACINTOSH"))) {
                // line 80
                yield "                    ";
                $context["shortcut"] = __("⌥ (option) + ⌘ (command) + E");
                // line 81
                yield "                ";
            }
            // line 82
            yield "                ";
            yield Twig\Extension\CoreExtension::sprintf(__("Tip: You can call this modal with %s keys combination"), (("<kbd>" . ($context["shortcut"] ?? null)) . "</kbd>"));
            yield "
            </div>
            <div class=\"alert alert-info\" role=\"alert\">
                <i class=\"fas fa-info-circle\"></i>
                <span class=\"ms-2\">
                ";
            // line 87
            $context["recursive_icon"] = ('' === $tmp = \Twig\Extension\CoreExtension::captureOutput((function () use (&$context, $macros, $blocks) {
                // line 88
                yield "                    <i class=\"fas fa-angle-double-down\" title=\"";
                yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(__("+ sub-entities"), "html", null, true);
                yield "\"></i>
                ";
                return; yield '';
            })())) ? '' : new Markup($tmp, $this->env->getCharset());
            // line 90
            yield "                ";
            yield Twig\Extension\CoreExtension::sprintf(__("Click on the %s icon to load the elements of the selected entity, as well as its sub-entities."), ($context["recursive_icon"] ?? null));
            yield "
                </span>
            </div>

            <form id=\"entsearchform";
            // line 94
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
            yield "\">
                <div class=\"input-group\">
                <input type=\"text\" class=\"form-control\" name=\"entsearchtext\" id=\"entsearchtext";
            // line 96
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
            yield "\"
                        placeholder=\"";
            // line 97
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(__("Search entity"), "html", null, true);
            yield "\" autocomplete=\"off\">
                <button type=\"submit\" class=\"btn btn-icon btn-primary\" title=\"";
            // line 98
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(__("Search"), "html", null, true);
            yield "\"
                        data-bs-toggle=\"tooltip\" data-bs-placement=\"top\">
                    <i class=\"ti ti-search\"></i>
                </button>
                <a class=\"btn btn-icon btn-outline-secondary\" href=\"#\" id=\"entsearchtext";
            // line 102
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
            yield "_clear\"
                    title=\"";
            // line 103
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(__("Clear search"), "html", null, true);
            yield "\" data-bs-toggle=\"tooltip\" data-bs-placement=\"top\">
                        <i class=\"ti ti-x\"></i>
                </a>
                <a href=\"";
            // line 106
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["target"] ?? null), "html", null, true);
            yield "?active_entity=all\" class=\"btn btn-secondary\"
                    title=\"";
            // line 107
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(__("Select all"), "html", null, true);
            yield "\" data-bs-toggle=\"tooltip\" data-bs-placement=\"top\">
                    <i class=\"ti ti-eye\"></i>
                </a>
                </div>
            </form>

            <div class=\"fancytree-grid-container flexbox-item-grow entity_tree\">
                <table id=\"tree_entity";
            // line 114
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
            yield "\">
                <colgroup>
                    <col></col>
                </colgroup>
                <thead>
                    <tr>
                        <th class=\"parent-path\"></th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
                </table>
                <div id=\"verticalScrollbar-";
            // line 126
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
            yield "\" style=\"height:100%;\"></div>
            </div>
        </div>
    </div>

    <script type=\"text/javascript\">
    \$(function() {
        var initTree";
            // line 133
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
            yield " = function() {
            if (\$.ui.fancytree.getTree(\"#tree_entity";
            // line 134
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
            yield "\") !== null) {
                return;
            }

            \$('#tree_entity";
            // line 138
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
            yield "').fancytree({
                // load plugins
                extensions: ['filter', 'glyph', 'grid'],

                // Scroll node into visible area, when focused by keyboard
                autoScroll: true,

                // enable font-awesome icons
                glyph: {
                    preset: \"awesome5\",
                    map: {}
                },

                // enable virtual dom, it requires the grid (table extension) plugin
                table: {
                    indentation: 20,       // indent 20px per node level
                    nodeColumnIdx: 0,      // render the node title into the 1st column
                    mergeStatusColumns: false,
                },
                grid: {
                    mergeStatusColumns: false,
                },
                viewport: {
                    enabled: true,
                    count: 15, // number of items to display at once
                },

                // translate strings
                strings: {
                    loading: __(\"Loading...\"),
                    loadError: __(\"Unexpected error.\"),
                    moreData: __(\"More...\"),
                    noData: __(\"No data found\")
                },

                // load data by ajax
                source: {
                    url:  '";
            // line 175
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape($this->extensions['Glpi\Application\View\Extension\RoutingExtension']->path("/ajax/entitytreesons.php"), "html", null, true);
            yield "',
                    cache: false
                },

                // filter plugin options
                filter: {
                    mode: \"hide\", // remove unmatched nodes
                    autoExpand: true, // if results found in children, auto-expand parent
                    nodata: '";
            // line 183
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(__("No entity found"), "html", null, true);
            yield "', // message when no data found
                    highlight: false, // do not highlight matches by wrapping inside tags (when true, this strip the a tag)
                    counter: false, // do not show counters when filtering entity tree
                },

                // load 3rd party scrollbar extension for viewport mode
                preInit: function(event, data) {
                    var tree = data.tree;

                    tree.verticalScrollbar = new PlainScrollbar({
                    alwaysVisible: true,
                    arrows: true,
                    orientation: \"vertical\",
                    onSet: function(numberOfItems) {
                        tree.setViewport({
                            start: Math.round(numberOfItems.start),
                        });
                    },
                    scrollbarElement: document.getElementById(\"verticalScrollbar-";
            // line 201
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
            yield "\"),
                    });
                },

                // update scrollbar when viewport is updated
                updateViewport: function(event, data) {
                    var tree = data.tree;

                    tree.verticalScrollbar.set({
                    start: tree.viewport.start,
                    total: tree.visibleNodeList.length,
                    visible: tree.viewport.count,
                    }, true);  // do not trigger `onSet`

                    initTooltips();
                },

                // update toolips on node expand
                expand: function(event, data) {
                    initTooltips();
                },
            });
        };

      // init Entities tree only when user ask for it (when dropdown is opened)
        document.getElementById('entity-tree-dropdown-";
            // line 226
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
            yield "')
            .addEventListener('show.bs.dropdown', function (event) {
                initTree";
            // line 228
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
            yield "();
            });

        var searchTree = function() {
            var search_text = \$(\"#entsearchtext";
            // line 232
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
            yield "\").val();
            \$.ui.fancytree.getTree(\"#tree_entity";
            // line 233
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
            yield "\").filterBranches(search_text);
        }

        \$('#entsearchform";
            // line 236
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
            yield "').submit(function(event) {
            // cancel submit of entity search form
            event.preventDefault();

            searchTree();
        });

        \$('#entsearchtext";
            // line 243
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
            yield "').keyup(function () {
            var inputsearch = \$(this);
            typewatch(function () {
                if (inputsearch.val().length >= 3) {
                searchTree();
                }
            }, 500);
        }).focus();

        \$('#entsearchtext";
            // line 252
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
            yield "_clear').click(function () {
            \$('#entsearchtext";
            // line 253
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
            yield "').val('');
            searchTree();
        });

        // when the shortcut for entity form is called
        hotkeys('ctrl+alt+e, option+command+e', async function(e) {
            e.stopPropagation();
            e.preventDefault();
            \$('.user-menu-dropdown-toggle').dropdown('show');
            await new Promise(r => setTimeout(r, 100));
            \$('.entity-dropdown-toggle').dropdown('show');
            \$('input[name=entsearchtext]').filter(\":visible\")[0].focus();
        });
    });
    </script>
";
        }
        return; yield '';
    }

    /**
     * @codeCoverageIgnore
     */
    public function getTemplateName()
    {
        return "layout/parts/profile_selector.html.twig";
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
        return array (  411 => 253,  407 => 252,  395 => 243,  385 => 236,  379 => 233,  375 => 232,  368 => 228,  363 => 226,  335 => 201,  314 => 183,  303 => 175,  263 => 138,  256 => 134,  252 => 133,  242 => 126,  227 => 114,  217 => 107,  213 => 106,  207 => 103,  203 => 102,  196 => 98,  192 => 97,  188 => 96,  183 => 94,  175 => 90,  168 => 88,  166 => 87,  157 => 82,  154 => 81,  151 => 80,  148 => 79,  146 => 78,  140 => 75,  134 => 72,  129 => 70,  124 => 69,  118 => 66,  112 => 64,  110 => 63,  106 => 61,  104 => 60,  102 => 59,  100 => 58,  97 => 57,  93 => 55,  91 => 54,  89 => 53,  84 => 50,  75 => 47,  69 => 46,  64 => 45,  60 => 44,  56 => 43,  50 => 40,  43 => 35,  41 => 34,  38 => 33,);
    }

    public function getSourceContext()
    {
        return new Source("", "layout/parts/profile_selector.html.twig", "D:\\Data Aplikasi\\xampp php 8.0.2\\htdocs\\b\\halobps-rebase\\templates\\layout\\parts\\profile_selector.html.twig");
    }
}
