local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
            "s1n7ax/nvim-window-picker",
        },
    },

    { "nvim-treesitter/nvim-treesitter" },
    { "neovim/nvim-lspconfig" },
    { "luisiacc/gruvbox-baby", branch = "main" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-cmdline" },
    { "hrsh7th/nvim-cmp" },
    { "williamboman/mason.nvim" },
    {
        "nvim-telescope/telescope.nvim",
        branch = "master",
        dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-live-grep-args.nvim" },
    },
    { "tpope/vim-surround" },
    { "tpope/vim-unimpaired" },
    { "windwp/nvim-autopairs", event = "InsertEnter" },
    { "mhartington/formatter.nvim" },
    {
        "ray-x/lsp_signature.nvim",
        event = "VeryLazy",
        opts = {},
        config = function(_, opts)
            require("lsp_signature").setup(opts)
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    { "karb94/neoscroll.nvim" },
    { "numToStr/Comment.nvim", lazy = false },
    { -- install without yarn or npm
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function()
            vim.fn["mkdp#util#install"]()
        end,
    },
    {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        version = "v2.2", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- build = "make install_jsregexp" -- install jsregexp (optional!).
    },
    { "voldikss/vim-floaterm" },
    { "google/vim-searchindex" },
    { "chentoast/marks.nvim" },
    { "tpope/vim-fugitive" },
    {
        "hedyhli/outline.nvim",
        lazy = true,
        cmd = { "Outline", "OutlineOpen" },
        keys = { -- Example mapping to toggle outline
            { "<leader>o", "<cmd>Outline!<CR>", desc = "Toggle outline" },
        },
        opts = {
            -- Your setup opts here
        },
    },
    { "kevinhwang91/nvim-ufo", dependencies = { "kevinhwang91/promise-async" } },
    { "luukvbaal/statuscol.nvim" },
    { "lewis6991/gitsigns.nvim", version="v1.0.2" },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        opts = {},
    },
    { "https://github.com/windwp/nvim-ts-autotag" },
    {
        "lervag/vimtex",
        lazy = false, -- we don't want to lazy load VimTeX
        -- tag = "v2.15", -- uncomment to pin to a specific release
        init = function()
            -- VimTeX configuration goes here, e.g.
            vim.g.vimtex_view_method = "zathura"
        end,
    },
})
