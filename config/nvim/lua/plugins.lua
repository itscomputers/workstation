local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
  print("packer not loaded")
  return
end

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  use 'nvim-lua/plenary.nvim'

  use "sainnhe/sonokai"

  use "christoomey/vim-tmux-navigator"
  use "szw/vim-maximizer"

  use "tpope/vim-surround"
  use "vim-scripts/ReplaceWithRegister"

  use "numToStr/Comment.nvim"

  use "nvim-tree/nvim-tree.lua"
  use "nvim-tree/nvim-web-devicons"

  use "nvim-lualine/lualine.nvim"

  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'

  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-nvim-lsp"

  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"

  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "neovim/nvim-lspconfig"
  use { "glepnir/lspsaga.nvim", branch = "main" }
  use "onsails/lspkind.nvim"


--use 'neovim/nvim-lspconfig'
--use 'williamboman/nvim-lsp-installer'
--use 'tami5/lspsaga.nvim'
--use 'onsails/lspkind.nvim' -- icons in autocomplete source
--use 'hrsh7th/nvim-cmp' -- autocomplete engine (see autocomplete.lua)
--use 'hrsh7th/cmp-nvim-lsp' -- LSP source for cmp
--use 'hrsh7th/cmp-buffer' -- buffer source for cmp
--use 'hrsh7th/cmp-path' -- path source for cmp

--use {
--  'nvim-treesitter/nvim-treesitter',
--  run = function()
--    local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
--    ts_update()
--  end,
--}
--use 'scrooloose/nerdcommenter'


--use 'NoahTheDuke/vim-just'

--use 'preservim/nerdtree'
--use 'tiagofumo/vim-nerdtree-syntax-highlight'
--use 'ryanoasis/vim-devicons'

--use 'sainnhe/sonokai'

--if packer_bootstrap then
--  require("packer").sync()
--end
end)
