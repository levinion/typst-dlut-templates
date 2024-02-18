# 大连理工大学-Typst-本科生论文模板

## Intro

[](./images/cover.jpg)

[](./images/code.jpg)

Typst 是一个全新的排版语言，它拥有相对较低的上手难度以及较为完备的排版功能，是 Latex 的一个非常有力的竞争对手。

该仓库包含了文献翻译和本科生论文等两个模板。如果你看过源码，可以知道其中包含了部分“魔法数字”，从而产生与 Word 导出的 PDF 相似的效果。与之相对，并没有完全采用学校官方模板中给出的参数。

如果在使用中遇到什么问题，欢迎提 ISSUE，如果本人有空会积极回复。

## 使用方式

请克隆仓库源码，然后使用以下方式进行编辑：

- 官方网页编辑器：[typst.app](https://typst.app/)
- VSCode：安装 typst 插件
- neovim：安装 typst-lsp 以及 typst.vim
- ...

## 注意事项

- 如果需要加粗，请使用`#bold`函数代替
- 如果需要引用公式，请使用`#equa`函数
- 如果需要使用三线表，请使用`#three_line_table`函数
- 不建议使用内置的`+`以及`-`添加列表，因为所有行都会缩进两个字符。如果这不构成影响，则可以使用。

如果有其他不明白的情况，请先查看`examples`文件夹下的实例或者`templates`文件夹下的模板文件。