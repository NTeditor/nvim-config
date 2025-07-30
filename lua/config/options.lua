vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.cmd.colorscheme "catppuccin"
vim.opt.clipboard = "unnamedplus"
vim.lsp.enable("lua_ls")
vim.lsp.enable("gopls")
vim.lsp.enable("clangd")
vim.lsp.enable("bashls")
vim.lsp.enable("cmake")
vim.lsp.enable("ts_ls")
vim.wo.number = true
vim.wo.relativenumber = true
vim.diagnostic.config({ virtual_text = true })
require("nvim-tree").setup({
	view = { float = { enable = true } },
})
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = false
