require("luasnip.loaders.from_lua").lazy_load()
local utils = require("snippets.utils")
local get_visual = utils.get_visual
local line_begin = require("luasnip.extras.expand_conditions").line_begin

return {
    s(
        { trig = "dm", dscr = "Math", snippetType = "autosnippet" },
        fmta(
            [[
            $$
              <>
            $$
        ]],
            d(1, utils.get_visual)
        ),
        { condition = line_begin }
    ),
    s(
        { trig = "mk", dscr = "inline math", snippetType = "autosnippet", wordTrig = true },
        fmt([[${}$]], d(1, utils.get_visual))
    ),

    s(
        { trig = "beg", dscr = "begin{}/end{}", snippetType = "autosnippet" },
        fmta(
            [[
            \begin{<>}
              <>
            \end{<>}
            ]],
            { i(1), i(0), rep(1) }
        ),
        { condition = line_begin }
    ),

    s(
        { trig = "enum", dscr = "enumerate", snippetType = "autosnippet" },
        fmta(
            [[
        \begin{enumerate}
          \item <>
        \end{enumerate}
        ]],
            { i(1) }
        ),
        { condition = line_begin }
    ),

    s(
        { trig = "item", dscr = "itemize", snippetType = "autosnippet" },
        fmta(
            [[
        \begin{itemize}
          \item <>
        \end{itemize}
        ]],
            { i(1) }
        ),
        { condition = line_begin }
    ),

    s(
        { trig = "v!", dscr = "verb!!", snippetType = "autosnippet", wordTrig = true },
        fmta([[\verb!<>!<>]], { d(1, utils.get_visual), i(0) })
    ),

    s(
        { trig = "table", dscr = "Table environment", snippetType = "snippet" },
        fmta(
            [[
          \begin{table}[<>]
            \centering
            \label{tab:<>}
            \begin{tabular}{<>}
              <>
            \end{tabular}
            \caption{<>}
          \end{table}
            ]],
            { i(1), i(2), i(4), i(0), i(3) }
        )
    ),

    s(
        { trig = "fig", dscr = "Figure environment", snippetType = "snippet" },
        fmta(
            [[
          \begin{figure}[<>]
            \centering
            \includegraphics[width=0.8\textwidth]{<>}
            \label{tab:<>}
            \caption{<>}
          \end{figure}
            ]],
            { i(1), i(2), i(2), i(3) }
        )
    ),

    s(
        { trig = "bf", dscr = "bold text", snippetType = "snippet" },
        fmta([[\textbf{<>}<>]], { d(1, utils.get_visual), i(0) })
    ),

    s(
        { trig = "it", dscr = "italic text", snippetType = "snippet" },
        fmta([[\textit{<>}<>]], { d(1, utils.get_visual), i(0) })
    ),

    s({ trig = "sec", dscr = "section", snippetType = "snippet" }, fmta([[\section{<>}]], { d(1, utils.get_visual) })),

    s(
        { trig = "sub", dscr = "subsection", snippetType = "snippet" },
        fmta([[\subsection{<>}]], { d(1, utils.get_visual) })
    ),

    s(
        { trig = "subsub", dscr = "subsubsection", snippetType = "snippet" },
        fmta([[\subsubsection{<>}]], { d(1, utils.get_visual) })
    ),
}
