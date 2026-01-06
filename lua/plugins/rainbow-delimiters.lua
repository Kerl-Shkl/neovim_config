require("rainbow-delimiters.setup").setup({
    strategy = {
        [""] = "rainbow-delimiters.strategy.global",
    },
    query = {
        -- [""] = "rainbow-delimiters",
        cpp = "rainbow-lambda",
    },
    highlight = {
        "RainbowDelimiterCyan",
        "RainbowDelimiterBlue",
        "RainbowDelimiterYellow",
        "RainbowDelimiterOrange",
        -- "RainbowDelimiterGreen",
        -- "RainbowDelimiterViolet",
        -- "RainbowDelimiterRed",
    },
    whitelist = { "cpp" },
})

local colors = require("gruvbox-baby.colors").config()
vim.api.nvim_set_hl(0, "RainbowDelimiterCyan", { fg = colors.orange })
vim.api.nvim_set_hl(0, "RainbowDelimiterBlue", { fg = colors.light_blue })
vim.api.nvim_set_hl(0, "RainbowDelimiterYellow", { fg = colors.bright_yellow })
vim.api.nvim_set_hl(0, "RainbowDelimiterOrange", { fg = colors.forest_green })
