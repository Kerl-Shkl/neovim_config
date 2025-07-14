local telescope = require("telescope")
local lga_actions = require("telescope-live-grep-args.actions")

telescope.setup{
  defaults = {
    file_ignore_patterns = {
      "build/",
      "Debug/",
      "Build/"
    }
  },
  extensions = {
    live_grep_args = {
      auto_quoting = true, -- enable/disable auto-quoting
      -- define mappings, e.g.
      mappings = { -- extend mappings
        i = {
          ["<C-g>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
          ["<C-c>"] = lga_actions.quote_prompt({ postfix = " --iglob *.[ch]pp " }),
        },
      },
    }
  }
}

telescope.load_extension("live_grep_args")
vim.keymap.set("n", "<leader>fw", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('v', '<leader>fv', builtin.grep_string, {})
-- vim.keymap.set('n', '<Tab>', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
vim.keymap.set('n', '<leader>ls', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>gr', builtin.lsp_references,
               {noremap = true, silent = true})
vim.keymap.set('n', '<leader>gd', builtin.lsp_definitions,
               {noremap = true, silent = true})
