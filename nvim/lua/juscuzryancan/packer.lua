--only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'dstein64/vim-startuptime'

  --color schemes
  use 'folke/tokyonight.nvim'

  --telescope
  use { 
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use "windwp/nvim-autopairs"
  use "windwp/nvim-ts-autotag"

  use "ThePrimeagen/vim-be-good"

  --cmplete
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  --toggle term to open up new terminal windows in the nvim window
  use {"akinsho/toggleterm.nvim", tag = 'v2.*', config = function()
    require("toggleterm").setup()
  end}

  --lsp ui window thingy
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
      local saga = require("lspsaga")

      saga.init_lsp_saga({
        -- your configuration
      })
    end,
  })

  --lsp
  use 'neovim/nvim-lspconfig'

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  --git-gutter
  use 'airblade/vim-gitgutter'

  --fugitive
  use 'tpope/vim-fugitive'

  --surroudn
  use 'tpope/vim-surround'

  use {
    'nvim-treesitter/nvim-treesitter',
  run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,}

  --treesomething
  use { 
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons'
    }
  }
end)
