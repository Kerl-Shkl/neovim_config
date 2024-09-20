vim.deprecate = function() end

-- Basic
require('core.plugins')
require('core.mappings')
require('core.colors')
require('core.configs')

-- Plugins
require('plugins.neotree')
require('plugins.treesitter')
require('plugins.lsp')
require('plugins.cmp')
require('plugins.mason')
require('plugins.telescope')
require('plugins.autopairs')
require('plugins.formatter')
require('plugins.signature')
require('plugins.lualine')
require('plugins.neoscroll')
require('plugins.comment')
require('plugins.luasnip')
require('plugins.floaterm')
require('plugins.mytry')
require('plugins.bookmarks')
require('plugins.outline')
-- require('plugins.gonvim')
require('plugins.ufo')
require('plugins.statuscol')
require('plugins.gitsigns')

SetCMakeMaps = require('plugins.floaterm').SetCMakeMaps
