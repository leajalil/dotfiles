-- Aliases
----------------------------------------------------------
-- Keymaps configuration file: keymaps of neovim
-- and plugins.
-----------------------------------------------------------


local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd

-----------------------------------------------------------
-- Neovim shortcuts:
-----------------------------------------------------------

-- clear search highlighting
map('n', '<leader>c', ':nohl<CR>', default_opts)

-- reload configuracion
map('n', '<leader>r', ':source % <CR>', default_opts)

-- don't use arrow keys
--map('', '<up>', '<nop>', {noremap = true})
--map('', '<down>', '<nop>', {noremap = true})
--map('', '<left>', '<nop>', {noremap = true})
--map('', '<right>', '<nop>', {noremap = true})

map('i', '<C-h>', '<left>', default_opts)
map('i', '<C-j>', '<down>', default_opts)
map('i', '<C-k>', '<up>', default_opts)
map('i', '<C-l>', '<right>', default_opts)

-- fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>', default_opts)
map('i', '<leader>s', '<C-c>:w<CR>', default_opts)

-- move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)

-----------------------------------------------------------
-- Applications & Plugins shortcuts:
-----------------------------------------------------------
-- toggleterm
map('t', '<esc>', [[<C-\><C-n>]], default_opts)

-- nvim-tree opcion 1
--map('n', '<C-n>', ':Neotree toggle<CR>', default_opts)       -- open/close

-- nvim-tree opcion 2
map('n', '<C-n>', ':NvimTreeToggle <CR>', default_opts)       -- open/close
