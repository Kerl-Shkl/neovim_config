vim.opt.termguicolors = true

function sensibleHighlightning()
    -- Set gruvbox with custom red color
    local colors = require("gruvbox-baby.colors").config()
    vim.g.gruvbox_baby_color_overrides = {
        red = "#d75f5f",
    }
    vim.cmd.colorscheme("gruvbox-baby")

    -- Disable highlights from lsp
    for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
        vim.api.nvim_set_hl(0, group, {})
    end

    -- highlights
    vim.api.nvim_set_hl(0, "@type", { fg = colors.clean_green })
    vim.api.nvim_set_hl(0, "@type.builtin", { link = "@type" })

    vim.api.nvim_set_hl(0, "@number", { fg = colors.foreground })
    vim.api.nvim_set_hl(0, "@boolean", { link = "@number" })
    vim.api.nvim_set_hl(0, "@label", { fg = colors.foreground })

    vim.api.nvim_set_hl(0, "@variable", { fg = colors.foreground })
    vim.api.nvim_set_hl(0, "@variable.member", { link = "@variable" })
    vim.api.nvim_set_hl(0, "@variable.parameter", { link = "@variable" })
    vim.api.nvim_set_hl(0, "@variable.builtin", { link = "@variable" })
    vim.api.nvim_set_hl(0, "@property", { link = "@variable.member" })

    vim.api.nvim_set_hl(0, "@function", { fg = colors.foreground })
    vim.api.nvim_set_hl(0, "@function.call", { link = "@function" })
    vim.api.nvim_set_hl(0, "@function.builtin", { link = "@function" })
    vim.api.nvim_set_hl(0, "@function.method", { link = "@function" })
    vim.api.nvim_set_hl(0, "@function.method.call", { link = "@function.call" })
    vim.api.nvim_set_hl(0, "@constructor", { link = "@function" })

    vim.api.nvim_set_hl(0, "@keyword", { fg = colors.blue_gray })
    vim.api.nvim_set_hl(0, "@noexcept", { link = "@keyword" })
    vim.api.nvim_set_hl(0, "@keyword.function", { link = "@keyword" })
    vim.api.nvim_set_hl(0, "@keyword.operator", { link = "@keyword" })
    vim.api.nvim_set_hl(0, "@keyword.class.modifier", { link = "@keyword" })
    vim.api.nvim_set_hl(0, "@keyword.directive", { link = "@keyword" })
    vim.api.nvim_set_hl(0, "@attribute.cpp", { link = "@keyword" })

    -- vim.api.nvim_set_hl(0, "@module", { link = "@keyword" })
    vim.api.nvim_set_hl(0, "@module", { fg = colors.medium_gray })
    vim.api.nvim_set_hl(0, "@namespace_operator", { link = "@module" }) -- medium_gray is interesting variant

    vim.api.nvim_set_hl(0, "@operator", { fg = colors.milk })
    vim.api.nvim_set_hl(0, "@keyword.operator", { link = "@operator" })
    vim.api.nvim_set_hl(0, "@constant", { fg = colors.foreground })
    vim.api.nvim_set_hl(0, "@constant.builtin", { link = "@constant" })

    vim.api.nvim_set_hl(0, "@comment", { fg = colors.soft_yellow })
    vim.api.nvim_set_hl(0, "@comment.not_interesting", { fg = colors.comment })

    vim.api.nvim_set_hl(0, "@keyword.modifier", { link = "@type" })
    vim.api.nvim_set_hl(0, "@refdecl", { link = "@type" })

    vim.api.nvim_set_hl(0, "@markup.heading.gitcommit", { fg = colors.orange })

    vim.api.nvim_set_hl(0, "@folly_cont", { fg = colors.light_blue })
    vim.api.nvim_set_hl(0, "@folly_cont_braces", { link = "@folly_cont" })

    vim.api.nvim_set_hl(0, "@goto_op", { link = "@keyword.return" })
    vim.api.nvim_set_hl(0, "@default_case", { link = "@keyword.return" })

    vim.api.nvim_set_hl(0, "Added", { fg = "#689d6a" })
    vim.api.nvim_set_hl(0, "Removed", { fg = "#cc241d" })
    vim.api.nvim_set_hl(0, "Changed", { fg = "#eebd35" })
    vim.api.nvim_set_hl(0, "Underlined", { fg = colors.light_blue, underline = true })
end

sensibleHighlightning()
