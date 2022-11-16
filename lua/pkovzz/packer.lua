-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
 use 'wbthomason/packer.nvim'
 
 use 'folke/tokyonight.nvim'
 use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
 }

 -- For file navigation
 use "nvim-lua/plenary.nvim"
 use "nvim-telescope/telescope.nvim"

 use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

 use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
 use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins

 -- cmp plugins
 use "hrsh7th/nvim-cmp" -- The completion plugin
 use "hrsh7th/cmp-buffer" -- buffer completions
 use "hrsh7th/cmp-path" -- path completions
 use "hrsh7th/cmp-cmdline" -- cmdline completions
 use "saadparwaiz1/cmp_luasnip" -- snippet completions

 -- snippets
 use "L3MON4D3/LuaSnip" --snippet engine
 use "rafamadriz/friendly-snippets" -- a bunch of snippets to use
end)
