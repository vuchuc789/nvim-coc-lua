local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')
    .. '/site/pack/packer/start/packer.nvim'
  ---@diagnostic disable-next-line: missing-parameter
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
      'git',
      'clone',
      '--depth',
      '1',
      'https://github.com/wbthomason/packer.nvim',
      install_path,
    })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

require('packer').startup(function(use)
  -- Packer can manage itself
  use('wbthomason/packer.nvim')

  -- Coc
  use({ 'neoclide/coc.nvim', branch = 'release' })

  -- File explore
  use({
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly', -- optional, updated every week. (see issue #1193)
  })

  -- Finder
  use({
    'ibhagwan/fzf-lua',
    -- optional for icon support
    requires = { 'nvim-tree/nvim-web-devicons' },
  })

  -- Status line
  use({
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
  })

  -- Buffer
  use({
    'akinsho/bufferline.nvim',
    tag = 'v3.*',
    requires = 'nvim-tree/nvim-web-devicons',
  })

  -- Syntax, autopair, autotag
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/nvim-treesitter-textobjects')
  use('nvim-treesitter/nvim-treesitter-context')
  use('windwp/nvim-ts-autotag')

  -- Rainbow parentheses
  -- use('HiPhish/rainbow-delimiters.nvim')

  -- Indent line
  use('lukas-reineke/indent-blankline.nvim')

  -- Comment
  use('numToStr/Comment.nvim')
  use('JoosepAlviste/nvim-ts-context-commentstring')

  -- Surround
  use({
    'kylechui/nvim-surround',
    tag = '*', -- Use for stability; omit to use `main` branch for the latest features
  })

  -- Git
  -- use('tpope/vim-fugitive')
  use({
    'lewis6991/gitsigns.nvim',
    -- tag = 'release' -- To use the latest release
  })

  -- Snippet
  use('rafamadriz/friendly-snippets')

  -- Motion
  use('ggandor/lightspeed.nvim')
  use('tpope/vim-repeat')

  -- Theme
  use('rebelot/kanagawa.nvim')

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
