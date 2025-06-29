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
    s({ trig = "mk", dscr = "inline math", snippetType = "autosnippet" }, fmt([[${}$]], d(1, utils.get_visual))),
}
