vim.g.mapleader = " "

-- Telescope
vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fg', ':Telescope live_grep<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fb', ':Telescope buffers<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fh', ':Telescope help_tags<CR>', { noremap = true })

-- Diagnostics
vim.api.nvim_set_keymap('n', '<leader>df', ':lua vim.diagnostic.open_float()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>dn', ':lua vim.diagnostic.goto_next()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>dp', ':lua vim.diagnostic.goto_prev()<CR>', { noremap = true })

-- NERDTree
vim.api.nvim_set_keymap('n', '<leader>N', ':NERDTreeToggle<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>Nf', ':NERDTreeFind<CR>', { noremap = true })

-- Terminal
vim.api.nvim_set_keymap('n', '<leader>th', ':sp +term<CR> | <C-w>J | :resize 10<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>tv', ':vs +term<CR> | <C-w>L | :vert res 50<CR>', { noremap = true })
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true })


