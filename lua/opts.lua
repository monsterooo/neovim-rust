--[[ opts.lua ]]
local opt = vim.opt

-- [[ Context ]]
opt.colorcolumn = '80'           -- 显示最大行长度的列
opt.number = true                -- 显示行号
opt.relativenumber = true        -- 显示相关的行号
opt.scrolloff = 4                -- 控制光标与顶部或是底部有多少距离时发生翻滚
opt.signcolumn = "yes"           -- 显示标志栏

-- [[ Filetypes ]]
opt.encoding = 'utf8'            -- 字符编码
opt.fileencoding = 'utf8'        -- 文件编码

-- [[ Theme ]]
opt.syntax = "ON"                -- 允许语法突出显示
opt.termguicolors = true         -- 如果 term 支持 ui 颜色则启用

-- [[ Search ]]
opt.ignorecase = true            -- 忽略搜索模式中的大小写
opt.smartcase = true             -- 如果搜索包含大写字母，则覆盖ignorecase
opt.incsearch = true             -- 使用增量搜索
opt.hlsearch = false             -- 突出显示搜索匹配项

-- [[ Whitespace ]]
opt.expandtab = true             -- 使用空格代替制表符
opt.shiftwidth = 4               -- 缩进的大小
opt.softtabstop = 4              -- 插入模式下的空格制表符数量
opt.tabstop = 4                  -- 空格制表符数量

-- [[ Splits ]]
opt.splitright = true            -- 将新窗口放置在当前窗口的右侧
opt.splitbelow = true            -- 将新窗口放置在当前窗口下方