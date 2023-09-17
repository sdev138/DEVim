local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- this would be true if packer was just installed

-- Autocommand that reloads neovim whenever this file is saved
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
  return
end 

return packer.startup(function(use)
  use("wbthomason/packer.nvim")

  use("folke/tokyonight.nvim") -- tokyonight colorscheme

  -- tmux and split window navigation
  use("christoomey/vim-tmux-navigator")

  -- vim maximizer
  use("szw/vim-maximizer") -- maximizes and restores the current window

  -- nvim tree (file explorer)
  use("nvim-tree/nvim-tree.lua")

  -- statusline (lualine)
  use("nvim-lualine/lualine.nvim")

  -- telescope 
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
  -- or                            , branch = '0.1.x', (not using the branch atm)
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- autocompletion
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")

  -- snippets
  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")
  use("rafamadriz/friendly-snippets")

  -- managing & installing lsp servers
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")

  -- configuring lsp servers
  use("neovim/nvim-lspconfig")
  use("hrsh7th/cmp-nvim-lsp")
  use({ "glepnir/lspsaga.nvim", branch = "main" })
  use("jose-elias-alvarez/typescript.nvim")
  use("onsails/lspkind.nvim")

  -- vscode-like icons 
  use("kyazdani42/nvim-web-devicons")

  -- formatting and linting 
  use("jose-elias-alvarez/null-ls.nvim")
  use("jayp0521/mason-null-ls.nvim")

  -- auto closing 
  use("windwp/nvim-autopairs")
  use("windwp/nvim-ts-autotag")

  -- Dap Install
  use 'mfussenegger/nvim-dap'

      use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

  -- catpuccin
  use { "catppuccin/nvim", as = "catppuccin" }

  if packer_bootstrap then
    require("packer").sync()
  end
end)
