vim.lsp.config("rust_analyzer", {
  settings = {
    ["rust-analyzer"] = {
      inlayHints = {
        closureReturnTypeHints = { enable = true },
        lifetimeElisionHints = { enable = true },
        discriminantHints = { enable = true },
      },
    },
  },
})

vim.lsp.config("pylsp", {})
vim.lsp.config("lua_ls", {})
vim.lsp.enable({ "rust_analyzer", "pylsp", "lua_ls" })

vim.diagnostic.config({
  virtual_lines = true,
  underline = {
    enable = true,
  },
  severity_sort = true,
})
