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
        yield "            ";
        // line 124
        yield "                <input type=\"hidden\" name=\"_users_id_requester\" value=\"";
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape($this->extensions['Glpi\Application\View\Extension\SessionExtension']->session("glpiID"), "html", null, true);
        yield "\">

        </div>
        <div class=\"card-body row mx-0\">
            <div class=\"offset-md-1 col-md-8 col-xxl-6\">
               ";
        // line 129
        yield CoreExtension::callMacro($macros["fields"], "macro_field", ["type", CoreExtension::getAttribute($this->env, $this->source,         // line 131
($context["item"] ?? null), "dropdownType", ["type", Twig\Extension\CoreExtension::merge(["value" => (($__internal_compile_1 =         // line 132
($context["params"] ?? null)) && is_array($__internal_compile_1) || $__internal_compile_1 instanceof ArrayAccess ? ($__internal_compile_1["type"] ?? null) : null), "width" => "100%", "display" => false, "on_change" => "reloadCategory3(),this.form.submit()"],         // line 136
($context["right_field_options"] ?? null))], "method", false, false, false, 131), _n("Type", "Types", 1),         // line 138
($context["right_field_options"] ?? null)], 129, $context, $this->getSourceContext());
        // line 139
        yield "
                 ";
        // line 145
        yield "                 ";
        $context["onchangetype"] = Twig\Extension\CoreExtension::merge(($context["right_field_options"] ?? null), ["on_change" => "reloadCategory3(),this.form.submit()"]);
        // line 148
        yield "
                ";
        // line 149
        $context["cat_params1"] = Twig\Extension\CoreExtension::merge(($context["right_field_options"] ?? null), ["on_change" => "reloadCategory2(),this.form.submit()"]);
        // line 152
        yield "               ";
        $context["cat_params"] = Twig\Extension\CoreExtension::merge(($context["right_field_options"] ?? null), []);
        // line 156
        yield "                 ";
        $context["cat_params2"] = Twig\Extension\CoreExtension::merge(($context["right_field_options"] ?? null), ["on_change" => "this.form.submit()"]);
        // line 160
        yield "               ";
        $context["condition"] = ["is_helpdeskvisible" => 1];
        // line 163
        yield "               ";
        if (((($__internal_compile_2 = ($context["params"] ?? null)) && is_array($__internal_compile_2) || $__internal_compile_2 instanceof ArrayAccess ? ($__internal_compile_2["type"] ?? null) : null) == Twig\Extension\CoreExtension::constant("Ticket::INCIDENT_TYPE"))) {
            // line 164
            yield "                  ";
            $context["condition"] = Twig\Extension\CoreExtension::merge(($context["condition"] ?? null), ["is_incident" => 1]);
            // line 165
            yield "               ";
        } elseif (((($__internal_compile_3 = ($context["params"] ?? null)) && is_array($__internal_compile_3) || $__internal_compile_3 instanceof ArrayAccess ? ($__internal_compile_3["type"] ?? null) : null) == Twig\Extension\CoreExtension::constant("Ticket::DEMAND_TYPE"))) {
            // line 166
            yield "                  ";
            $context["condition"] = Twig\Extension\CoreExtension::merge(($context["condition"] ?? null), ["is_request" => 1]);
            // line 167
            yield "               ";
        }
        // line 168
        yield "
                ";
        // line 169
        if (((($__internal_compile_4 = ($context["params"] ?? null)) && is_array($__internal_compile_4) || $__internal_compile_4 instanceof ArrayAccess ? ($__internal_compile_4["type"] ?? null) : null) == Twig\Extension\CoreExtension::constant("Ticket::INCIDENT_TYPE"))) {
            // line 170
            yield "
                    ";
            // line 171
            yield CoreExtension::callMacro($macros["fields"], "macro_dropdownField", ["ITILCategory", "itilcategories_id", (($__internal_compile_5 =             // line 174
($context["params"] ?? null)) && is_array($__internal_compile_5) || $__internal_compile_5 instanceof ArrayAccess ? ($__internal_compile_5["itilcategories_id"] ?? null) : null), __("Unit"), Twig\Extension\CoreExtension::merge(            // line 176
($context["cat_params"] ?? null), ["condition" =>             // line 177
($context["condition"] ?? null), "required" => true, "tambahan" => "incident", "on_change" => "reloadCategory()"])], 171, $context, $this->getSourceContext());
            // line 182
            yield "

              
             <input type=\"hidden\" name=\"itilcategories_idx\"  />

                ";
        }
        // line 188
        yield "


                ";
        // line 191
        if (((($__internal_compile_6 = ($context["params"] ?? null)) && is_array($__internal_compile_6) || $__internal_compile_6 instanceof ArrayAccess ? ($__internal_compile_6["type"] ?? null) : null) == Twig\Extension\CoreExtension::constant("Ticket::DEMAND_TYPE"))) {
            // line 192
            yield "

                    ";
            // line 194
            yield CoreExtension::callMacro($macros["fields"], "macro_dropdownField", ["ITILCategory", "itilcategories_idx", (($__internal_compile_7 =             // line 197
($context["params"] ?? null)) && is_array($__internal_compile_7) || $__internal_compile_7 instanceof ArrayAccess ? ($__internal_compile_7["itilcategories_idx"] ?? null) : null), __("Unit"), Twig\Extension\CoreExtension::merge(            // line 199
($context["cat_params1"] ?? null), ["condition" =>             // line 200
($context["condition"] ?? null), "required" => true, "tambahan" => "incident"])], 194, $context, $this->getSourceContext());
            // line 205
            yield "

                    ";
            // line 207
            yield CoreExtension::callMacro($macros["fields"], "macro_dropdownField", ["ITILCategory", "itilcategories_id", (($__internal_compile_8 =             // line 210
($context["params"] ?? null)) && is_array($__internal_compile_8) || $__internal_compile_8 instanceof ArrayAccess ? ($__internal_compile_8["itilcategories_id"] ?? null) : null), _n("Category", "Categories", 1), Twig\Extension\CoreExtension::merge(            // line 212
($context["cat_params2"] ?? null), ["condition" =>             // line 213
($context["condition"] ?? null), "required" => true, "tambahan" => "child", "unitkerjakategori" => (($__internal_compile_9 =             // line 216
($context["params"] ?? null)) && is_array($__internal_compile_9) || $__internal_compile_9 instanceof ArrayAccess ? ($__internal_compile_9["itilcategories_idx"] ?? null) : null)])], 207, $context, $this->getSourceContext());
            // line 218
            yield "

                    ";
            // line 220
            yield CoreExtension::callMacro($macros["fields"], "macro_field", ["urgency", CoreExtension::getAttribute($this->env, $this->source,             // line 222
($context["item"] ?? null), "dropdownUrgency", [["value" => (($__internal_compile_10 =             // line 223
($context["params"] ?? null)) && is_array($__internal_compile_10) || $__internal_compile_10 instanceof ArrayAccess ? ($__internal_compile_10["urgency"] ?? null) : null), "width" => "100%", "display" => false, "required" => CoreExtension::getAttribute($this->env, $this->source, CoreExtension::getAttribute($this->env, $this->source,             // line 226
($context["right_field_options"] ?? null), "fields_template", [], "any", false, false, false, 226), "isMandatoryField", ["urgency"], "method", false, false, false, 226)]], "method", false, false, false, 222), __("Urgency"),             // line 229
($context["right_field_options"] ?? null)], 220, $context, $this->getSourceContext());
            // line 230
            yield "
               ";
        }
        // line 232
        yield "
                ";
        // line 234
        yield "               ";
        // line 257
        yield "
               ";
        // line 282
        yield "
               ";
        // line 283
        yield CoreExtension::callMacro($macros["fields"], "macro_dropdownField", ["Location", "locations_id", (($__internal_compile_11 =         // line 286
($context["params"] ?? null)) && is_array($__internal_compile_11) || $__internal_compile_11 instanceof ArrayAccess ? ($__internal_compile_11["locations_id"] ?? null) : null), $this->extensions['Glpi\Application\View\Extension\ItemtypeExtension']->getItemtypeName("Location"), Twig\Extension\CoreExtension::merge(        // line 288
($context["right_field_options"] ?? null), ["hide_if_no_elements" => true])], 283, $context, $this->getSourceContext());
        // line 291
        yield "

               ";
        // line 293
        yield CoreExtension::callMacro($macros["fields"], "macro_textField", ["name", (($__internal_compile_12 =         // line 295
($context["params"] ?? null)) && is_array($__internal_compile_12) || $__internal_compile_12 instanceof ArrayAccess ? ($__internal_compile_12["name"] ?? null) : null), __("Title"), Twig\Extension\CoreExtension::merge(        // line 297
($context["right_field_options"] ?? null), ["required" => false])], 293, $context, $this->getSourceContext());
        // line 300
        yield "
            

            ";
        // line 304
        yield "            ";
        if (((($__internal_compile_13 = ($context["params"] ?? null)) && is_array($__internal_compile_13) || $__internal_compile_13 instanceof ArrayAccess ? ($__internal_compile_13["type"] ?? null) : null) == Twig\Extension\CoreExtension::constant("Ticket::DEMAND_TYPE"))) {
            // line 305
            yield "               ";
            yield CoreExtension::callMacro($macros["fields"], "macro_textareaField", ["content", (($__internal_compile_14 =             // line 307
($context["params"] ?? null)) && is_array($__internal_compile_14) || $__internal_compile_14 instanceof ArrayAccess ? ($__internal_compile_14["content"] ?? null) : null), __("Description Request"), Twig\Extension\CoreExtension::merge(            // line 309
($context["right_field_options"] ?? null), ["enable_richtext" => true, "enable_fileupload" => true])], 305, $context, $this->getSourceContext());
            // line 313
            yield " 
            ";
        } else {
            // line 315
            yield "               ";
            yield CoreExtension::callMacro($macros["fields"], "macro_textareaField", ["content", (($__internal_compile_15 =             // line 317
($context["params"] ?? null)) && is_array($__internal_compile_15) || $__internal_compile_15 instanceof ArrayAccess ? ($__internal_compile_15["content"] ?? null) : null), __("Description Incident"), Twig\Extension\CoreExtension::merge(            // line 319
($context["right_field_options"] ?? null), ["enable_richtext" => true, "enable_fileupload" => true])], 315, $context, $this->getSourceContext());
            // line 323
            yield "
            ";
        }
        // line 325
        yield "
            ";
        // line 326
        if (((($__internal_compile_16 = ($context["params"] ?? null)) && is_array($__internal_compile_16) || $__internal_compile_16 instanceof ArrayAccess ? ($__internal_compile_16["type"] ?? null) : null) == Twig\Extension\CoreExtension::constant("Ticket::DEMAND_TYPE"))) {
            // line 327
            yield "                    ";
            $context["download_button"] = ('' === $tmp = \Twig\Extension\CoreExtension::captureOutput((function () use (&$context, $macros, $blocks) {
                // line 328
                yield "                        <a style=\"display:none;\" class=\"btn btn-primary\" 
                        id = \"formLink\" href=\"https://laci.bps.go.id/s/553ErqvWBVUUr6K\" target=\"_blank\">
                            <i class=\"fas fa-download mr-2\"></i>&nbsp;
                            ";
                // line 331
                yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(__("Download form request"), "html", null, true);
                yield "
                        </a>
                    ";
                return; yield '';
            })())) ? '' : new Markup($tmp, $this->env->getCharset());
            // line 334
            yield "                    ";
            yield CoreExtension::callMacro($macros["fields"], "macro_field", ["download",             // line 336
($context["download_button"] ?? null), "",             // line 338
($context["right_field_options"] ?? null)], 334, $context, $this->getSourceContext());
            // line 339
            yield "
              ";
        }
        // line 341
        yield "            
            <script>
                let formLink = document.getElementById(\"formLink\");

                let linkunduhpermintaan = \$(\"#linkunduhpermintaan\").val(); 
                
                
                if (linkunduhpermintaan) {
                \$(\"#formLink\").css(\"display\",\"\")
                    formLink.href=linkunduhpermintaan;
                }
            </script>
                 
          

            </div>
        </div>

      ";
        // line 359
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape($this->extensions['Glpi\Application\View\Extension\PluginExtension']->callPluginHook(Twig\Extension\CoreExtension::constant("Glpi\\Plugin\\Hooks::POST_ITEM_FORM"), ["item" => ($context["item"] ?? null), "options" => ($context["params"] ?? null)]), "html", null, true);
        yield "

        <div class=\"card-footer text-center\">
            <input type=\"hidden\" name=\"entities_id\" value=\"";
        // line 362
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["entities_id"] ?? null), "html", null, true);
        yield "\" />
            <button type=\"submit\" class=\"btn btn-primary\" name=\"add\">
                <i class=\"fas fa-plus\"></i>
                <span>";
        // line 365
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(__("Submit message"), "html", null, true);
        yield "</span>
            </button>
        </div>
    </div>

   ";
        // line 370
        yield Twig\Extension\CoreExtension::include($this->env, $context, "components/itilobject/mainform_close.html.twig");
        yield "
</div>

<script type=\"text/javascript\">

var reloadCategory = function() {
    var itilcategories_id = \$('[name=itilcategories_id]').val();
     \$('[name=itilcategories_idx]').val(itilcategories_id);

    }

     var  reloadCategory2= function() {
     \$('[name=itilcategories_id]').val(0);

    }
      var  reloadCategory3= function() {
     \$('[name=itilcategories_id]').val(0);
     \$('[name=itilcategories_idx]').val(0);

    }
\$(function () {
    \$('#btn-collapse-items";
        // line 391
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
        yield "').on('click', function() {
        \$(this).hide();
    });

    \$('#dropdown_nodelegate";
        // line 395
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
        yield "').on('change', function() {
        var is_for_me = (\$(this).val() == '1');
        \$('#user-info";
        // line 397
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
        yield "-block').toggleClass('d-none', !is_for_me);
        \$('#delegate_other";
        // line 398
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
        yield " .card-body')
            .html(\"\")
            .load('";
        // line 400
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape($this->extensions['Glpi\Application\View\Extension\RoutingExtension']->path("ajax/dropdownDelegationUsers.php"), "html", null, true);
        yield "', {
                'right': \"delegate\",
                'nodelegate': (is_for_me ? 1 : 0),
                '_users_id_requester': ";
        // line 403
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape((($__internal_compile_17 = ($context["params"] ?? null)) && is_array($__internal_compile_17) || $__internal_compile_17 instanceof ArrayAccess ? ($__internal_compile_17["_users_id_requester"] ?? null) : null), "html", null, true);
        yield ",
                '_users_id_requester_notif': ";
        // line 404
        yield json_encode((($__internal_compile_18 = ($context["params"] ?? null)) && is_array($__internal_compile_18) || $__internal_compile_18 instanceof ArrayAccess ? ($__internal_compile_18["_users_id_requester_notif"] ?? null) : null));
        yield ",
                'use_notification': ";
        // line 405
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape((($__internal_compile_19 = (($__internal_compile_20 = ($context["params"] ?? null)) && is_array($__internal_compile_20) || $__internal_compile_20 instanceof ArrayAccess ? ($__internal_compile_20["_users_id_requester_notif"] ?? null) : null)) && is_array($__internal_compile_19) || $__internal_compile_19 instanceof ArrayAccess ? ($__internal_compile_19["use_notification"] ?? null) : null), "html", null, true);
        yield ",
                'entity_restrict':  ";
        // line 406
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
        return array (  478 => 406,  474 => 405,  470 => 404,  466 => 403,  460 => 400,  455 => 398,  451 => 397,  446 => 395,  439 => 391,  415 => 370,  407 => 365,  401 => 362,  395 => 359,  375 => 341,  371 => 339,  369 => 338,  368 => 336,  366 => 334,  359 => 331,  354 => 328,  351 => 327,  349 => 326,  346 => 325,  342 => 323,  340 => 319,  339 => 317,  337 => 315,  333 => 313,  331 => 309,  330 => 307,  328 => 305,  325 => 304,  320 => 300,  318 => 297,  317 => 295,  316 => 293,  312 => 291,  310 => 288,  309 => 286,  308 => 283,  305 => 282,  302 => 257,  300 => 234,  297 => 232,  293 => 230,  291 => 229,  290 => 226,  289 => 223,  288 => 222,  287 => 220,  283 => 218,  281 => 216,  280 => 213,  279 => 212,  278 => 210,  277 => 207,  273 => 205,  271 => 200,  270 => 199,  269 => 197,  268 => 194,  264 => 192,  262 => 191,  257 => 188,  249 => 182,  247 => 177,  246 => 176,  245 => 174,  244 => 171,  241 => 170,  239 => 169,  236 => 168,  233 => 167,  230 => 166,  227 => 165,  224 => 164,  221 => 163,  218 => 160,  215 => 156,  212 => 152,  210 => 149,  207 => 148,  204 => 145,  201 => 139,  199 => 138,  198 => 136,  197 => 132,  196 => 131,  195 => 129,  186 => 124,  184 => 123,  178 => 121,  171 => 116,  169 => 115,  168 => 113,  166 => 111,  158 => 106,  156 => 104,  154 => 103,  151 => 102,  148 => 101,  145 => 100,  143 => 99,  138 => 97,  135 => 96,  133 => 95,  126 => 94,  123 => 84,  116 => 80,  114 => 79,  113 => 77,  107 => 75,  105 => 74,  100 => 71,  98 => 70,  90 => 65,  82 => 60,  77 => 58,  74 => 57,  64 => 54,  61 => 53,  59 => 52,  54 => 49,  52 => 44,  50 => 42,  49 => 41,  48 => 37,  46 => 36,  43 => 35,  41 => 34,  38 => 33,);
    }

    public function getSourceContext()
    {
        return new Source("", "components/itilobject/selfservice.html.twig", "D:\\Data Aplikasi\\xampp php 8.0.2\\htdocs\\b\\halobps-rebase\\templates\\components\\itilobject\\selfservice.html.twig");
    }
}
