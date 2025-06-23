local tabsize = 2

vim.opt.tabstop = tabsize
vim.opt.shiftwidth = tabsize
vim.opt.softtabstop = tabsize
vim.opt.expandtab = false

vim.opt.number = true
vim.opt.relativenumber = true
vim.o.updatetime = 700
vim.api.nvim_create_autocmd("CursorHold", {
	pattern = "*",
	callback = function()
		vim.diagnostic.open_float(nil, { focus = false })
	end
})

vim.diagnostic.config({
	virtual_text = false,
	signs = true,
	underline = true,
	update_in_insert = true,
	severity_sort = true,
})

if vim.fn.executable("termux-clipboard-get") == 1 then
	vim.g.clipboard = {
		name = "termux",
		copy = {
			["+"] = "termux-clipboard-set",
			["*"] = "termux-clipboard-set",
		},
		paste = {
			["+"] = "termux-clipboard-get",
			["*"] = "termux-clipboard-get",
		},
		cache_enabled = true,
	}
else
	vim.opt.clipboard = "unnamedplus"
end
