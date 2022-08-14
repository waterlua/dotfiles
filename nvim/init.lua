local set = vim.opt

set.cursorline = true
set.mouse = 'a'
set.number = true
set.wrap = false

set.autoindent = true
set.expandtab = true
set.shiftwidth = 2
set.smartindent = true
set.softtabstop = 2
set.tabstop = 2

set.foldmethod = 'indent'
set.foldenable = false

set.ignorecase = true
set.smartcase = true

set.swapfile = false
set.writebackup = false

vim.g.mapleader = ' '


require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'folke/which-key.nvim',
    config = function() require('which-key').setup({}) end,
  }

  use {
    'folke/tokyonight.nvim',
    config = function()
      vim.g.tokyonight_transparent = true
      vim.cmd [[colorscheme tokyonight]]
    end,
  }

  use {
    'kyazdani42/nvim-web-devicons',
    config = function() require('nvim-web-devicons').setup({}) end,
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function()
      require('lualine').setup({
        options = { theme = 'tokyonight' },
      })
    end,
  }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require('which-key').register({
        f = { '<cmd>Telescope find_files<cr>', 'Find File' },
        b = { '<cmd>Telescope buffers<cr>', 'Buffers' },
      }, { prefix = '<leader>' })
    end,
  }

  use {
    'ggandor/leap.nvim',
    config = function()
      local leap = require('leap')
      leap.setup({})
      leap.set_default_keymaps()
    end
  }

  use {
    'TimUntersberger/neogit',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require('neogit')
      require('which-key').register({
        g = { '<cmd>Neogit<cr>', 'Magit' },
      }, { prefix = '<leader>' })
    end,
  }

  use {
    'lewis6991/gitsigns.nvim',
    config = function() require('gitsigns').setup({}) end,
  }

  use {
    'windwp/nvim-autopairs',
    config = function() require('nvim-autopairs').setup({}) end,
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require('nvim-treesitter.configs').setup({
        ensure_installed = {'lua', 'python'},
      })
    end
  }

  use {
    'williamboman/mason.nvim',
    config = function() require('mason').setup() end,
  }

  use {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('mason-lspconfig').setup({
        automatic_installation = true,
        ensure_installed = { 'sumneko_lua', 'pyright' },
      })
    end,
  }

  use {
    'neovim/nvim-lspconfig',
    config = function()
      require('lspconfig').sumneko_lua.setup({
        settings = {
          Lua = {
            diagnostics = {
              globals = { 'hs', 'vim' }
            }
          }
        }
      })
      require('lspconfig').pyright.setup({})
    end,
  }

end)
