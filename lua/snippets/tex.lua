require("luasnip.loaders.from_lua").lazy_load()
local utils = require "snippets.utils"

return {
    s("ff", fmta("\\frac{<>}{<>}", { i(1), i(2) }), { condition = utils.in_mathzone }),
}
