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
        yield "                ";
        if (((($__internal_compile_6 = ($context["params"] ?? null)) && is_array($__internal_compile_6) || $__internal_compile_6 instanceof ArrayAccess ? ($__internal_compile_6["type"] ?? null) : null) == Twig\Extension\CoreExtension::constant("Ticket::INCIDENT_TYPE"))) {
            // line 189
            yield "                    ";
            yield CoreExtension::callMacro($macros["fields"], "macro_field", ["nup_bmn", CoreExtension::getAttribute($this->env, $this->source,             // line 191
($context["item"] ?? null), "dropdownBMN", [["value" => (($__internal_compile_7 = CoreExtension::getAttribute($this->env, $this->source,             // line 192
($context["item"] ?? null), "fields", [], "any", false, false, false, 192)) && is_array($__internal_compile_7) || $__internal_compile_7 instanceof ArrayAccess ? ($__internal_compile_7["nup_bmn"] ?? null) : null), "width" => "100%", "display" => false, "on_change" => "updateHiddenInput()"]], "method", false, false, false, 191), __("Keterangan BMN"),             // line 198
($context["right_field_options"] ?? null)], 189, $context, $this->getSourceContext());
            // line 199
            yield "

                <input type=\"hidden\" id=\"nup_bmn_value\" name=\"nup_bmn_value\" value=\"\" />


               ";
        }
        // line 205
        yield "
                ";
        // line 206
        if (((($__internal_compile_8 = ($context["params"] ?? null)) && is_array($__internal_compile_8) || $__internal_compile_8 instanceof ArrayAccess ? ($__internal_compile_8["type"] ?? null) : null) == Twig\Extension\CoreExtension::constant("Ticket::DEMAND_TYPE"))) {
            // line 207
            yield "

                    ";
            // line 209
            yield CoreExtension::callMacro($macros["fields"], "macro_dropdownField", ["ITILCategory", "itilcategories_idx", (($__internal_compile_9 =             // line 212
($context["params"] ?? null)) && is_array($__internal_compile_9) || $__internal_compile_9 instanceof ArrayAccess ? ($__internal_compile_9["itilcategories_idx"] ?? null) : null), __("Unit"), Twig\Extension\CoreExtension::merge(            // line 214
($context["cat_params1"] ?? null), ["condition" =>             // line 215
($context["condition"] ?? null), "required" => true, "tambahan" => "incident"])], 209, $context, $this->getSourceContext());
            // line 220
            yield "

                    ";
            // line 222
            yield CoreExtension::callMacro($macros["fields"], "macro_dropdownField", ["ITILCategory", "itilcategories_id", (($__internal_compile_10 =             // line 225
($context["params"] ?? null)) && is_array($__internal_compile_10) || $__internal_compile_10 instanceof ArrayAccess ? ($__internal_compile_10["itilcategories_id"] ?? null) : null), _n("Category", "Categories", 1), Twig\Extension\CoreExtension::merge(            // line 227
($context["cat_params2"] ?? null), ["condition" =>             // line 228
($context["condition"] ?? null), "required" => true, "tambahan" => "child", "unitkerjakategori" => (($__internal_compile_11 =             // line 231
($context["params"] ?? null)) && is_array($__internal_compile_11) || $__internal_compile_11 instanceof ArrayAccess ? ($__internal_compile_11["itilcategories_idx"] ?? null) : null)])], 222, $context, $this->getSourceContext());
            // line 233
            yield "

                    ";
            // line 235
            yield CoreExtension::callMacro($macros["fields"], "macro_field", ["urgency", CoreExtension::getAttribute($this->env, $this->source,             // line 237
($context["item"] ?? null), "dropdownUrgency", [["value" => (($__internal_compile_12 =             // line 238
($context["params"] ?? null)) && is_array($__internal_compile_12) || $__internal_compile_12 instanceof ArrayAccess ? ($__internal_compile_12["urgency"] ?? null) : null), "width" => "100%", "display" => false, "required" => CoreExtension::getAttribute($this->env, $this->source, CoreExtension::getAttribute($this->env, $this->source,             // line 241
($context["right_field_options"] ?? null), "fields_template", [], "any", false, false, false, 241), "isMandatoryField", ["urgency"], "method", false, false, false, 241)]], "method", false, false, false, 237), __("Urgency"),             // line 244
($context["right_field_options"] ?? null)], 235, $context, $this->getSourceContext());
            // line 245
            yield "

               ";
        }
        // line 248
        yield "
                ";
        // line 250
        yield "               ";
        // line 273
        yield "
               ";
        // line 298
        yield "
               ";
        // line 299
        yield CoreExtension::callMacro($macros["fields"], "macro_dropdownField", ["Location", "locations_id", (($__internal_compile_13 =         // line 302
($context["params"] ?? null)) && is_array($__internal_compile_13) || $__internal_compile_13 instanceof ArrayAccess ? ($__internal_compile_13["locations_id"] ?? null) : null), $this->extensions['Glpi\Application\View\Extension\ItemtypeExtension']->getItemtypeName("Location"), Twig\Extension\CoreExtension::merge(        // line 304
($context["right_field_options"] ?? null), ["hide_if_no_elements" => true])], 299, $context, $this->getSourceContext());
        // line 307
        yield "

               ";
        // line 309
        yield CoreExtension::callMacro($macros["fields"], "macro_textField", ["name", (($__internal_compile_14 =         // line 311
($context["params"] ?? null)) && is_array($__internal_compile_14) || $__internal_compile_14 instanceof ArrayAccess ? ($__internal_compile_14["name"] ?? null) : null), __("Title"), Twig\Extension\CoreExtension::merge(        // line 313
($context["right_field_options"] ?? null), ["required" => false])], 309, $context, $this->getSourceContext());
        // line 316
        yield "
            

            ";
        // line 320
        yield "            ";
        if (((($__internal_compile_15 = ($context["params"] ?? null)) && is_array($__internal_compile_15) || $__internal_compile_15 instanceof ArrayAccess ? ($__internal_compile_15["type"] ?? null) : null) == Twig\Extension\CoreExtension::constant("Ticket::DEMAND_TYPE"))) {
            // line 321
            yield "               ";
            yield CoreExtension::callMacro($macros["fields"], "macro_textareaField", ["content", (($__internal_compile_16 =             // line 323
($context["params"] ?? null)) && is_array($__internal_compile_16) || $__internal_compile_16 instanceof ArrayAccess ? ($__internal_compile_16["content"] ?? null) : null), __("Description Request"), Twig\Extension\CoreExtension::merge(            // line 325
($context["right_field_options"] ?? null), ["enable_richtext" => true, "enable_fileupload" => true])], 321, $context, $this->getSourceContext());
            // line 329
            yield " 
            ";
        } else {
            // line 331
            yield "               ";
            yield CoreExtension::callMacro($macros["fields"], "macro_textareaField", ["content", (($__internal_compile_17 =             // line 333
($context["params"] ?? null)) && is_array($__internal_compile_17) || $__internal_compile_17 instanceof ArrayAccess ? ($__internal_compile_17["content"] ?? null) : null), __("Description Incident"), Twig\Extension\CoreExtension::merge(            // line 335
($context["right_field_options"] ?? null), ["enable_richtext" => true, "enable_fileupload" => true])], 331, $context, $this->getSourceContext());
            // line 339
            yield "
            ";
        }
        // line 341
        yield "
            ";
        // line 342
        if (((($__internal_compile_18 = ($context["params"] ?? null)) && is_array($__internal_compile_18) || $__internal_compile_18 instanceof ArrayAccess ? ($__internal_compile_18["type"] ?? null) : null) == Twig\Extension\CoreExtension::constant("Ticket::DEMAND_TYPE"))) {
            // line 343
            yield "                    ";
            $context["download_button"] = ('' === $tmp = \Twig\Extension\CoreExtension::captureOutput((function () use (&$context, $macros, $blocks) {
                // line 344
                yield "                        <a style=\"display:none;\" class=\"btn btn-primary\" 
                        id = \"formLink\" href=\"https://laci.bps.go.id/s/553ErqvWBVUUr6K\" target=\"_blank\">
                            <i class=\"fas fa-download mr-2\"></i>&nbsp;
                            ";
                // line 347
                yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(__("Download form request"), "html", null, true);
                yield "
                        </a>
                    ";
                return; yield '';
            })())) ? '' : new Markup($tmp, $this->env->getCharset());
            // line 350
            yield "                    ";
            yield CoreExtension::callMacro($macros["fields"], "macro_field", ["download",             // line 352
($context["download_button"] ?? null), "",             // line 354
($context["right_field_options"] ?? null)], 350, $context, $this->getSourceContext());
            // line 355
            yield "
              ";
        }
        // line 357
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
        // line 375
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape($this->extensions['Glpi\Application\View\Extension\PluginExtension']->callPluginHook(Twig\Extension\CoreExtension::constant("Glpi\\Plugin\\Hooks::POST_ITEM_FORM"), ["item" => ($context["item"] ?? null), "options" => ($context["params"] ?? null)]), "html", null, true);
        yield "

        <div class=\"card-footer text-center\">
            <input type=\"hidden\" name=\"entities_id\" value=\"";
        // line 378
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["entities_id"] ?? null), "html", null, true);
        yield "\" />
            <button type=\"submit\" class=\"btn btn-primary\" name=\"add\">
                <i class=\"fas fa-plus\"></i>
                <span>";
        // line 381
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(__("Submit message"), "html", null, true);
        yield "</span>
            </button>
        </div>
    </div>

   ";
        // line 386
        yield Twig\Extension\CoreExtension::include($this->env, $context, "components/itilobject/mainform_close.html.twig");
        yield "
</div>

<script type=\"text/javascript\">
            ";
        // line 390
        if (((($__internal_compile_19 = ($context["params"] ?? null)) && is_array($__internal_compile_19) || $__internal_compile_19 instanceof ArrayAccess ? ($__internal_compile_19["type"] ?? null) : null) == Twig\Extension\CoreExtension::constant("Ticket::INCIDENT_TYPE"))) {
            // line 391
            yield "                var itilcategories_id = \$('[name=itilcategories_id]').val();
                \$('[name=itilcategories_idx]').val(itilcategories_id);
            ";
        }
        // line 394
        yield "var reloadCategory = function() {
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
        // line 410
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
        yield "').on('click', function() {
        \$(this).hide();
    });

    \$('#dropdown_nodelegate";
        // line 414
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
        yield "').on('change', function() {
        var is_for_me = (\$(this).val() == '1');
        \$('#user-info";
        // line 416
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
        yield "-block').toggleClass('d-none', !is_for_me);
        \$('#delegate_other";
        // line 417
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["rand"] ?? null), "html", null, true);
        yield " .card-body')
            .html(\"\")
            .load('";
        // line 419
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape($this->extensions['Glpi\Application\View\Extension\RoutingExtension']->path("ajax/dropdownDelegationUsers.php"), "html", null, true);
        yield "', {
                'right': \"delegate\",
                'nodelegate': (is_for_me ? 1 : 0),
                '_users_id_requester': ";
        // line 422
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape((($__internal_compile_20 = ($context["params"] ?? null)) && is_array($__internal_compile_20) || $__internal_compile_20 instanceof ArrayAccess ? ($__internal_compile_20["_users_id_requester"] ?? null) : null), "html", null, true);
        yield ",
                '_users_id_requester_notif': ";
        // line 423
        yield json_encode((($__internal_compile_21 = ($context["params"] ?? null)) && is_array($__internal_compile_21) || $__internal_compile_21 instanceof ArrayAccess ? ($__internal_compile_21["_users_id_requester_notif"] ?? null) : null));
        yield ",
                'use_notification': ";
        // line 424
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape((($__internal_compile_22 = (($__internal_compile_23 = ($context["params"] ?? null)) && is_array($__internal_compile_23) || $__internal_compile_23 instanceof ArrayAccess ? ($__internal_compile_23["_users_id_requester_notif"] ?? null) : null)) && is_array($__internal_compile_22) || $__internal_compile_22 instanceof ArrayAccess ? ($__internal_compile_22["use_notification"] ?? null) : null), "html", null, true);
        yield ",
                'entity_restrict':  ";
        // line 425
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape($this->extensions['Glpi\Application\View\Extension\SessionExtension']->session("glpiactive_entity"), "html", null, true);
        yield "
            });
    })

    saveActorsToDom();
});

// Fungsi untuk get nilai indeks dropdown nup_bmn dan memperbarui input hidden
\$nup_bmn = ";
        // line 433
        yield json_encode(CoreExtension::getAttribute($this->env, $this->source, $this->extensions['Glpi\Application\View\Extension\SessionExtension']->session("bmn"), "nup_bmn", [], "any", false, false, false, 433));
        yield ";
function updateHiddenInput() {
    var selectedValue = \$nup_bmn[\$('[name=\"nup_bmn\"]').val()];
    \$('[name=\"nup_bmn_value\"]').val(selectedValue);
}
\$('[name=\"nup_bmn\"]').on('change', function () {
    updateHiddenInput();
});
\$(document).ready(function () {
    updateHiddenInput();
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
        return array (  513 => 433,  502 => 425,  498 => 424,  494 => 423,  490 => 422,  484 => 419,  479 => 417,  475 => 416,  470 => 414,  463 => 410,  445 => 394,  440 => 391,  438 => 390,  431 => 386,  423 => 381,  417 => 378,  411 => 375,  391 => 357,  387 => 355,  385 => 354,  384 => 352,  382 => 350,  375 => 347,  370 => 344,  367 => 343,  365 => 342,  362 => 341,  358 => 339,  356 => 335,  355 => 333,  353 => 331,  349 => 329,  347 => 325,  346 => 323,  344 => 321,  341 => 320,  336 => 316,  334 => 313,  333 => 311,  332 => 309,  328 => 307,  326 => 304,  325 => 302,  324 => 299,  321 => 298,  318 => 273,  316 => 250,  313 => 248,  308 => 245,  306 => 244,  305 => 241,  304 => 238,  303 => 237,  302 => 235,  298 => 233,  296 => 231,  295 => 228,  294 => 227,  293 => 225,  292 => 222,  288 => 220,  286 => 215,  285 => 214,  284 => 212,  283 => 209,  279 => 207,  277 => 206,  274 => 205,  266 => 199,  264 => 198,  263 => 192,  262 => 191,  260 => 189,  257 => 188,  249 => 182,  247 => 177,  246 => 176,  245 => 174,  244 => 171,  241 => 170,  239 => 169,  236 => 168,  233 => 167,  230 => 166,  227 => 165,  224 => 164,  221 => 163,  218 => 160,  215 => 156,  212 => 152,  210 => 149,  207 => 148,  204 => 145,  201 => 139,  199 => 138,  198 => 136,  197 => 132,  196 => 131,  195 => 129,  186 => 124,  184 => 123,  178 => 121,  171 => 116,  169 => 115,  168 => 113,  166 => 111,  158 => 106,  156 => 104,  154 => 103,  151 => 102,  148 => 101,  145 => 100,  143 => 99,  138 => 97,  135 => 96,  133 => 95,  126 => 94,  123 => 84,  116 => 80,  114 => 79,  113 => 77,  107 => 75,  105 => 74,  100 => 71,  98 => 70,  90 => 65,  82 => 60,  77 => 58,  74 => 57,  64 => 54,  61 => 53,  59 => 52,  54 => 49,  52 => 44,  50 => 42,  49 => 41,  48 => 37,  46 => 36,  43 => 35,  41 => 34,  38 => 33,);
    }

    public function getSourceContext()
    {
        return new Source("", "components/itilobject/selfservice.html.twig", "D:\\Data Aplikasi\\xampp php 8.0.2\\htdocs\\merging-manual\\halobps-rebase\\templates\\components\\itilobject\\selfservice.html.twig");
    }
}
