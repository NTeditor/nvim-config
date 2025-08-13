return {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = {
		".luarc.json",
		".luarc.jsonc",
		".luacheckrc",
		".stylua.toml",
		"stylua.toml",
		"selene.toml",
		"selene.yml",
		".git",
	},
	settings = {
		Lua = {
			format = {
				enable = true,
				defaultConfig = {
					quote_style = "double",
					indent_style = "tab",
					indent_size = "2",
					call_arg_parentheses = "always",
					end_of_line = "lf",
					trailing_table_separator = "smart",
				},
			},
		},
	},
}
