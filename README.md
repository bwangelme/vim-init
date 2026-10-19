# 说明

本项目 fork 自 [skywind3000/vim-init](https://github.com/skywind3000/vim-init)。

经过长时间的体验之后，我发现在终端中使用复杂配置的 vim 是一件比较困难的事情。主要痛点是：

1. 终端内的流畅度较差，无论使用哪一种终端，流畅度都比不上 gvim
2. 终端 + Tmux 的快捷键会和 vim 产生冲突

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

然后启动 Vim(建议启动之前使用 `http_proxy` 环境变量设置代理)，在命令行运行 `:PlugInstall` 安装依赖插件即可。

# 结构

本配置按顺序，由如下几个主要模块组成：

- `init.vim`: 配置入口，设置 runtimepath 检测脚本路径，加载其他脚本。
- `init-basic.vim`: 所有人都能同意的基础配置，去除任何按键和样式定义，保证能用于 `tiny` 模式（没有 `+eval`）。
- `init-config.vim`: 支持 +eval 的非 tiny 配置，初始化 ALT 键支持，功能键键盘码，备份，终端兼容等
- `init-tabsize.vim`: 制表符宽度，是否展开空格等，因为个人差异太大，单独一个文件好更改。
- `init-plugin.vim`: 插件，使用 vim-plug，按照设定的插件分组进行配置。
- `init-style.vim`: 色彩主题，高亮优化，状态栏，更紧凑的标签栏文字等和显示相关的东西。
- `init-keymaps.vim`: 快捷键定义。

## MacVim 文档编辑配置（2026-10）

当前配置面向 Vimwiki 文档和配置文件编辑：

- 保留 Vimwiki、FZF、NERDTree、Git、注释、环绕字符和自定义片段。
- 不加载 Python/Go 开发模块、Thrift 插件和通用编程片段库；Vim 自带的文件类型识别、缩进和代码块高亮仍然可用。
- UltiSnips 在首次进入插入模式或执行 `:UltiSnipsEdit` 时加载；首次输入可能有一次 Python 初始化延迟。自定义 `tto`、`date` 等片段文件保留。
- NERDTree 和 Tagbar 在首次执行对应命令时加载，F3/F8 保持原用途。Tagbar 仍需要 Exuberant/Universal Ctags，macOS 自带的 `/usr/bin/ctags` 不兼容；Markdown 大纲脚本使用 Python 3。
- 默认使用手动折叠；需要缩进折叠时，可在当前窗口执行 `:setlocal foldmethod=indent`。
- Markdown/Vimwiki 仅在屏幕上折行。最多 3000 行且不超过 1 MiB 的笔记从头同步高亮；更大的文档向上回溯 200–1000 行。超长代码块若出现高亮错位，可执行 `:syntax sync fromstart`，以更多解析开销换取准确性。
- 保留 `:StripWhitespace` 和空格+t 手动清理；默认关闭逐次输入时的行尾空格高亮。Markdown 的两个行尾空格可表示硬换行，清理前需注意。
- 保存前备份放在 `~/.vim/tmp/`，文件名包含完整路径，避免同名文件相互覆盖。持久撤销和交换文件分别放在其 `undo/`、`swap/` 子目录；交换文件用于异常退出后的未保存内容恢复。
- 切回应用、切换缓冲区或普通模式空闲时，只检查当前文件的外部修改；有本地未保存修改时仍遵循 Vim 的冲突提示。

Vimwiki 自带的缓冲区快捷键优先于全局映射：`Ctrl-Space` 使用原生待办切换；普通 Markdown 使用 `:ToggleCB`。Vimwiki 的 Tab 保留表格跳转行为，普通 Markdown 中的 Tab 可展开自定义片段。

修改后请重新启动 MacVim。已移出声明的插件目录仍留在磁盘，可后续按需清理。
