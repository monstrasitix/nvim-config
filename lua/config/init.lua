require "config.remap"
require "config.set"
require "config.lazy"

require("lazy").setup {
    {
        "olimorris/onedarkpro.nvim",
        priority = 1000,
    },
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"nvim-treesitter/nvim-treesitter",
		cmd = "TSUpdate",
	},
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{"mbbill/undotree"},
	{"tpope/vim-fugitive"},
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
	},
    {
        "startup-nvim/startup.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim",
        },
    },
	{"williamboman/mason.nvim"},
	{"williamboman/mason-lspconfig.nvim"},
	{"neovim/nvim-lspconfig"},
	{"hrsh7th/nvim-cmp"},
	{"hrsh7th/cmp-nvim-lsp"},
	{"hrsh7th/cmp-nvim-lua"},
	{"hrsh7th/cmp-buffer"},
	{"hrsh7th/cmp-path"},
	{"L3MON4D3/LuaSnip"},
	{"saadparwaiz1/cmp_luasnip"},
	{"rafamadriz/friendly-snippets"},
}
