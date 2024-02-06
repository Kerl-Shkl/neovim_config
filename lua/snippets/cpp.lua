require("luasnip.loaders.from_lua").lazy_load()
local utils = require "snippets.utils"
local get_visual = utils.get_visual
local line_begin = require("luasnip.extras.expand_conditions").line_begin

return {

s(
    {trig="def", dscr="C Macros #define"},
    {
        t("#define ")
    }
),

s(
    {trig="once", dscr="C include guard"},
    fmt(
    [[
    #ifndef <>
    #define <>

    <>

    #endif // end of include guard: <>
    ]],
    {i(1),rep(1),i(2),rep(1)},
    {delimiters="<>"}
    )
),

s(
    {trig="#in", dscr="#include ..."},
    {t("#include ")}
),

s(
    {trig="eli", dscr="else if ..."},
    fmta([[
        else if (<>) {
            <>
        }
    ]], {i(1), d(2, utils.get_visual)})
),

s(
    {trig="tp", dscr="template <typename ...>"},
    fmt([[
        template <typename {}>
    ]], {i(1, "T")})
)

}
