require("luasnip.loaders.from_lua").lazy_load()
local utils = require "snippets.utils"

return {

    s(
        {trig="ali", dscr="Aligned", snippetType="autosnippet"},
        fmta([[
        \begin{aligned}
            <>
        \end{aligned}
        ]], {i(1)}),
        { condition = utils.in_mathzone }),

    s(
        {trig="!=", dscr="not equal", wordTrig=false, snippetType="autosnippet"},
        { t("\\neq")},
        {condition = utils.in_mathzone}),

    s(
        {trig="mat", descr="Matrix"},
        fmta([[
          \begin{matrix}
              <>
          \end{matrix} <>
        ]], {i(1), i(0)}),
        {condition = utils.in_mathzone}),

    s(
        {trig="part", dscr="d/dx"},
        fmta([[
            \frac{\partial <>}{\partial <>} <>
        ]], {i(1), i(2), i(0)}),
        {condition= utils.in_mathzone}),

    s(
        {trig="sq", dscr="sqrt", snippetType="autosnippet"},
        {t("\\sqrt{"), i(1), t("}"), i(0)},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig="td", dscr="to the power", wordTrig=false, snippetType="autosnippet"},
        {t("^{"), i(1), t("}"), i(0)},
        {condition=utils.in_mathzone}
    ),

    s(
        {trig="__", dscr="subscript", wordTrig=false, snippetType="autosnippet"},
        {t("_{"), i(1), t("}"), i(0)},
        {condition=utils.in_mathzone}
    ),

    s(
        {trig="ooo", dscr="infinity", wordTrig=false, snippetType="autosnippet"},
        {t("\\infty")},
        {condition=utils.in_mathzone}
    ),

    s(
        {trig="**", dscr="cdot", snippetType="autosnippet"},
        {t("\\cdot")},
        {condition=utils.in_mathzone}
    ),

    s(
        {trig = "xx", snippetType="autosnippet"},
        { t("\\times "), },
        {condition = utils.in_mathzone}
    ),

    s(
        {trig="sys", dscr="system", snippetType="autosnippet"},
        fmta([[
            \left\{\begin{aligned}
                <>
            \end{aligned}\right.
        ]], {i(1)}),
        {condition = utils.in_mathzone}
    ),

    s(
        {trig="lim", dscr="limit"},
        fmta([[\lim_{<> \to <>}]], {i(1, "n"), i(2, "\\infty")}),
        {condition = utils.in_mathzone}
    ),

    s(
        {trig="invs", dscr="inverse", wordTrig=false, snippetType="autosnippet"},
        {t("^{-1}")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig="=>", dscr="implies", wordTrig=false, snippetType="autosnippet"},
        {t("\\implies")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig="->", dscr="to", wordTrig=false, snippetType="autosnippet"},
        {t("\\to")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig="<->", dscr="leftrightarrow", wordTrig=false, snippetType="autosnippet"},
        {t("\\leftrightarrow")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig="!>", dscr="mapsto", wordTrig=false, snippetType="autosnippet"},
        {t("\\mapsto")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig="=<", dscr="implied by", wordTrig=false, snippetType="autosnippet"},
        {t("\\impliedby")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig="//", dscr="fraction", wordTrig=false, snippetType="autosnippet"},
        {t("\\frac{"), i(1), t("}{"), i(2), t("}")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig="sum", dscr="summa"},
        fmta([[
            \sum_{<>}^{<>} <>
        ]], {i(1, "n=1"), i(2, "\\infty"), i(3, "a_n z^n")}),
        {condition = utils.in_mathzone}
    ),

    s(
        {trig="int", dscr="integral"},
        fmta([[
            \int_{<>}^{<>} <>
        ]], {i(1, "a"), i(2, "b"), i(3, "t dt")}),
        {condition = utils.in_mathzone}
    ),

    s(
        {trig="<=", dsqr="less equal", wordTrig=false, snippetType="autosnippet"},
        {t("\\le")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig=">=", dsqr="greater equal", wordTrig=false, snippetType="autosnippet"},
        {t("\\ge")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig="disp", dscr="display style for math", wordTrig=false, snippetType="autosnippet"},
        {t("\\displaystyle")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig="tt", dscr="text", snippetType="autosnippet"},
        fmta([[
            \text{<>}
        ]], {i(1)}),
        {condition = utils.in_mathzone}
    ),

    s(
        {trig="sr", dscr="square", wordTrig=false, snippetType="autosnippet"},
        {t("^2")},
        {condition = utils.in_mathzone}
    ),

    s(
        {trig="cb", dscr="cube", wordTrig=false, snippetType="autosnippet"},
        {t("^3")},
        {condition = utils.in_mathzone}
    )
    -- Not working now
    -- s(
    --     {trig="((%d+)|(%d*)(\\)?(%a+)((^|_)(%{%d+%}|%d))*)/", regTrig=true, snippetType="autosnippet"},
    --     fmta("\\frac{<>}{<>}", {f(function(_, snip) return snip.captures[1] end), i(1)}),
    --     {condition = utils.in_mathzone}
    -- )

}
