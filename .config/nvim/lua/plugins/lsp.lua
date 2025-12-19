return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"cssls",
				"jsonls",
				"lua_ls",
				"qmlls",
				"bashls",
			},
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		opts = {
			formatters_by_ft = {
				css = { "prettier" },
				json = { "jq" },
				jsonc = { "jq" },
				lua = { "stylua" },
				-- qml = { "qmlformat" },
				bash = { "shfmt" },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback"
			},
		},
	}
}
