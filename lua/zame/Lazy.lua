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

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
	--telescope
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		-- or                              , branch = '0.1.x',
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	--color scheme
	{ "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },

	--comment
	{ "numToStr/Comment.nvim", event = "VeryLazy", opts = {} },

	--indent line
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

	--treesitter
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

	--harpoon to navigate between files
	{ "ThePrimeagen/harpoon", branch = "harpoon2" },

	--undotree to undo changes
	{ "mbbill/undotree" },

	--fugitive for git
	{ "tpope/vim-fugitive" },

	--toggleterm to open terminal
	{ "akinsho/toggleterm.nvim", version = "*", config = true },

	--lualine
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
	},

	--nvim-tree
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},

	--autoapir
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {}, -- this is equalent to setup({}) function
	},

	--lsp
	--- Uncomment these if you want to manage LSP servers from neovim
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },

	{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "L3MON4D3/LuaSnip" },
	{ "kylechui/nvim-surround", version = "*", event = "VeryLazy", opts = {} },

	--flash
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		opts = {},
        -- stylua: ignore
        keys = {
            { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
            { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
            { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
            { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
            { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
        },
	},

	--for formater
	{
		"stevearc/conform.nvim",
		opts = {},
	},

	--for linters
	{
		"mfussenegger/nvim-lint",
	},
})
