-- Clipboard
-- vim.opt.clipboard = "unnamedplus"

-- Indent Settings
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true

-- Line Numbers
vim.opt.number = true
vim.wo.number = true
vim.opt.relativenumber = true

-- Fillchars
vim.opt.fillchars = {
    vert = "│",
    fold = "⠀",
    eob = " ", -- suppress ~ at EndOfBuffer
    -- diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
    msgsep = "‾",
    foldopen = "▾",
    foldsep = "│",
    foldclose = "▸"
}

vim.opt.colorcolumn = '80'
vim.opt.scrolloff = 2

vim.cmd([[
    set foldmethod=expr
    set foldexpr=nvim_treesitter#foldexpr()
    set nofoldenable                     " Disable folding at startup.
]])

vim.opt.exrc = true

-- For change layout use i_CTRL_^
vim.opt.keymap = "russian-jcukenwin"
vim.opt.iminsert = 0
vim.opt.imsearch = 0
vim.cmd([[
    highlight lCursor guifg=NONE guibg=Cyan
]])

local git_compare = function(opts)
    base = "HEAD~1"
    if opts.args and opts.args ~= ""  then
        base = opts.args
    end
    vim.cmd('Neotree right git_status git_base='..base)
    require('gitsigns').change_base(base, true)
end

vim.api.nvim_create_user_command("GitCompare", git_compare, {
    nargs = "?",
    desc = "Create env like in Pull Request diff",
    bang = false,
})
