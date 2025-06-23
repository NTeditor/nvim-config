vim.keymap.set("n", "<C-F>", function()
	vim.lsp.buf.format({ async = true })
end, { desc = "LSP: Format" })
