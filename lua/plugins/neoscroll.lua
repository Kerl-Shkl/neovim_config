neoscroll = require('neoscroll')

neoscroll.setup{
    mappings = {'<C-u>', '<C-d>', 'zt', 'zz', 'zb'},
    hide_cursor = false,
}

local t = {
    ["<C-u>"] = function() neoscroll.ctrl_u({move_cursor=false; duration = 150}) end;
    ["<C-d>"] = function() neoscroll.ctrl_d({move_cursor=false; duration = 150}) end;
    ["zt"]    = function() neoscroll.zt({ half_win_duration = 150 }) end;
    ["zz"]    = function() neoscroll.zz({ half_win_duration = 150 }) end;
    ["zb"]    = function() neoscroll.zb({ half_win_duration = 150 }) end;
}
local modes = { 'n', 'v', 'x' }
for key, func in pairs(t) do
    vim.keymap.set(modes, key, func)
end
