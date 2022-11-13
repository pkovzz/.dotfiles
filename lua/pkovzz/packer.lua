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

 use 'nvim-lualine/lualine.nvim' -- Statusline
 
 -- For file navigation
 use "nvim-lua/plenary.nvim"
 use "nvim-telescope/telescope.nvim"
end)
