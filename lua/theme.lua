-- Theme

require('catppuccin').setup({
  flavour = 'mocha', -- latte, frappe, macchiato, mocha
  transparent_background = true,
  term_colors = true,
})

vim.cmd.colorscheme('catppuccin')
