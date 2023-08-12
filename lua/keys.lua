--[[ keys.lua ]]

local map = vim.api.nvim_set_keymap

-- 触发 nvim-tree
map('n', 'n', [[:NvimTreeToggle]], {})