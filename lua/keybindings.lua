

-- escape insert without breaking my wrist
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })

-- leader key stuff
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '
--vim.g.maplocalleader ' '

-- better window controls
vim.api.nvim_set_keymap('n', '<Leader>w', '<C-w>', { noremap = true, silent = true })
