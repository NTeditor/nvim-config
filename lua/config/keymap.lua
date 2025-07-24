local treeApi = require('nvim-tree.api')
vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>b', treeApi.tree.toggle, { desc = "" })
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, { desc = "" })
vim.keymap.set('n', '<leader>qq', ':q<CR>', { desc = "" })
vim.keymap.set('n', '<leader>qf', ':q!<CR>', { desc = "" })
vim.keymap.set('n', '<leader>wq', ':wq<CR>', { desc = "" })
