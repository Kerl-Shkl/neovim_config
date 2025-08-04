-- Indent Settings
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.smartindent = true
vim.opt.textwidth = 80

vim.opt.spell = true
vim.opt.spelllang = { "en_us", "ru_ru" }

vim.cmd([[
    let g:vimtex_imaps_enabled=0
    let g:vimtex_view_forward_search_on_start=0
    let g:vimtex_view_method='zathura'
    let g:vimtex_compiler_latexmk = {
            \ 'out_dir' : 'build',
            \}
]])

vim.keymap.set("n", "<leader>ll", ":VimtexCompile<CR>")
