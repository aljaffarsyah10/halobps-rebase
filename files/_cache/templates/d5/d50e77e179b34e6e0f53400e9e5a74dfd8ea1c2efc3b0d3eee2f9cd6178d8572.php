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
        yield "             <input type=\"hidden\" name=\"_users_id_requester\" value=\"";
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape($this->extensions['Glpi\Application\View\Extension\SessionExtension']->session("glpiID"), "html", null, true);
        yield "\">
        </div>
        <div class=\"card-body row mx-0\">
            <div class=\"offset-md-1 col-md-8 col-xxl-6\">
               ";
        // line 127
        yield CoreExtension::callMacro($macros["fields"], "macro_field", ["type", CoreExtension::getAttribute($this->env, $this->source,         // line 129
($context["item"] ?? null), "dropdownType", ["type", Twig\Extension\CoreExtension::merge(["value" => (($__internal_compile_1 =         // line 130
($context["params"] ?? null)) && is_array($__internal_compile_1) || $__internal_compile_1 instanceof ArrayAccess ? ($__internal_compile_1["type"] ?? null) : null), "width" => "100%", "display" => false, "on_change" => "reloadCategory3(),this.form.submit()"],         // line 134
($context["right_field_options"] ?? null))], "method", false, false, false, 129), _n("Type", "Types", 1),         // line 136
($context["right_field_options"] ?? null)], 127, $context, $this->getSourceContext());
        // line 137
        yield "
                 ";
        // line 143
        yield "                 ";
        $context["onchangetype"] = Twig\Extension\CoreExtension::merge(($context["right_field_options"] ?? null), ["on_change" => "reloadCategory3(),this.form.submit()"]);
        // line 146
        yield "
                ";
        // line 147
        $context["cat_params1"] = Twig\Extension\CoreExtension::merge(($context["right_field_options"] ?? null), ["on_change" => "reloadCategory2(),this.form.submit()"]);
        // line 150
        yield "               ";
        $context["cat_params"] = Twig\Extension\CoreExtension::merge(($context["right_field_options"] ?? null), []);
        // line 154
        yield "                 ";
        $context["cat_params2"] = Twig\Extension\CoreExtension::merge(($context["right_field_options"] ?? null), ["on_change" => "this.form.submit()"]);
        // line 158
        yield "               ";
        $context["condition"] = ["is_helpdeskvisible" => 1];
        // line 161
        yield "               ";
        if (((($__internal_compile_2 = ($context["params"] ?? null)) && is_array($__internal_compile_2) || $__internal_compile_2 instanceof ArrayAccess ? ($__internal_compile_2["type"] ?? null) : null) == Twig\Extension\CoreExtension::constant("Ticket::INCIDENT_TYPE"))) {
            // line 162
            yield "                  ";
            $context["condition"] = Twig\Extension\CoreExtension::merge(($context["condition"] ?? null), ["is_incident" => 1]);
            // line 163
            yield "               ";
        } elseif (((($__internal_compile_3 = ($context["params"] ?? null)) && is_array($__internal_compile_3) || $__internal_compile_3 instanceof ArrayAccess ? ($__internal_compile_3["type"] ?? null) : null) == Twig\Extension\CoreExtension::constant("Ticket::DEMAND_TYPE"))) {
            // line 164
            yield "                  ";
            $context["condition"] = Twig\Extension\CoreExtension::merge(($context["condition"] ?? null), ["is_request" => 1]);
            // line 165
            yield "               ";
        }
        // line 166
        yield "
                ";
        // line 167
        if (((($__internal_compile_4 = ($context["params"] ?? null)) && is_array($__internal_compile_4) || $__internal_compile_4 instanceof ArrayAccess ? ($__internal_compile_4["type"] ?? null) : null) == Twig\Extension\CoreExtension::constant("Ticket::INCIDENT_TYPE"))) {
            // line 168
            yield "
                    ";
            // line 169
            yield CoreExtension::callMacro($macros["fields"], "macro_dropdownField", ["ITILCategory", "itilcategories_id", (($__internal_compile_5 =             // line 172
($context["params"] ?? null)) && is_array($__internal_compile_5) || $__internal_compile_5 instanceof ArrayAccess ? ($__internal_compile_5["itilcategories_id"] ?? null) : null), __("Unit"), Twig\Extension\CoreExtension::merge(            // line 174
($context["cat_params"] ?? null), ["condition" =>             // line 175
($context["condition"] ?? null), "required" => true, "tambahan" => "incident", "on_change" => "reloadCategory()"])], 169, $context, $this->getSourceContext());
            // line 180
            yield "

              
             <input type=\"hidden\" name=\"itilcategories_idx\"  />

                ";
        }
        // line 186
        yield "


                ";
        // line 189
        if (((($__internal_compile_6 = ($context["params"] ?? null)) && is_array($__internal_compile_6) || $__internal_compile_6 instanceof ArrayAccess ? ($__internal_compile_6["type"] ?? null) : null) == Twig\Extension\CoreExtension::constant("Ticket::DEMAND_TYPE"))) {
            // line 190
            yield "

                    ";
            // line 192
            yield CoreExtension::callMacro($macros["fields"], "macro_dropdownField", ["ITILCategory", "itilcategories_idx", (($__internal_compile_7 =             // line 195
($context["params"] ?? null)) && is_array($__internal_compile_7) || $__internal_compile_7 instanceof ArrayAccess ? ($__internal_compile_7["itilcategories_idx"] ?? null) : null), __("Unit"), Twig\Extension\CoreExtension::merge(            // line 197
($context["cat_params1"] ?? null), ["condition" =>             // line 198
($context["condition"] ?? null), "required" => true, "tambahan" => "incident"])], 192, $context, $this->getSourceContext());
            // line 203
            yield "

                    ";
            // line 205
            yield CoreExtension::callMacro($macros["fields"], "macro_dropdownField", ["ITILCategory", "itilcategories_id", (($__internal_compile_8 =             // line 208
($context["params"] ?? null)) && is_array($__internal_compile_8) || $__internal_compile_8 instanceof ArrayAccess ? ($__internal_compile_8["itilcategories_id"] ?? null) : null), _n("Category", "Categories", 1), Twig\Extension\CoreExtension::merge(            // line 210
($context["cat_params"] ?? null), ["condition" =>             // line 211
($context["condition"] ?? null), "required" => true, "tambahan" => "child", "unitkerjakategori" => (($__internal_compile_9 =             // line 214
($context["params"] ?? null)) && is_array($__internal_compile_9) || $__internal_compile_9 instanceof ArrayAccess ? ($__internal_compile_9["itilcategories_idx"] ?? null) : null)])], 205, $context, $this->getSourceContext());
            // line 216
            yield "

                    ";
            // line 218
            yield CoreExtension::callMacro($macros["fields"], "macro_field", ["urgency", CoreExtension::getAttribute($this->env, $this->source,             // line 220
($context["item"] ?? null), "dropdownUrgency", [["value" => (($__internal_compile_10 =             // line 221
($context["params"] ?? null)) && is_array($__internal_compile_10) || $__internal_compile_10 instanceof ArrayAccess ? ($__internal_compile_10["urgency"] ?? null) : null), "width" => "100%", "display" => false, "required" => CoreExtension::getAttribute($this->env, $this->source, CoreExtension::getAttribute($this->env, $this->source,             // line 224
($context["right_field_options"] ?? null), "fields_template", [], "any", false, false, false, 224), "isMandatoryField", ["urgency"], "method", false, false, false, 224)]], "method", false, false, false, 220), __("Urgency"),             // line 227
($context["right_field_options"] ?? null)], 218, $context, $this->getSourceContext());
            // line 228
            yield "
               ";
        }
        // line 230
        yield "
                ";
        // line 232
        yield "               ";
        // line 255
        yield "
               ";
        // line 280
        yield "
               ";
        // line 281
        yield CoreExtension::callMacro($macros["fields"], "macro_dropdownField", ["Location", "locations_id", (($__internal_compile_11 =         // line 284
($context["params"] ?? null)) && is_array($__internal_compile_11) || $__internal_compile_11 instanceof ArrayAccess ? ($__internal_compile_11["locations_id"] ?? null) : null), $this->extensions['Glpi\Application\View\Extension\ItemtypeExtension']->getItemtypeName("Location"), Twig\Extension\CoreExtension::merge(        // line 286
($context["right_field_options"] ?? null), ["hide_if_no_elements" => true])], 281, $context, $this->getSourceContext());
        // line 289
        yield "

               ";
        // line 291
        yield CoreExtension::callMacro($macros["fields"], "macro_textField", ["name", (($__internal_compile_12 =         // line 293
($context["params"] ?? null)) && is_array($__internal_compile_12) || $__internal_compile_12 instanceof ArrayAccess ? ($__internal_compile_12["name"] ?? null) : null), __("Title"), Twig\Extension\CoreExtension::merge(        // line 295
($context["right_field_options"] ?? null), ["required" => false])], 291, $context, $this->getSourceContext());
        // line 298
        yield "
            

            ";
        // line 302
        yield "            ";
        if (((($__internal_compile_13 = ($context["params"] ?? null)) && is_array($__internal_compile_13) || $__internal_compile_13 instanceof ArrayAccess ? ($__internal_compile_13["type"] ?? null) : null) == Twig\Extension\CoreExtension::constant("Ticket::DEMAND_TYPE"))) {
            // line 303
            yield "               ";
            yield CoreExtension::callMacro($macros["fields"], "macro_textareaField", ["content", (($__internal_compile_14 =             // line 305
($context["params"] ?? null)) && is_array($__internal_compile_14) || $__internal_compile_14 instanceof ArrayAccess ? ($__internal_compile_14["content"] ?? null) : null), __("Description Request"), Twig\Extension\CoreExtension::merge(            // line 307
($context["right_field_options"] ?? null), ["enable_richtext" => true, "enable_fileupload" => true])], 303, $context, $this->getSourceContext());
            // line 311
            yield " 
            ";
        } else {
            // line 313
            yield "               ";
            yield CoreExtension::callMacro($macros["fields"], "macro_textareaField", ["content", (($__internal_compile_15 =             // line 315
($context["params"] ?? null)) && is_array($__internal_compile_15) || $__internal_compile_15 instanceof ArrayAccess ? ($__internal_compile_15["content"] ?? null) : null), __("Description Incident"), Twig\Extension\CoreExtension::merge(            // line 317
($context["right_field_options"] ?? null), ["enable_richtext" => true, "enable_fileupload" => true])], 313, $context, $this->getSourceContext());
            // line 321
            yield "
            ";
        }
        // line 323
        yield "
            ";
        // line 324
        if (((($__internal_compile_16 = ($context["params"] ?? null)) && is_array($__internal_compile_16) || $__internal_compile_16 instanceof ArrayAccess ? ($__internal_compile_16["type"] ?? null) : null) == Twig\Extension\CoreExtension::constant("Ticket::DEMAND_TYPE"))) {
            // line 325
            yield "                    ";
            $context["download_button"] = ('' === $tmp = \Twig\Extension\CoreExtension::captureOutput((function () use (&$context, $macros, $blocks) {
                // line 326
                yield "                        <a style=\"display:none;\" class=\"btn btn-primary\" 
                        id = \"formLink\" href=\"https://laci.bps.go.id/s/553ErqvWBVUUr6K\" target=\"_blank\">
                            <i class=\"fas fa-download mr-2\"></i>&nbsp;
                            ";
                // line 329
                yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(__("Download form request"), "html", null, true);
                yield "
                        </a>
                    ";
                return; yield '';
            })())) ? '' : new Markup($tmp, $this->env->getCharset());
            // line 332
            yield "                    ";
            yield CoreExtension::callMacro($macros["fields"], "macro_field", ["download",             // line 334
($context["download_button"] ?? null), "",             // line 336
($context["right_field_options"] ?? null)], 332, $context, $this->getSourceContext());
            // line 337
            yield "
              ";
        }
        // line 339
        yield "            
            <script>
           
            </script>
                 
          

            </div>
        </div>

      ";
        // line 349
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape($this->extensions['Glpi\Application\View\Extension\PluginExtension']->callPluginHook(Twig\Extension\CoreExtension::constant("Glpi\\Plugin\\Hooks::POST_ITEM_FORM"), ["item" => ($context["item"] ?? null), "options" => ($context["params"] ?? null)]), "html", null, true);
        yield "

        <div class=\"card-footer text-center\">
            <input type=\"hidden\" name=\"entities_id\" value=\"";
        // line 352
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["entities_id"] ?? null), "html", null, true);
        yield "\" />
            <button type=\"submit\" class=\"btn btn-primary\" name=\"add\">
                <i class=\"fas fa-plus\"></i>
                <span>";
        // line 355
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(__("Submit message"), "html", null, true);
        yield "</span>
            </button>
        </div>
    </div>

   ";
        // line 360
        yield Twig\Extension\CoreExtension::include($this->env, $context, "components/itilobject/mainform_close.html.twig");
        yield "
</div>

<script type=\"text/javascript\">
var itilcategories_id = \$('[name=itilcategories_id]').val();
     \$('[name=itilcategories_idx]').val(itilcategories_id);
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
        // line 382
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
        yield "').on('click', function() {
        \$(this).hide();
    });

    \$('#dropdown_nodelegate";
        // line 386
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
        yield "').on('change', function() {
        var is_for_me = (\$(this).val() == '1');
        \$('#user-info";
        // line 388
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
        yield "-block').toggleClass('d-none', !is_for_me);
        \$('#delegate_other";
        // line 389
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
        yield " .card-body')
            .html(\"\")
            .load('";
        // line 391
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape($this->extensions['Glpi\Application\View\Extension\RoutingExtension']->path("ajax/dropdownDelegationUsers.php"), "html", null, true);
        yield "', {
                'right': \"delegate\",
                'nodelegate': (is_for_me ? 1 : 0),
                '_users_id_requester': ";
        // line 394
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape((($__internal_compile_17 = ($context["params"] ?? null)) && is_array($__internal_compile_17) || $__internal_compile_17 instanceof ArrayAccess ? ($__internal_compile_17["_users_id_requester"] ?? null) : null), "html", null, true);
        yield ",
                '_users_id_requester_notif': ";
        // line 395
        yield json_encode((($__internal_compile_18 = ($context["params"] ?? null)) && is_array($__internal_compile_18) || $__internal_compile_18 instanceof ArrayAccess ? ($__internal_compile_18["_users_id_requester_notif"] ?? null) : null));
        yield ",
                'use_notification': ";
        // line 396
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape((($__internal_compile_19 = (($__internal_compile_20 = ($context["params"] ?? null)) && is_array($__internal_compile_20) || $__internal_compile_20 instanceof ArrayAccess ? ($__internal_compile_20["_users_id_requester_notif"] ?? null) : null)) && is_array($__internal_compile_19) || $__internal_compile_19 instanceof ArrayAccess ? ($__internal_compile_19["use_notification"] ?? null) : null), "html", null, true);
        yield ",
                'entity_restrict':  ";
        // line 397
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
        return array (  468 => 397,  464 => 396,  460 => 395,  456 => 394,  450 => 391,  445 => 389,  441 => 388,  436 => 386,  429 => 382,  404 => 360,  396 => 355,  390 => 352,  384 => 349,  372 => 339,  368 => 337,  366 => 336,  365 => 334,  363 => 332,  356 => 329,  351 => 326,  348 => 325,  346 => 324,  343 => 323,  339 => 321,  337 => 317,  336 => 315,  334 => 313,  330 => 311,  328 => 307,  327 => 305,  325 => 303,  322 => 302,  317 => 298,  315 => 295,  314 => 293,  313 => 291,  309 => 289,  307 => 286,  306 => 284,  305 => 281,  302 => 280,  299 => 255,  297 => 232,  294 => 230,  290 => 228,  288 => 227,  287 => 224,  286 => 221,  285 => 220,  284 => 218,  280 => 216,  278 => 214,  277 => 211,  276 => 210,  275 => 208,  274 => 205,  270 => 203,  268 => 198,  267 => 197,  266 => 195,  265 => 192,  261 => 190,  259 => 189,  254 => 186,  246 => 180,  244 => 175,  243 => 174,  242 => 172,  241 => 169,  238 => 168,  236 => 167,  233 => 166,  230 => 165,  227 => 164,  224 => 163,  221 => 162,  218 => 161,  215 => 158,  212 => 154,  209 => 150,  207 => 147,  204 => 146,  201 => 143,  198 => 137,  196 => 136,  195 => 134,  194 => 130,  193 => 129,  192 => 127,  184 => 123,  178 => 121,  171 => 116,  169 => 115,  168 => 113,  166 => 111,  158 => 106,  156 => 104,  154 => 103,  151 => 102,  148 => 101,  145 => 100,  143 => 99,  138 => 97,  135 => 96,  133 => 95,  126 => 94,  123 => 84,  116 => 80,  114 => 79,  113 => 77,  107 => 75,  105 => 74,  100 => 71,  98 => 70,  90 => 65,  82 => 60,  77 => 58,  74 => 57,  64 => 54,  61 => 53,  59 => 52,  54 => 49,  52 => 44,  50 => 42,  49 => 41,  48 => 37,  46 => 36,  43 => 35,  41 => 34,  38 => 33,);
    }

    public function getSourceContext()
    {
        return new Source("", "components/itilobject/selfservice.html.twig", "D:\\Data Aplikasi\\xampp php 8.0.2\\htdocs\\b\\halobps-rebase\\templates\\components\\itilobject\\selfservice.html.twig");
    }
}
