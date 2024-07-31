vim.g.mapleader = " "

-- Neotree
vim.keymap.set('n', '<leader>n', ':Neotree float toggle focus<CR>')
vim.keymap.set('n', '<C-n>', ':Neotree left toggle focus<CR>')

-- space y to copy to clipboard
vim.keymap.set({"n", "v", "o"}, "<leader>y", "\"+y", { remap = true })
-- space p to past to clipboard
vim.keymap.set({"n"}, "<leader>p", "\"+p", { remap = true })
