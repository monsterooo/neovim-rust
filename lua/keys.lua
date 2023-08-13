--[[ keys.lua ]]

local map = vim.api.nvim_set_keymap

-- 映射 Ctrl+s 在正常模式和插入模式保存文件
map('n', '<C-s>', ':update<CR>', {})
map('i', '<C-s>', '<Esc>:update<CR>gi', {})

-- 触发 nvim-tree
map('n', 'n', [[:NvimTreeToggle]], {})

-- ff 打开快速文件查找
map('n', 'ff', [[:Telescope find_files]], {})
-- lg 全局搜索
map("n", "lg", ":Telescope live_grep<CR>", {})

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

-- 窗口相关快捷键 s + 按键，s 表示 split
map('n', 'sv', ':vsp<CR>', {}) -- 水平分割
map('n', 'sh', ':sp<CR>', {}) -- 垂直分割
map('n', 'sc', '<C-w>c', {}) -- 关闭当前窗口
map('n', 'so', '<C-w>o', {}) -- 关闭其他窗口
-- 窗口跳转
-- Mac 下option + hjkl  窗口之间跳转
map("n", "∑", "<C-w>w", {})
map("n", "˙", "<C-w>h", {})
map("n", "∆", "<C-w>j", {})
map("n", "˚", "<C-w>k", {})
map("n", "¬", "<C-w>l", {})
-- 比例控制
map("n", "s>", ":vertical resize +20<CR>", {})
map("n", "s<", ":vertical resize -20<CR>", {})
map("n", "s=", "<C-w>=", {})
map("n", "sj", ":resize +10<CR>", {})
map("n", "sk", ":resize -10<CR>", {})

-- 插入模式下使用 option + hjkl 移动光标
map("i", "˙", "<Left>", {})
map("i", "∆", "<Down>", {})
map("i", "˚", "<Up>", {})
map("i", "¬", "<Right>", {})