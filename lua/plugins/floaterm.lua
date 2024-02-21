vim.cmd[[
tnoremap <Esc> <C-\><C-n>
let g:floaterm_wintype = 'split'
let g:floaterm_height = 0.3
let g:floaterm_position = 'botright'
]]

vim.keymap.set('n', '<leader>tt', ':FloatermToggle<CR>')

local C = {}

function C.SetCMakeMaps(cmake_args)
    gen_str = 'cmake -S . -B build ' .. cmake_args
    build_str = 'cmake --build build'
    test_str = 'ctest --test-dir build/tests'
    vtest_str = test_str .. ' -V --rerun-failed --output-on-failure'
    vim.keymap.set('n',
                   '<leader>cg',
                   ':FloatermNew --autoclose=1 ' .. gen_str .. '<CR>')
    vim.keymap.set('n',
                   '<leader>cb',
                   ':FloatermNew --autoclose=1 ' .. build_str .. '<CR>')
    vim.keymap.set('n',
                   '<leader>ct',
                   ':FloatermNew --autoclose=0 ' .. test_str .. '<CR>')
    vim.keymap.set('n',
                   '<leader>cv',
                   ':FloatermNew --autoclose=0 ' .. vtest_str .. '<CR>')
    vim.keymap.set('n',
                   '<leader>cc',
                   ':FloatermNew! --autoclose=0 ' .. gen_str .. ' && '
                    .. build_str .. ' && '
                    .. test_str .. '<CR>')
end

return C
