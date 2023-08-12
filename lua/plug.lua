local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('config')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- 插件可以管理自己
  use 'wbthomason/packer.nvim'

  -- neovim-tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }

  -- 克隆 packer.nvim 后自动设置您的配置
  if packer_bootstrap then
    require('packer').sync()
  end
end)