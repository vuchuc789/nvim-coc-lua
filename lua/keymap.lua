vim.g.mapleader = ' '

vim.keymap.set('n', 'j', 'gj', { noremap = true, silent = true })
vim.keymap.set('n', 'k', 'gk', { noremap = true, silent = true })
vim.keymap.set('v', 'j', 'gj', { noremap = true, silent = true })
vim.keymap.set('v', 'k', 'gk', { noremap = true, silent = true })

vim.keymap.set('i', 'jk', '<Esc>', { noremap = true, silent = true })
vim.keymap.set('i', 'kj', '<Esc>', { noremap = true, silent = true })

vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

vim.keymap.set('v', '>', '>gv', { noremap = true, silent = true })
vim.keymap.set('v', '<', '<gv', { noremap = true, silent = true })

vim.keymap.set(
  'n',
  '<C-n>',
  '<cmd>NvimTreeToggle<cr>',
  { noremap = true, silent = true }
)

vim.keymap.set(
  'n',
  '<leader>ff',
  "<cmd>lua require('fzf-lua').files()<cr>",
  { noremap = true, silent = true }
)
vim.keymap.set(
  'n',
  '<leader>fa',
  "<cmd>lua require('fzf-lua').grep({ search = '' })<cr>",
  { noremap = true, silent = true }
)
vim.keymap.set(
  'n',
  '<leader>fw',
  "<cmd>lua require('fzf-lua').grep_project()<cr>",
  { noremap = true, silent = true }
)

vim.keymap.set(
  'n',
  '<Tab>',
  '<cmd>BufferLineCycleNext<cr>',
  { noremap = true, silent = true }
)
vim.keymap.set(
  'n',
  '<S-Tab>',
  '<cmd>BufferLineCyclePrev<cr>',
  { noremap = true, silent = true }
)
