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
    vim.api.nvim_set_hl(0, "@number", { fg = colors.milk })
    vim.api.nvim_set_hl(0, "@boolean", { link = "@number" })
    vim.api.nvim_set_hl(0, "@variable", { fg = colors.foreground })
    vim.api.nvim_set_hl(0, "@variable.member", { link = "@variable" })
    vim.api.nvim_set_hl(0, "@variable.parameter", { link = "@variable" })
    vim.api.nvim_set_hl(0, "@property", { link = "@variable.member" })
    vim.api.nvim_set_hl(0, "@function", { fg = colors.foreground })
    vim.api.nvim_set_hl(0, "@function.call", { link = "@function" })
    vim.api.nvim_set_hl(0, "@function.builtin", { link = "@function" })
    vim.api.nvim_set_hl(0, "@function.method", { link = "@function" })
    vim.api.nvim_set_hl(0, "@function.method.call", { link = "@function.call" })
    vim.api.nvim_set_hl(0, "@constructor", { link = "@function" })
    vim.api.nvim_set_hl(0, "@keyword", { fg = colors.blue_gray })
    vim.api.nvim_set_hl(0, "@keyword.function", { link = "@keyword" })
    vim.api.nvim_set_hl(0, "@keyword.operator", { link = "@keyword" })
    vim.api.nvim_set_hl(0, "@attribute.cpp", { link = "@keyword" })
    vim.api.nvim_set_hl(0, "@module", { link = "@keyword" })
    vim.api.nvim_set_hl(0, "@operator", { fg = colors.milk })
    vim.api.nvim_set_hl(0, "@keyword.operator", { link = "@operator" })
    vim.api.nvim_set_hl(0, "@keyword.modifier", { link = "@operator" })
    vim.api.nvim_set_hl(0, "@comment", { fg = colors.soft_yellow })
    vim.api.nvim_set_hl(0, "@constant", { fg = colors.milk })
    vim.api.nvim_set_hl(0, "@constant.builtin", { link = "@constant" })

    vim.api.nvim_set_hl(0, "@markup.heading.gitcommit", { fg = colors.orange })

    vim.api.nvim_set_hl(0, "Added", { fg = "#689d6a" })
    vim.api.nvim_set_hl(0, "Removed", { fg = "#cc241d" })
    vim.api.nvim_set_hl(0, "Changed", { fg = "#eebd35" })
end

function MyGruvbox()
    local colors = require("gruvbox-baby.colors").config()
    vim.g.gruvbox_baby_color_overrides = {
        red = "#d75f5f",
    }

    vim.cmd.colorscheme("gruvbox-baby")
    vim.api.nvim_set_hl(0, "@function", { fg = colors.bright_yellow, bold = true })
    vim.api.nvim_set_hl(0, "@lsp.type.function", { link = "@function" })
    vim.api.nvim_set_hl(0, "@function.call", { fg = colors.bright_yellow, italic = true })
    vim.api.nvim_set_hl(0, "@method.call", { link = "@function.call" })
    vim.api.nvim_set_hl(0, "@lsp.type.class", { fg = colors.clean_green })
    vim.api.nvim_set_hl(0, "@lsp.type.macro", { fg = colors.magenta, bold = true })
    vim.api.nvim_set_hl(0, "@variable.builtin", { fg = colors.soft_yellow })
    vim.api.nvim_set_hl(0, "@type.builtin", { fg = colors.soft_yellow })
    vim.api.nvim_set_hl(0, "@lsp.mod.constructorOrDestructor.cpp", { link = "@function" })
    vim.api.nvim_set_hl(0, "@constructor.cpp", { link = "@function" })
    vim.api.nvim_set_hl(0, "@lsp.type.variable", { fg = colors.light_blue, bold = false, force = true })
    vim.api.nvim_set_hl(0, "@lsp.type.parameter", { link = "@lsp.type.variable" })
    vim.api.nvim_set_hl(0, "@field", { fg = colors.light_blue, underdashed = true })
    vim.api.nvim_set_hl(0, "@lsp.type.property", { link = "@field" })
    vim.api.nvim_set_hl(0, "@property.cpp", { link = "@field" })
    vim.api.nvim_set_hl(0, "StorageClass", { link = "@keyword" })
    vim.api.nvim_set_hl(0, "@PreProc", { fg = colors.pink })
    vim.api.nvim_set_hl(0, "@define", { link = "@PreProc" })
    vim.api.nvim_set_hl(0, "@include.cpp", { link = "@PreProc" })
    vim.api.nvim_set_hl(0, "@type.qualifier", { fg = colors.orange, italic = true })
    vim.api.nvim_set_hl(0, "@storageclass.cpp", { link = "@type.qualifier.cpp" })
    vim.api.nvim_set_hl(0, "@namespace", { fg = colors.dark_gray, nocombine = true })
    vim.api.nvim_set_hl(0, "@lsp.type.namespace", { link = "@namespace" })
    vim.api.nvim_set_hl(0, "@boolean", { link = "@type.builtin" })
    vim.api.nvim_set_hl(0, "@constant", { link = "@lsp.type.macro" })
    vim.api.nvim_set_hl(0, "@conditional.ternary.cpp", { link = "@operator" })
    vim.api.nvim_set_hl(0, "@number", { fg = colors.milk })

    vim.api.nvim_set_hl(0, "TabLineSel", { fg = colors.light_blue, standout = true })
    vim.api.nvim_set_hl(0, "TabLineFill", { link = "TabLine" })

    vim.api.nvim_set_hl(0, "Added", { fg = "#689d6a" })
    vim.api.nvim_set_hl(0, "Removed", { fg = "#cc241d" })
    vim.api.nvim_set_hl(0, "Changed", { fg = "#eebd35" })
end

function SetColor(color)
    color = color or "MyGruvbox"

    -- Hide all semantic highlights
    if color == "MyGruvbox" then
        MyGruvbox()
    else
        vim.cmd.colorscheme(color)
    end
end

-- SetColor("onedark")
-- SetColor("darcula")
-- SetColor("gruvbox-baby")
-- SetColor("tokyonight-moon")
-- SetColor("tokyonight-moon")
-- SetColor("MyGruvbox")

sensibleHighlightning()
