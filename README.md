## neovim-rust

neovim 开发 rust 的编辑器配置

## 屏幕截图
![WX20230812-230400](https://github.com/monsterooo/neovim-rust/assets/18432680/e937ee9e-b3c1-42ea-a240-66d2e014938f)


## 安装

执行以下命令，克隆仓库到本地配置文件夹下即可

```shell
git clone https://github.com/monsterooo/neovim-rust ~/.config/nvim
```

## nvim-tree

如果您的 nvim-tree 缺少图标展示，请在 https://www.nerdfonts.com/font-downloads 下载任意字体安装，并在终端中使用该字体即可。我选择的是 Meslo 字体。预览 https://www.programmingfonts.org/#meslo
## nvim-treesitter

在命令提示符下检查解析器的状态并 `:TSInstallInfo `, 更新它们 `:TSUpdate`

nvim-treesitter 还提供了我们的解析器的一个很好的视图，包括 `:checkhealth` 命令和每种语言的特定支持（例如突出显示、折叠等）：

## 快捷键

### 折叠

`zc` 折叠，`zo` 展开

## 增量选择

Enter 往外扩充选择，Backspace 相反不断内敛选择，Space 往后选择

## 保存文件

* `<C-s>` 在正常模式和插入模式都可以使用Ctrl+s保存文件

## Tab

* `<C-h>` 切换到上一个标签
* `<C-l>` 切换到下一个标签

## 代码格式化

选中文本后使用 `=` 格式化代码，`gg=G` 格式化整个文件，配置了快捷键可以使用 `,i` 格式化整个文件

## 自动完成

* `<C-p>` 上一个选项
* `<C-n>` 下一个选项
* `<Tab>` 下一个选项
* `<CR>`  选择当前选项

## 终端

* `t` 打开终端
* `Esc` 关闭终端
* `<C-n>` 进入正常模式，可以上下滚动查看更多信息
* `i` 在正常模式按i可以再次进入终端编辑模式

## 代码注释

Normal 模式
* `gcc` 使用单行注释当前行
* `gbc` 使用块只是当前行
* `[count]gcc` 向下注释count行
* `[count]gbc` 向下注释count行

Visual 模式
* `gc` 触发单行注释
* `gb` 触发块注释