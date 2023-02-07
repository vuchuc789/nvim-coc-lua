-- Theme

-- require('catppuccin').setup({
--   flavour = 'mocha', -- latte, frappe, macchiato, mocha
--   transparent_background = true,
--   term_colors = true,
--   dim_inactive = {
--     enabled = true,
--     shade = 'dark',
--     percentage = 0.15,
--   },
-- })

-- vim.cmd.colorscheme('catppuccin')

require('kanagawa').setup({
  -- transparent = true, -- do not set background color
  dimInactive = true, -- dim inactive window `:h hl-NormalNC`
  globalStatus = true, -- adjust window separators highlight for laststatus=3
  terminalColors = true, -- define vim.g.terminal_color_{0,17}
})

vim.cmd('colorscheme kanagawa')
