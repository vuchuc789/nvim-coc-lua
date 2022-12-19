require('fzf-lua').setup({
  files = {
    fzf_opts = {
      ['--history'] = vim.fn.stdpath('data') .. '/fzf-lua-files-history',
    },
  },
  grep = {
    fzf_opts = {
      ['--history'] = vim.fn.stdpath('data') .. '/fzf-lua-grep-history',
    },
  },
})
