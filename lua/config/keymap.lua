local keymap = vim.keymap.set

keymap("n", "<C-F>", function()
	vim.lsp.buf.format({ async = true })
end, { desc = "LSP: Format" })

keymap("n", "<leader>tn", ":tabnew ", { desc = "New tab", noremap = true })
keymap("n", "<leader>tc", ":tabclose<CR>", { desc = "Close tab" })
keymap("n", "<leader>to", ":tabonly<CR>", { desc = "Close all but current" })
