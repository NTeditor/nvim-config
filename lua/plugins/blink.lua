return {
	"saghen/blink.cmp",
	dependencies = { 'rafamadriz/friendly-snippets' },
	version = '1.*',
	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = {
			preset = 'default',
			['<S-Tab>'] = { 'select_prev', 'snippet_backward', 'fallback' },
			['<Tab>'] = { 'select_next', 'snippet_forward', 'fallback' },
			["<CR>"] = { "accept", "fallback" },
			["<Esc>"] = { "hide", "fallback" },
			["<PageUp>"] = { "scroll_documentation_up", "fallback" },
			["<PageDown>"] = { "scroll_documentation_down", "fallback" }
		},
		appearance = {
			nerd_font_variant = 'mono'
		},
		completion = { documentation = { auto_show = false } },
		sources = {
			default = { 'lsp', 'path', 'snippets', 'buffer' },
		},
		fuzzy = { implementation = "prefer_rust_with_warning" }
	},
	opts_extend = { "sources.default" }
}
