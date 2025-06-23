local lspTimeout = 200

return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		lspconfig.gopls.setup({
			settings = {
				gopls = {
					analyses = {
						unusedparams = true,
						nilness = true,
						shadow = true,
					},
					staticcheck = true,
				}
			},
			flags = {
				debounce_text_changes = lspTimeout,
			},
			capabilities = capabilities,
		})
		lspconfig.lua_ls.setup({
			settings = {
				Lua = {
					runtime = {
						version = "LuaJIT",
					},
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						library = vim.api.nvim_get_runtime_file("", true),
					},
					telemetry = {
						enable = false,
					},
				},
			},
			flags = {
				debounce_text_changes = lspTimeout,
			},
			capabilities = capabilities,
		})
		lspconfig.clangd.setup({
			cmd = { "clangd", "--background-index", "--clang-tidy" },
			flags = {
				debounce_text_changes = lspTimeout,
			},
			capabilities = capabilities,
		})
	end
}
