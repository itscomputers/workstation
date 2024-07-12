vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use 'nvim-lua/plenary.nvim'

  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'tami5/lspsaga.nvim'
  use 'onsails/lspkind.nvim' -- icons in autocomplete source
  use 'hrsh7th/nvim-cmp' -- autocomplete engine (see autocomplete.lua)
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for cmp
  use 'hrsh7th/cmp-buffer' -- buffer source for cmp
  use 'hrsh7th/cmp-path' -- path source for cmp

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }
  use 'scrooloose/nerdcommenter'

  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'

  use 'christoomey/vim-tmux-navigator'

  use 'NoahTheDuke/vim-just'

  use 'preservim/nerdtree'
  use 'tiagofumo/vim-nerdtree-syntax-highlight'
  use 'ryanoasis/vim-devicons'

  use 'sainnhe/sonokai'

  require('lspsaga').init_lsp_saga({
    error_sign = '!',
    warn_sign = '^',
    hint_sign = '?',
    infor_sign = '~',
    border_style = "round",
    code_action_prompt = {
      enable = false,
    },
  })
end)
