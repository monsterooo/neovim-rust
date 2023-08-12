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

  -- 光标跳跃后给一个闪烁，可以快速定位光标在哪里
  use 'danilamihailov/beacon.nvim'

  -- Lua 编写的 Neovim 配色方案
  use 'Mofiqul/dracula.nvim'

  -- 启动屏幕
  use 'mhinz/vim-startify'

  -- 状态栏
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- 快速查找文件
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- 克隆 packer.nvim 后自动设置您的配置
  if packer_bootstrap then
    require('packer').sync()
  end
end)