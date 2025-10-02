return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    direction = "float",
  },
  keys = {
    { "<leader>tf", "<cmd>ToggleTerm<cr>", desc = "Terminal", mode = { "n", "t" } },
  },
}
