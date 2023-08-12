--[[ keys.lua ]]

local map = vim.api.nvim_set_keymap

-- 触发 nvim-tree
map('n', 'n', [[:NvimTreeToggle]], {})

-- ff 打开快速文件查找
map('n', 'ff', [[:Telescope find_files]], {})

-- t 当前文件查看类或函数结构
-- map('n', 't', [[:TagbarToggle]], {})

-- 格式化整个文件
map("n", "<leader>i", "gg=G", {})