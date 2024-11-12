return require("packer").startup(function(use)
	-- Configurations:

	use("wbthomason/packer.nvim")
	use({
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"clangd",
			},
		},
	})
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")

	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")
	use("hrsh7th/cmp-nvim-lsp-signature-help")
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/vim-vsnip")
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional, for file icons
		},
	})
	use("tjdevries/colorbuddy.nvim")
	use("Mofiqul/dracula.nvim")
	use({ "catppuccin/nvim", as = "catppuccin" })

	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})

	use({
		"akinsho/bufferline.nvim",
		tag = "*",
		requires = "nvim-tree/nvim-web-devicons",
	})

	use({
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	use({
		"stevearc/conform.nvim",
	})

	use({
		"folke/todo-comments.nvim",
	})

	use({
		"tpope/vim-surround",
		run = function()
			require("vim-surround").setup({})
		end,
	})
end)
