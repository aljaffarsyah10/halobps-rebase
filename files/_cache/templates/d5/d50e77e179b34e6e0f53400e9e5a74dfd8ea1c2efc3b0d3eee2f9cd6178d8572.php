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

/* components/itilobject/selfservice.html.twig */
class __TwigTemplate_1a658be795cb3056d2498b7c97a8dfd3674449f1c1aadc26bee58357a7988915 extends Template
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
        $macros["fields"] = $this->macros["fields"] = $this->loadTemplate("components/form/fields_macros.html.twig", "components/itilobject/selfservice.html.twig", 34)->unwrap();
        // line 35
        yield "
";
        // line 36
        $context["rand"] = Twig\Extension\CoreExtension::random($this->env->getCharset());
        // line 37
        $context["base_field_options"] = ["is_horizontal" => false, "full_width" => true, "full_width_adapt_column" => false, "fields_template" =>         // line 41
($context["itiltemplate"] ?? null), "rand" =>         // line 42
($context["rand"] ?? null)];
        // line 44
        $context["right_field_options"] = Twig\Extension\CoreExtension::merge(($context["base_field_options"] ?? null), ["is_horizontal" => true, "label_class" => "col-lg-3", "input_class" => "col-lg-9"]);
        // line 49
        yield "
<div class=\"container-lg\">

    ";
        // line 52
        if ((($context["has_tickets_to_validate"] ?? null) &&  !Twig\Extension\CoreExtension::testEmpty(($context["url_validate"] ?? null)))) {
            // line 53
            yield "        <div class=\"alert alert-warning\" role=\"alert\">
            ";
            // line 54
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(__("There are some tickets awaiting approval"), "html", null, true);
            yield " — <a href=\"";
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["url_validate"] ?? null), "html", null, true);
            yield "\" class=\"alert-link\">";
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(__("check it out!"), "html", null, true);
            yield "</a>
        </div>
    ";
        }
        // line 57
        yield "
   ";
        // line 58
        yield Twig\Extension\CoreExtension::include($this->env, $context, "components/itilobject/mainform_open.html.twig");
        yield "

   ";
        // line 60
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape($this->extensions['Glpi\Application\View\Extension\PluginExtension']->callPluginHook(Twig\Extension\CoreExtension::constant("Glpi\\Plugin\\Hooks::PRE_ITEM_FORM"), ["item" => ($context["item"] ?? null), "options" => ($context["params"] ?? null)]), "html", null, true);
        yield "

   <div class=\"card\">
        <div class=\"card-header\">
            <h3 class=\"card-title\">
                ";
        // line 65
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(__("Describe the incident or request"), "html", null, true);
        yield "
            </h3>
        </div>

        <div class=\"card-body bg-secondary-lt pt-0\">
            ";
        // line 70
        if (Twig\Extension\CoreExtension::length($this->env->getCharset(), ($context["delegating"] ?? null))) {
            // line 71
            yield "                <div class=\"row align-items-end w-100\">
                    <div class=\"col-sm-6\">

                        ";
            // line 74
            $context["actor_add_form"] = ('' === $tmp = \Twig\Extension\CoreExtension::captureOutput((function () use (&$context, $macros, $blocks) {
                // line 75
                yield "                            <div id=\"delegate_other";
                yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
                yield "\" class=\"card mt-2\">
                                <div class=\"card-body\">
                                    ";
                // line 77
                yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(CoreExtension::getAttribute($this->env, $this->source, $this->extensions['Twig\Extra\String\StringExtension']->createUnicodeString(CoreExtension::getAttribute($this->env, $this->source, ($context["item"] ?? null), "showActorAddFormOnCreate", [Twig\Extension\CoreExtension::constant("CommonITILActor::REQUESTER"),                 // line 79
($context["params"] ?? null)], "method", false, false, false, 77)), "truncate", [0], "method", false, false, false, 80), "html", null, true);
                // line 80
                yield "
                                </div>
                            </div>
                        ";
                return; yield '';
            })())) ? '' : new Markup($tmp, $this->env->getCharset());
            // line 84
            yield "
                        ";
            // line 94
            yield "                    <div class=\"col-sm-6 ";
            yield ((($this->extensions['Glpi\Application\View\Extension\ConfigExtension']->config("use_check_pref") && (($__internal_compile_0 = ($context["params"] ?? null)) && is_array($__internal_compile_0) || $__internal_compile_0 instanceof ArrayAccess ? ($__internal_compile_0["nodelegate"] ?? null) : null))) ? ("") : ("d-none"));
            yield "\" id=\"user-info";
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
            yield "-block\">
                        ";
            // line 95
            $context["personal_information"] = ('' === $tmp = \Twig\Extension\CoreExtension::captureOutput((function () use (&$context, $macros, $blocks) {
                // line 96
                yield "                        <div class=\"d-inline-flex\">
                            <div class=\"card mb-0\" id=\"user-info";
                // line 97
                yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
                yield "\">
                                <div class=\"card-body\">
                                    ";
                // line 99
                $context["user"] = $this->extensions['Glpi\Application\View\Extension\SessionExtension']->getCurrentUser();
                // line 100
                yield "                                    ";
                $context["user_fields"] = CoreExtension::getAttribute($this->env, $this->source, ($context["user"] ?? null), "fields", [], "any", false, false, false, 100);
                // line 101
                yield "                                    ";
                $context["user_fields"] = Twig\Extension\CoreExtension::merge(($context["user_fields"] ?? null), ["user_name" => $this->extensions['Glpi\Application\View\Extension\DataHelpersExtension']->getVerbatimValue(CoreExtension::getAttribute($this->env, $this->source, ($context["user"] ?? null), "getFriendlyName", [], "method", false, false, false, 101))]);
                // line 102
                yield "                                    ";
                $context["user_fields"] = Twig\Extension\CoreExtension::merge(($context["user_fields"] ?? null), ["email" => CoreExtension::getAttribute($this->env, $this->source, ($context["user"] ?? null), "getDefaultEmail", [], "method", false, false, false, 102)]);
                // line 103
                yield "                                    ";
                yield Twig\Extension\CoreExtension::include($this->env, $context, "components/user/info_card.html.twig", ["user" =>                 // line 104
($context["user_fields"] ?? null), "can_edit" => true], false);
                // line 106
                yield "
                                </div>
                            </div>
                        </div>
                        ";
                return; yield '';
            })())) ? '' : new Markup($tmp, $this->env->getCharset());
            // line 111
            yield "                        ";
            yield CoreExtension::callMacro($macros["fields"], "macro_field", ["",             // line 113
($context["personal_information"] ?? null), __("Check your personnal information"),             // line 115
($context["base_field_options"] ?? null)], 111, $context, $this->getSourceContext());
            // line 116
            yield "
                    </div>
                </div>

            ";
        } else {
            // line 121
            yield "                <input type=\"hidden\" name=\"_users_id_requester\" value=\"";
            yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape($this->extensions['Glpi\Application\View\Extension\SessionExtension']->session("glpiID"), "html", null, true);
            yield "\">
            ";
        }
        // line 123
        yield "        </div>
        <div class=\"card-body row mx-0\">
            <div class=\"offset-md-1 col-md-8 col-xxl-6\">
               ";
        // line 126
        yield CoreExtension::callMacro($macros["fields"], "macro_field", ["type", CoreExtension::getAttribute($this->env, $this->source,         // line 128
($context["item"] ?? null), "dropdownType", ["type", Twig\Extension\CoreExtension::merge(["value" => (($__internal_compile_1 =         // line 129
($context["params"] ?? null)) && is_array($__internal_compile_1) || $__internal_compile_1 instanceof ArrayAccess ? ($__internal_compile_1["type"] ?? null) : null), "width" => "100%", "display" => false, "on_change" => "this.form.submit()"],         // line 133
($context["right_field_options"] ?? null))], "method", false, false, false, 128), _n("Type", "Types", 1),         // line 135
($context["right_field_options"] ?? null)], 126, $context, $this->getSourceContext());
        // line 136
        yield "

               ";
        // line 138
        $context["cat_params"] = Twig\Extension\CoreExtension::merge(($context["right_field_options"] ?? null), ["on_change" => "this.form.submit()"]);
        // line 141
        yield "               ";
        $context["condition"] = ["is_helpdeskvisible" => 1];
        // line 144
        yield "               ";
        if (((($__internal_compile_2 = ($context["params"] ?? null)) && is_array($__internal_compile_2) || $__internal_compile_2 instanceof ArrayAccess ? ($__internal_compile_2["type"] ?? null) : null) == Twig\Extension\CoreExtension::constant("Ticket::INCIDENT_TYPE"))) {
            // line 145
            yield "                  ";
            $context["condition"] = Twig\Extension\CoreExtension::merge(($context["condition"] ?? null), ["is_incident" => 1]);
            // line 146
            yield "               ";
        } elseif (((($__internal_compile_3 = ($context["params"] ?? null)) && is_array($__internal_compile_3) || $__internal_compile_3 instanceof ArrayAccess ? ($__internal_compile_3["type"] ?? null) : null) == Twig\Extension\CoreExtension::constant("Ticket::DEMAND_TYPE"))) {
            // line 147
            yield "                  ";
            $context["condition"] = Twig\Extension\CoreExtension::merge(($context["condition"] ?? null), ["is_request" => 1]);
            // line 148
            yield "               ";
        }
        // line 149
        yield "
               ";
        // line 150
        if (((($__internal_compile_4 = ($context["params"] ?? null)) && is_array($__internal_compile_4) || $__internal_compile_4 instanceof ArrayAccess ? ($__internal_compile_4["type"] ?? null) : null) == Twig\Extension\CoreExtension::constant("Ticket::DEMAND_TYPE"))) {
            // line 151
            yield "                    ";
            yield CoreExtension::callMacro($macros["fields"], "macro_dropdownField", ["ITILCategory", "itilcategories_id", (($__internal_compile_5 =             // line 154
($context["params"] ?? null)) && is_array($__internal_compile_5) || $__internal_compile_5 instanceof ArrayAccess ? ($__internal_compile_5["itilcategories_id"] ?? null) : null), _n("Category", "Categories", 1), Twig\Extension\CoreExtension::merge(            // line 156
($context["cat_params"] ?? null), ["condition" =>             // line 157
($context["condition"] ?? null), "required" => true])], 151, $context, $this->getSourceContext());
            // line 160
            yield "
                    ";
            // line 161
            yield CoreExtension::callMacro($macros["fields"], "macro_field", ["urgency", CoreExtension::getAttribute($this->env, $this->source,             // line 163
($context["item"] ?? null), "dropdownUrgency", [["value" => (($__internal_compile_6 =             // line 164
($context["params"] ?? null)) && is_array($__internal_compile_6) || $__internal_compile_6 instanceof ArrayAccess ? ($__internal_compile_6["urgency"] ?? null) : null), "width" => "100%", "display" => false, "required" => CoreExtension::getAttribute($this->env, $this->source, CoreExtension::getAttribute($this->env, $this->source,             // line 167
($context["right_field_options"] ?? null), "fields_template", [], "any", false, false, false, 167), "isMandatoryField", ["urgency"], "method", false, false, false, 167)]], "method", false, false, false, 163), __("Urgency"),             // line 170
($context["right_field_options"] ?? null)], 161, $context, $this->getSourceContext());
            // line 171
            yield "
               ";
        }
        // line 173
        yield "
                ";
        // line 175
        yield "               ";
        // line 198
        yield "
               ";
        // line 223
        yield "
               ";
        // line 224
        yield CoreExtension::callMacro($macros["fields"], "macro_dropdownField", ["Location", "locations_id", (($__internal_compile_7 =         // line 227
($context["params"] ?? null)) && is_array($__internal_compile_7) || $__internal_compile_7 instanceof ArrayAccess ? ($__internal_compile_7["locations_id"] ?? null) : null), $this->extensions['Glpi\Application\View\Extension\ItemtypeExtension']->getItemtypeName("Location"), Twig\Extension\CoreExtension::merge(        // line 229
($context["right_field_options"] ?? null), ["hide_if_no_elements" => true])], 224, $context, $this->getSourceContext());
        // line 232
        yield "

               ";
        // line 234
        yield CoreExtension::callMacro($macros["fields"], "macro_textField", ["name", (($__internal_compile_8 =         // line 236
($context["params"] ?? null)) && is_array($__internal_compile_8) || $__internal_compile_8 instanceof ArrayAccess ? ($__internal_compile_8["name"] ?? null) : null), __("Title"), Twig\Extension\CoreExtension::merge(        // line 238
($context["right_field_options"] ?? null), ["required" => false])], 234, $context, $this->getSourceContext());
        // line 241
        yield "
            

            ";
        // line 245
        yield "            ";
        if (((($__internal_compile_9 = ($context["params"] ?? null)) && is_array($__internal_compile_9) || $__internal_compile_9 instanceof ArrayAccess ? ($__internal_compile_9["type"] ?? null) : null) == Twig\Extension\CoreExtension::constant("Ticket::DEMAND_TYPE"))) {
            // line 246
            yield "               ";
            yield CoreExtension::callMacro($macros["fields"], "macro_textareaField", ["content", (($__internal_compile_10 =             // line 248
($context["params"] ?? null)) && is_array($__internal_compile_10) || $__internal_compile_10 instanceof ArrayAccess ? ($__internal_compile_10["content"] ?? null) : null), __("Description Request"), Twig\Extension\CoreExtension::merge(            // line 250
($context["right_field_options"] ?? null), ["enable_richtext" => true, "enable_fileupload" => true])], 246, $context, $this->getSourceContext());
            // line 254
            yield " 
            ";
        } else {
            // line 256
            yield "               ";
            yield CoreExtension::callMacro($macros["fields"], "macro_textareaField", ["content", (($__internal_compile_11 =             // line 258
($context["params"] ?? null)) && is_array($__internal_compile_11) || $__internal_compile_11 instanceof ArrayAccess ? ($__internal_compile_11["content"] ?? null) : null), __("Description Incident"), Twig\Extension\CoreExtension::merge(            // line 260
($context["right_field_options"] ?? null), ["enable_richtext" => true, "enable_fileupload" => true])], 256, $context, $this->getSourceContext());
            // line 264
            yield "
            ";
        }
        // line 266
        yield "
            ";
        // line 267
        if (((($__internal_compile_12 = ($context["params"] ?? null)) && is_array($__internal_compile_12) || $__internal_compile_12 instanceof ArrayAccess ? ($__internal_compile_12["type"] ?? null) : null) == Twig\Extension\CoreExtension::constant("Ticket::DEMAND_TYPE"))) {
            // line 268
            yield "                    ";
            $context["download_button"] = ('' === $tmp = \Twig\Extension\CoreExtension::captureOutput((function () use (&$context, $macros, $blocks) {
                // line 269
                yield "                        <a class=\"btn btn-primary\" id = \"formLink\" href=\"https://laci.bps.go.id/s/553ErqvWBVUUr6K\" target=\"_blank\">
                            <i class=\"fas fa-download mr-2\"></i>&nbsp;
                            ";
                // line 271
                yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(__("Download form request"), "html", null, true);
                yield "
                        </a>
                    ";
                return; yield '';
            })())) ? '' : new Markup($tmp, $this->env->getCharset());
            // line 274
            yield "                    ";
            yield CoreExtension::callMacro($macros["fields"], "macro_field", ["download",             // line 276
($context["download_button"] ?? null), "",             // line 278
($context["right_field_options"] ?? null)], 274, $context, $this->getSourceContext());
            // line 279
            yield "
              ";
        }
        // line 281
        yield "            
            <script>
                let formLink = document.getElementById(\"formLink\");

                let category = \$(\"[name=itilcategories_id]\").text();
                category = category.split(\">\")[0].trim();

                const numbers = {
                    \"Layanan Koneksi Jaringan\": 1,
                    \"Layanan Infrastruktur & Platform Jaringan\": 2,
                    \"Layanan Aplikasi Jaringan\": 3,
                    \"Layanan Keamanan Jaringan\": 4,
                    \"Layanan Crawling Informasi\": 5,
                    \"Layanan Monitoring-Dashboard\": 6,
                    \"Layanan Aplikasi Data Capture\": 7,
                    \"Layanan Aplikasi Sensus-Survei\": 8,
                    \"Layanan Data\": 9,
                    \"Layanan Konsultasi\": 10,
                    \"Layanan Piranti Lunak COTS\": 11,
                    \"Layanan Perangkat Keras\": 12,
                    \"Layanan Back Office Selindo\": 13,
                    \"Layanan Sistem Informasi Manajemen\": 14,
                    \"Layanan Meeting Online\": 15,
                    \"Layanan WhatsApp Business\": 16,
                    \"Layanan Pengelolaan E-Sign\": 17,
                    \"Layanan E-Learning BPS\": 18,
                    \"Layanan Kaizala\": 19,
                    \"Layanan OMS (Ruang Kerja dan Knowledge Management System)\": 20,
                    \"Layanan Duplikasi HaloSIS (HIDEN)\": 21
                }

                const number = numbers[category]
                const path = `/\${number}. \${category}`
                
                if (category) {
                    formLink.href=\"https://laci.bps.go.id/s/553ErqvWBVUUr6K?path=\" + path;
                }
            </script>
                 
          

            </div>
        </div>

      ";
        // line 325
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape($this->extensions['Glpi\Application\View\Extension\PluginExtension']->callPluginHook(Twig\Extension\CoreExtension::constant("Glpi\\Plugin\\Hooks::POST_ITEM_FORM"), ["item" => ($context["item"] ?? null), "options" => ($context["params"] ?? null)]), "html", null, true);
        yield "

        <div class=\"card-footer text-center\">
            <input type=\"hidden\" name=\"entities_id\" value=\"";
        // line 328
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["entities_id"] ?? null), "html", null, true);
        yield "\" />
            <button type=\"submit\" class=\"btn btn-primary\" name=\"add\">
                <i class=\"fas fa-plus\"></i>
                <span>";
        // line 331
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(__("Submit message"), "html", null, true);
        yield "</span>
            </button>
        </div>
    </div>

   ";
        // line 336
        yield Twig\Extension\CoreExtension::include($this->env, $context, "components/itilobject/mainform_close.html.twig");
        yield "
</div>

<script type=\"text/javascript\">
\$(function () {
    \$('#btn-collapse-items";
        // line 341
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
        yield "').on('click', function() {
        \$(this).hide();
    });

    \$('#dropdown_nodelegate";
        // line 345
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
        yield "').on('change', function() {
        var is_for_me = (\$(this).val() == '1');
        \$('#user-info";
        // line 347
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
        yield "-block').toggleClass('d-none', !is_for_me);
        \$('#delegate_other";
        // line 348
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
        yield " .card-body')
            .html(\"\")
            .load('";
        // line 350
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape($this->extensions['Glpi\Application\View\Extension\RoutingExtension']->path("ajax/dropdownDelegationUsers.php"), "html", null, true);
        yield "', {
                'right': \"delegate\",
                'nodelegate': (is_for_me ? 1 : 0),
                '_users_id_requester': ";
        // line 353
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape((($__internal_compile_13 = ($context["params"] ?? null)) && is_array($__internal_compile_13) || $__internal_compile_13 instanceof ArrayAccess ? ($__internal_compile_13["_users_id_requester"] ?? null) : null), "html", null, true);
        yield ",
                '_users_id_requester_notif': ";
        // line 354
        yield json_encode((($__internal_compile_14 = ($context["params"] ?? null)) && is_array($__internal_compile_14) || $__internal_compile_14 instanceof ArrayAccess ? ($__internal_compile_14["_users_id_requester_notif"] ?? null) : null));
        yield ",
                'use_notification': ";
        // line 355
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape((($__internal_compile_15 = (($__internal_compile_16 = ($context["params"] ?? null)) && is_array($__internal_compile_16) || $__internal_compile_16 instanceof ArrayAccess ? ($__internal_compile_16["_users_id_requester_notif"] ?? null) : null)) && is_array($__internal_compile_15) || $__internal_compile_15 instanceof ArrayAccess ? ($__internal_compile_15["use_notification"] ?? null) : null), "html", null, true);
        yield ",
                'entity_restrict':  ";
        // line 356
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape($this->extensions['Glpi\Application\View\Extension\SessionExtension']->session("glpiactive_entity"), "html", null, true);
        yield "
            });
    })

    saveActorsToDom();
});
</script>";
        return; yield '';
    }

    /**
     * @codeCoverageIgnore
     */
    public function getTemplateName()
    {
        return "components/itilobject/selfservice.html.twig";
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
        return array (  433 => 356,  429 => 355,  425 => 354,  421 => 353,  415 => 350,  410 => 348,  406 => 347,  401 => 345,  394 => 341,  386 => 336,  378 => 331,  372 => 328,  366 => 325,  320 => 281,  316 => 279,  314 => 278,  313 => 276,  311 => 274,  304 => 271,  300 => 269,  297 => 268,  295 => 267,  292 => 266,  288 => 264,  286 => 260,  285 => 258,  283 => 256,  279 => 254,  277 => 250,  276 => 248,  274 => 246,  271 => 245,  266 => 241,  264 => 238,  263 => 236,  262 => 234,  258 => 232,  256 => 229,  255 => 227,  254 => 224,  251 => 223,  248 => 198,  246 => 175,  243 => 173,  239 => 171,  237 => 170,  236 => 167,  235 => 164,  234 => 163,  233 => 161,  230 => 160,  228 => 157,  227 => 156,  226 => 154,  224 => 151,  222 => 150,  219 => 149,  216 => 148,  213 => 147,  210 => 146,  207 => 145,  204 => 144,  201 => 141,  199 => 138,  195 => 136,  193 => 135,  192 => 133,  191 => 129,  190 => 128,  189 => 126,  184 => 123,  178 => 121,  171 => 116,  169 => 115,  168 => 113,  166 => 111,  158 => 106,  156 => 104,  154 => 103,  151 => 102,  148 => 101,  145 => 100,  143 => 99,  138 => 97,  135 => 96,  133 => 95,  126 => 94,  123 => 84,  116 => 80,  114 => 79,  113 => 77,  107 => 75,  105 => 74,  100 => 71,  98 => 70,  90 => 65,  82 => 60,  77 => 58,  74 => 57,  64 => 54,  61 => 53,  59 => 52,  54 => 49,  52 => 44,  50 => 42,  49 => 41,  48 => 37,  46 => 36,  43 => 35,  41 => 34,  38 => 33,);
    }

    public function getSourceContext()
    {
        return new Source("", "components/itilobject/selfservice.html.twig", "D:\\Data Aplikasi\\xampp php 8.0.2\\htdocs\\b\\halobps-rebase\\templates\\components\\itilobject\\selfservice.html.twig");
    }
}
