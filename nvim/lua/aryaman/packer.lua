  vim.cmd [[packadd packer.nvim]]

  return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use{
      'vim-airline/vim-airline'
  }
  
  use{
      'rafi/awesome-vim-colorschemes'
  }

  use {
      'nvim-treesitter/nvim-treesitter',
      run = function()
          local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
          ts_update()
      end,
  }
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use("tpope/vim-fugitive")
  use {
      "VonHeikemen/lsp-zero.nvim",
      requires = {
          -- LSP Support
          {"neovim/nvim-lspconfig"},
          {"williamboman/mason.nvim"},
          {"williamboman/mason-lspconfig.nvim"},

          -- Autocompletion
          {"hrsh7th/nvim-cmp"},
          {"hrsh7th/cmp-buffer"},
          {"hrsh7th/cmp-path"},
          {"saadparwaiz1/cmp_luasnip"},
          {"hrsh7th/cmp-nvim-lsp"},
          {"hrsh7th/cmp-nvim-lua"},

          -- Snippets
          {"L3MON4D3/LuaSnip"},
          {"rafamadriz/friendly-snippets"},
      }
  }
  use({
      'nvim-lua/popup.nvim',
      'nvim-lua/plenary',
      'nvim-telescope/telescope-media-files.nvim'
  })
  use( {
    'nvim-tree/nvim-tree.lua',
    requires = {
        'nvim-tree/nvim-web-devicons', -- optional
    },
})
  use({
      'christoomey/vim-tmux-navigator' 
  })
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use {
      'xeluxee/competitest.nvim',
      requires = 'MunifTanjim/nui.nvim',
      config = function() require('competitest').setup() end
  }
  use { "catppuccin/nvim", as = "catppuccin" }
  -- New transparent neovim config
  use { "scottmckendry/cyberdream.nvim" }
  use { "xiyaowong/transparent.nvim" }
  -- VimTex plugin to write efficient latex inside neovim
  use {
      'lervag/vimtex',
      config = function()
          vim.g.vimtex_view_method = 'zathura'  -- Change to your preferred PDF viewer
          vim.g.vimtex_compiler_method = 'latexmk'
          vim.g.vimtex_quickfix_mode = 0  -- Disable quickfix auto open
          vim.g.vimtex_syntax_enabled = 0 
      end
  }

-- obsidian nevoim plugin
  use({
      "epwalsh/obsidian.nvim",
      tag = "*",  -- recommended, use latest release instead of latest commit
      requires = {
          -- Required.
          "nvim-lua/plenary.nvim",
      }
  })
-- Comment for neovim
  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }

end)
