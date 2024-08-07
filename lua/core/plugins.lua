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
            "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim", "s1n7ax/nvim-window-picker"
        }
    },

    { 'nvim-treesitter/nvim-treesitter' },
    { 'neovim/nvim-lspconfig'},
    { 'joshdick/onedark.vim' },
    { 'doums/darcula' },
    { 'luisiacc/gruvbox-baby', branch='main' },
    { 'hrsh7th/cmp-nvim-lsp' }, { 'hrsh7th/cmp-buffer' }, { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' }, { 'hrsh7th/nvim-cmp' },
    { "williamboman/mason.nvim" },
    {
	    'nvim-telescope/telescope.nvim',
	    tag = '0.1.5',
	    dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { 'tpope/vim-surround' }, { 'tpope/vim-unimpaired' },
    { 'windwp/nvim-autopairs', event = "InsertEnter" },
    { 'mhartington/formatter.nvim'},
    {
        'ray-x/lsp_signature.nvim', event = "VeryLazy", opts = {},
        config = function(_, opts) require'lsp_signature'.setup(opts) end
     },
     {
         'nvim-lualine/lualine.nvim',
         dependencies = { 'nvim-tree/nvim-web-devicons'}
     },
     { "folke/which-key.nvim", event = "VeryLazy", enabled=false},
     { "karb94/neoscroll.nvim" },
     { 'numToStr/Comment.nvim', lazy=false },
     { -- install without yarn or npm
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        version = "v2.2", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- build = "make install_jsregexp" -- install jsregexp (optional!).
    },
    { 'voldikss/vim-floaterm'},
    { 'google/vim-searchindex' },
    { 'chentoast/marks.nvim' },
    { 'tpope/vim-fugitive' }
})
