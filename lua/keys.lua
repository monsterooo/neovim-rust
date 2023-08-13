--[[ keys.lua ]]

local map = vim.api.nvim_set_keymap

-- 映射 Ctrl+s 在正常模式和插入模式保存文件
map('n', '<C-s>', ':update<CR>', {})
map('i', '<C-s>', '<Esc>:update<CR>gi', {})

-- 触发 nvim-tree
map('n', 'n', [[:NvimTreeToggle]], {})

-- ff 打开快速文件查找
map('n', 'ff', [[:Telescope find_files]], {})

-- t 当前文件查看类或函数结构
-- map('n', 't', [[:TagbarToggle]], {})

-- 格式化整个文件
map("n", "<leader>i", "gg=G", {})

-- FloaTerm 快捷键
map('n', "<leader>ft", ":FloatermNew --name=myfloat --height=0.8 --width=0.7 --autoclose=2 fish <CR> ", {})
map('n', "t", ":FloatermToggle myfloat<CR>", {})
map('t', "<Esc>", "<C-\\><C-n>:q<CR>", {})

-- bufferline tab 左右切换
map('n', '<C-h>', ':BufferLineCyclePrev<CR>', {})
map("n", "<C-l>", ":BufferLineCycleNext<CR>", {})