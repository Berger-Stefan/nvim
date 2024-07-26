-- This file can be loaded by calling `lua require('plugins')` from your init.vim
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim' if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'nvim-lua/plenary.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use 'rebelot/kanagawa.nvim'
  use 'Mofiqul/dracula.nvim'

  use({
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end
  })

  use({
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  })

  use("github/copilot.vim")

  use("ggandor/leap.nvim")

  use({
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end,
  })

  use({
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
    config = function()
      require('lualine').setup()
    end
  })

  use({
    "aserowy/tmux.nvim",
    config = function() return require("tmux").setup() end
  })

  use 'ThePrimeagen/harpoon'

  use({
    "kylechui/nvim-surround",
    tag = "*",     -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  })

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup()
    end
  }

  use {
    'simrat39/symbols-outline.nvim',
    config = function()
      require("symbols-outline").setup()
    end
  }

  use {
    "KostkaBrukowa/definition-or-references.nvim",
    config = function()
      vim.keymap.set("n", "gd", require("definition-or-references").definition_or_references, { silent = true })
    end
  }

  -- Interactice REPL
  use {
    'Vigemus/iron.nvim',
    config = function()
      local iron = require "iron.core"
      iron.setup({
          config = {
          should_map_plug = false,
          scratch_repl = true,
          highlight_last = false,
          repl_definition = {
            python = {
              command = { "ipython" },
              format = require("iron.fts.common").bracketed_paste,
            },
          },
          repl_open_cmd = require('iron.view').split.vertical.botright("35%")
        },
        keymaps = {
          send_motion = "<space>r",
          visual_send = "<space>r",
        },
      })
    vim.keymap.set('n', '<space>rs', '<cmd>IronRepl<cr>')
    vim.keymap.set('n', '<space>rf', '<cmd>IronFocus<cr>')
    end
  }

  -- Both are used to send code blocks to REPL
  use {'kana/vim-textobj-user'}
  use {'GCBallesteros/vim-textobj-hydrogen'} --<space>r ih -- to send code block

  -- Better folding
  use {
    'kevinhwang91/nvim-ufo',
    requires = 'kevinhwang91/promise-async',
    config = function()
      vim.o.foldcolumn = '1' -- '0' is not bad
      vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true

     -- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
      vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
      vim.keymap.set('n', 'zM', require('ufo').closeAllFolds) 

      require('ufo').setup({
        provider_selector = function(bufnr, filetype, buftype)
            return {'treesitter', 'indent'}
      end
    })
    end
  }

  -- TODO Need to configure
  -- use {"puremourning/vimspector"}

  if packer_bootstrap then
    require('packer').sync()
  end
end)
