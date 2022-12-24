-- Indent
vim.opt.expandtab = true
vim.opt.shiftround = true
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.tabstop = 2

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Clipboard
vim.opt.clipboard:append({ 'unnamedplus' })

-- Interface
vim.opt.cursorline = true
vim.opt.number = true
-- vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.signcolumn = 'yes'

-- Behavior
vim.opt.scrolloff = 1
vim.opt.sidescrolloff = 5
vim.opt.confirm = true
vim.opt.modeline = false
vim.opt.swapfile = false
vim.opt.showmode = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.updatetime = 300
