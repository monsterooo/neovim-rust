--[[ init.lua ]]

-- 前缀键配置
-- 前缀键解释 https://blog.csdn.net/qq_32949893/article/details/113339607
-- 前缀键要配置在所有配置文件之间，避免绑定键先执行
vim.g.mapleader = ','
vim.g.localleader = '\\'

-- IMPORTS
require('vars')      -- Variables
require('opts')      -- Options
require('keys')      -- Keymaps
require('plug')      -- Plugins
require('tree')      -- neovim tree