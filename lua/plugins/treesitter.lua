require("nvim-treesitter.configs").setup({
    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = false,

    highlight = {
        enable = true,

        -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
        -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
        -- the name of the parser)
        -- list of language that will be disabled
        disable = { "latex", "tex" },
    },
    autotag = {
        enable = true,
    },
})
require("nvim-treesitter.install").prefer_git = true

vim.treesitter.language.register("nasm", "asm")
