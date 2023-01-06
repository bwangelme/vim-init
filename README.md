# 说明

本项目 fork 自 [skywind3000/vim-init](https://github.com/skywind3000/vim-init)。

经过长时间的体验之后，我发现在终端中使用复杂配置的 vim 是一件比较困难的事情。主要痛点是：

1. 终端内的流畅度较差，无论使用哪一种终端，流畅度都比不上 gvim
2. 终端+ Tmux 的快捷键会和 vim 产生冲突

鉴于以上两个原因，我个人比较喜欢使用 gvim, 所以此配置也是为 gvim 定制，删掉了很多终端相关的配置。

# 安装

将项目克隆到你喜欢的目录内，比如 `~/.vim` 内：

```bash
cd ~/.vim
git clone https://github.com/skywind3000/vim-init.git
```

然后创建你的 `~/.vimrc` 文件，里面只有一句话：

```VimL
source ~/.vim/vim-init/init.vim
```

然后启动 Vim，在命令行运行 `:PlugInstall` 安装依赖插件即可。

# 结构

本配置按顺序，由如下几个主要模块组成：

- `init.vim`: 配置入口，设置 runtimepath 检测脚本路径，加载其他脚本。
- `init-basic.vim`: 所有人都能同意的基础配置，去除任何按键和样式定义，保证能用于 `tiny` 模式（没有 `+eval`）。
- `init-config.vim`: 支持 +eval 的非 tiny 配置，初始化 ALT 键支持，功能键键盘码，备份，终端兼容等
- `init-tabsize.vim`: 制表符宽度，是否展开空格等，因为个人差异太大，单独一个文件好更改。
- `init-plugin.vim`: 插件，使用 vim-plug，按照设定的插件分组进行配置。
- `init-style.vim`: 色彩主题，高亮优化，状态栏，更紧凑的标签栏文字等和显示相关的东西。
- `init-keymaps.vim`: 快捷键定义。
