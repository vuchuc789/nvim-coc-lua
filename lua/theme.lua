-- Theme
-- require('kanagawa').setup({
--   -- transparent = true, -- do not set background color
--   dimInactive = true, -- dim inactive window `:h hl-NormalNC`
--   globalStatus = true, -- adjust window separators highlight for laststatus=3
--   terminalColors = true, -- define vim.g.terminal_color_{0,17}
-- })

-- vim.cmd('colorscheme kanagawa')

require('onedarkpro').setup({
  options = {
    transparency = true,
    cursorline = true,
  },
})

vim.cmd('colorscheme onedark')
