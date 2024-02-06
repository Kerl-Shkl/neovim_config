require("luasnip.loaders.from_lua").lazy_load()
local utils = require "snippets.utils"
local get_visual = utils.get_visual
local line_begin = require("luasnip.extras.expand_conditions").line_begin

return {
    s(
        {trig="it", dscr="Italic"},
        fmta([[*<>*]], d(1, utils.get_visual))
    ),

    s(
        {trig="bf", dscr="Bold"},
        fmta([[**<>**]], d(1, utils.get_visual))
    ),

    s(
        {trig="uu", dscr="Underlined"},
        fmt([[<u>{}</u>]], d(1, utils.get_visual))
    ),
    s(
        {trig="mk", dscr="inline math", snippetType="autosnippet"},
        fmt([[${}$]], d(1, utils.get_visual))
    ),
    s(
        {trig="dm", dscr="Math", snippetType="autosnippet"},
        fmta([[
            $$
                <>
            $$
        ]], d(1, utils.get_visual)),
        { condition = line_begin }
    ),

    s({trig="cc", snippetType = "autosnippet"},
    fmta([[
        ```<>
        <>
        ```
    ]], { i(1), d(2, get_visual), }),
    {condition = line_begin}
    ),
}
