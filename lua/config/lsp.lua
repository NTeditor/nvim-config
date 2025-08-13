vim.lsp.enable({ "lua_ls", "gopls", "clangd", "cmake", "ts_ls", "vue_ls" })
vim.keymap.set("n", "<leader>f", function()
	require("conform").format({
		lsp_format = "fallback",
		async = true,
		timeout_ms = 1000,
	})
end, { desc = "Format buffer" })

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "prettier" },
		typescript = { "prettier" },
		css = { "prettier" },
		html = { "prettier" },
		json = { "prettier" },
		markdown = { "prettier" },
		sh = { "shfmt" },
		vue = { "prettier" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})
