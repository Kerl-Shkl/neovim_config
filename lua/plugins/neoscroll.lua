require('neoscroll').setup{
    mappings = {'<C-u>', '<C-d>', 'zt', 'zz', 'zb'},
    hide_cursor = false;
}

local t = {}
t['<C-u>'] = {'scroll', {'-vim.wo.scroll', 'false', '150'}}
t['<C-d>'] = {'scroll', {'vim.wo.scroll', 'false', '150'}}

require('neoscroll.config').set_mappings(t)
