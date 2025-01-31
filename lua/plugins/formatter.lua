-- Utilities for creating configurations
local util = require("formatter.util")

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup({
    -- Enable or disable logging
    logging = false,
    -- Set the log level
    log_level = vim.log.levels.WARN,
    -- All formatter configurations are opt-in
    filetype = {
        -- Formatter configurations for filetype "lua" go here
        -- and will be executed in order
        -- lua = {
        --   -- "formatter.filetypes.lua" defines default configurations for the
        --   -- "lua" filetype
        --   require("formatter.filetypes.lua").stylua,

        --   -- You can also define your own configuration
        --   function()
        --     -- Supports conditional formatting
        --     if util.get_current_buffer_file_name() == "special.lua" then
        --       return nil
        --     end

        --     -- Full specification of configurations is down below and in Vim help
        --     -- files
        --     return {
        --       exe = "stylua",
        --       args = {
        --         "--search-parent-directories",
        --         "--stdin-filepath",
        --         util.escape_path(util.get_current_buffer_file_path()),
        --         "--",
        --         "-",
        --       },
        --       stdin = true,
        --     }
        --   end
        -- },

        lua = {
            require("formatter.filetypes.lua").stylua,
        },

        cpp = {
            require("formatter.filetypes.cpp").clangformat,
        },

        asm = {
            function()
                return {
                    exe = "asmfmt",
                    args = { "-ii 4", "-ci 35" },
                    stdin = false,
                    try_node_modules = false,
                }
            end,
        },

        html = {
            require("formatter.filetypes.html").prettierd,
        },

        css = {
            require("formatter.filetypes.html").prettierd,
        },

        c = {
            require("formatter.filetypes.cpp").clangformat,
        },

        go = {
            require("formatter.filetypes.go").gofumpt,
            require("formatter.filetypes.go").goimports,
        },

        cmake = {
            require("formatter.filetypes.cmake").cmakeformat,
        },

        python = {
            require("formatter.filetypes.python").black,
        },

        -- Use the special "*" filetype for defining formatter configurations on
        -- any filetype
        ["*"] = {
            -- "formatter.filetypes.any" defines default configurations for any
            -- filetype
            require("formatter.filetypes.any").remove_trailing_whitespace,
        },
    },
})

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
augroup("__formatter__", { clear = true })
autocmd("BufWritePost", {
    group = "__formatter__",
    command = ":FormatWrite",
})

-- augroup FormatAutogroup
--   autocmd!
--   autocmd BufWritePost * FormatWrite
-- augroup END
