vim.opt.termguicolors = true

function MyGruvbox()
    local colors = require("gruvbox-baby.colors").config()
    vim.g.gruvbox_baby_color_overrides = {
        red = "#d75f5f"
    }
    vim.cmd.colorscheme("gruvbox-baby")
    vim.api.nvim_set_hl(0, "@function", {fg=colors.bright_yellow, bold=true})
    vim.api.nvim_set_hl(0, "@lsp.type.function", {link="@function"})
    vim.api.nvim_set_hl(0, "@function.call", {fg=colors.bright_yellow, italic=true})
    vim.api.nvim_set_hl(0, "@method.call", {link="@function.call"})
    vim.api.nvim_set_hl(0, "@lsp.type.class", {fg = colors.clean_green})
    vim.api.nvim_set_hl(0, "@lsp.type.macro", {fg = colors.magenta, bold=true })
    vim.api.nvim_set_hl(0, "@variable.builtin", {fg = colors.soft_yellow})
    vim.api.nvim_set_hl(0, "@type.builtin", {fg = colors.soft_yellow})
    vim.api.nvim_set_hl(0, "@lsp.mod.constructorOrDestructor.cpp", {link = "@function"})
    vim.api.nvim_set_hl(0, "@constructor.cpp", {link = "@function"})
    vim.api.nvim_set_hl(0, "@lsp.type.variable", {fg=colors.light_blue, bold=false, force=true})
    vim.api.nvim_set_hl(0, "@lsp.type.parameter", {link = "@lsp.type.variable"})
    vim.api.nvim_set_hl(0, "@field", {fg=colors.light_blue, underdashed=true})
    vim.api.nvim_set_hl(0, "@lsp.type.property", {link="@field"})
    vim.api.nvim_set_hl(0, "@property.cpp", {link="@field"})
    vim.api.nvim_set_hl(0, "StorageClass", {link="@keyword"})
    vim.api.nvim_set_hl(0, "@PreProc", {fg=colors.pink})
    vim.api.nvim_set_hl(0, "@define", {link="@PreProc"})
    vim.api.nvim_set_hl(0, "@include.cpp", {link="@PreProc"})
    vim.api.nvim_set_hl(0, "@type.qualifier", {fg=colors.orange, italic=true})
    vim.api.nvim_set_hl(0, "@storageclass.cpp", {link = "@type.qualifier.cpp"})
    vim.api.nvim_set_hl(0, "@namespace", {fg=colors.dark_gray, nocombine=true})
    vim.api.nvim_set_hl(0, "@lsp.type.namespace", {link="@namespace"})
    vim.api.nvim_set_hl(0, "@boolean", {link="@type.builtin"})
    vim.api.nvim_set_hl(0, "@constant", {link = "@lsp.type.macro"})
    vim.api.nvim_set_hl(0, "@conditional.ternary.cpp", {link="@operator"})
    vim.api.nvim_set_hl(0, "@number", {fg=colors.milk})

    vim.api.nvim_set_hl(0, "TabLineSel", {fg=colors.light_blue, standout=true})
    vim.api.nvim_set_hl(0, "TabLineFill", {link = "TabLine"})
end

function SetColor(color)
    color = color or "MyGruvbox"

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
SetColor("MyGruvbox")
