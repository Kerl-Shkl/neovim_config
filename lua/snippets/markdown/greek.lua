require("luasnip.loaders.from_lua").lazy_load()
local utils = require "snippets.utils"

return {
    s(
        {trig=";a", wordTrig=false, snippetType="autosnippet"},
        {t("\\alpha")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";b", wordTrig=false, snippetType="autosnippet"},
        {t("\\beta")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";g", wordTrig=false, snippetType="autosnippet"},
        {t("\\gamma")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";G", wordTrig=false, snippetType="autosnippet"},
        {t("\\Gamma")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";d", wordTrig=false, snippetType="autosnippet"},
        {t("\\Delta")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";D", wordTrig=false, snippetType="autosnippet"},
        {t("\\Delta")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";e", wordTrig=false, snippetType="autosnippet"},
        {t("\\epsilon")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";ve", wordTrig=false, snippetType="autosnippet"},
        {t("\\varepsilon")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";z", wordTrig=false, snippetType="autosnippet"},
        {t("\\zeta")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";h", wordTrig=false, snippetType="autosnippet"},
        {t("\\eta")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";tt", wordTrig=false, snippetType="autosnippet"},
        {t("\\theta")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";vtt", wordTrig=false, snippetType="autosnippet"},
        {t("\\vartheta")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";TT", wordTrig=false, snippetType="autosnippet"},
        {t("\\Theta")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";i", wordTrig=false, snippetType="autosnippet"},
        {t("\\iota")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";k", wordTrig=false, snippetType="autosnippet"},
        {t("\\kappa")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";l", wordTrig=false, snippetType="autosnippet"},
        {t("\\lambda")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";L", wordTrig=false, snippetType="autosnippet"},
        {t("\\Lambda")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";m", wordTrig=false, snippetType="autosnippet"},
        {t("\\mu")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";n", wordTrig=false, snippetType="autosnippet"},
        {t("\\nu")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";x", wordTrig=false, snippetType="autosnippet"},
        {t("\\xi")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";X", wordTrig=false, snippetType="autosnippet"},
        {t("\\Xi")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";pi", wordTrig=false, snippetType="autosnippet"},
        {t("\\pi")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";Pi", wordTrig=false, snippetType="autosnippet"},
        {t("\\Pi")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";r", wordTrig=false, snippetType="autosnippet"},
        {t("\\rho")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";vr", wordTrig=false, snippetType="autosnippet"},
        {t("\\varrho")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";s", wordTrig=false, snippetType="autosnippet"},
        {t("\\sigma")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";S", wordTrig=false, snippetType="autosnippet"},
        {t("\\Sigma")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";tu", wordTrig=false, snippetType="autosnippet"},
        {t("\\tau")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";u", wordTrig=false, snippetType="autosnippet"},
        {t("\\upsilon")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";U", wordTrig=false, snippetType="autosnippet"},
        {t("\\Upsilon")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";f", wordTrig=false, snippetType="autosnippet"},
        {t("\\Phi")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";vf", wordTrig=false, snippetType="autosnippet"},
        {t("\\Phi")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";F", wordTrig=false, snippetType="autosnippet"},
        {t("\\Phi")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";c", wordTrig=false, snippetType="autosnippet"},
        {t("\\chi")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";ps", wordTrig=false, snippetType="autosnippet"},
        {t("\\psi")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";Ps", wordTrig=false, snippetType="autosnippet"},
        {t("\\Psi")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";w", wordTrig=false, snippetType="autosnippet"},
        {t("\\omega")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=";W", wordTrig=false, snippetType="autosnippet"},
        {t("\\Omega")},
        {condition = utils.in_mathzone}
    ),
}
