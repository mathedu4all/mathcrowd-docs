# Typora 使用指南


`Typora` 是一款支持实时预览的 **Markdown** 文本编辑器。它有 `OS X`、`Windows`、`Linux` 三个平台的版本，可以导入/导出多种格式的文档，是**完全免费**的。

`Typora`的Windows版本的[下载地址](https://www.typora.io/#windows)为：https://www.typora.io/#windows

[橘子数学](https://www.mathcrowd.cn/index.php)网站提供了题目导出为`Markdown`格式的功能，可以将试题导出后，在`Typora`中编辑，利用`Typora`丰富的导出功能，将试题转换为其他格式(word,pdf等)或快速粘贴到**公众号**后台.

## 关于MarkDown
**Markdown** 是用来编写结构化文档的一种纯文本格式，它使我们在双手不离开键盘的情况下，可以对文本进行一定程度的格式排版。你可以在[这篇文章](http://support.typora.io/Strict-Mode/)中快速入门 **Markdown**。
> 目前还没有一个权威机构对 Markdown 的语法进行规范，各应用厂商制作时遵循的 Markdown 语法也是不尽相同的。其中比较受到认可的是 GFM 标准，它是由著名代码托管网站 GitHub 所制定的。Typora 主要使用的也是 GFM 标准。同时，你还可以在 `文件 - 偏好设置 - Markdown 语法偏好 - 严格模式 `中将标准设置为「更严格地遵循 GFM 标准」,具体内容可以在官方文档的[这篇文档](https://support.typora.io/Strict-Mode/)中查看.


## 插入图片

Markdown 原生不太注重图片插入的功能，插入图片的语法为

```md
![图片不显示时显示此处文字](图片的链接)
```

在 `Typora` 中你可以在原生语法之外，使用如下两种形式插入图片：

- 直接使用 右键 - 复制 `Ctrl + V` 将网络图片、剪贴板图片复制到文档中
- 拖动本地图片到文档中
  
`Typora`会自动帮你插入符合`Markdown`语法的图片语句，并给它加上标题

## 插入 LaTeX 公式

`Typora` 原生支持 `LaTeX` 语法，你有两种方式输入 `LaTeX` 风格的数学公式：

- 行内公式（inline）：用 `$...$` 括起公式，公式会出现在行内。
- 块间公式（display）：用 `$$...$$` 括起公式（注意 `$$` 后需要换行），公式会默认显示在行中间。

> 行内公式需要在`文件-偏好设置-Markdown-Markdown扩展语法`中勾选`内联公式`复选框，并重启`Typora`。


## 橘子数学Markdown功能
在橘子数学试题编辑页面，点击右侧的`分享/导出 - 复制到Markdown编辑器`。打开`Typora`，切换到源代码模式(`Ctrl + /`)，粘贴，切出源代码模式(`Ctrl + /`)既可。

<p align="center">
<img src="https://github.com/yuchengqi9/mathcrowd-docs/blob/yuchengqi9-win_install_tl/source/howtos/images/md_ept.png">
</p>
<br>
<p align="center">
<img src="https://github.com/yuchengqi9/mathcrowd-docs/blob/yuchengqi9-win_install_tl/source/howtos/images/md_pst.png" width="500">
</p>


## 导出
`Typora`支持导出多种格式文档，其中原生支持导出`HTML`和`PDF`格式文档，安装`pandoc`控件后还可以导出为`docx`,`tex`,`epub`等多种格式。

### 导出为`HTML`
`Typora` 原生支持将文档导出为 `HTML` 格式的文件，并选择是否要嵌入 `style`（也就是后文我将提到的 `CSS` 的部分）。
一个实用的用处是将这些 `HTML` 代码直接 `Ctrl + V` 黏贴到**微信公众号**后台，基本可以保证两边显示效果相同。这一点不仅使公众号推送可以有更自由、美观的样式，也让编辑、排版更轻松了。（由于微信自带浏览器的一些特性，可能有少部分 `CSS style` 不能生效，建议多多校对。）

### CSS样式表
为了让文档更美观，我们可以为其加上 `CSS style`。我认为 `Typora` 对 `CSS` 的支持让它成为一众桌面笔记应用中最与众不同的一个。在 `Typora` 中 `CSS` 被称为「主题」，但其本质仍是 `CSS` 文件。你可以在 `文件 - 偏好设置 - 外观 - 主题 - 打开主题文件夹` 看到这些 `CSS` 文件。
选择不同的主题可以使文档拥有不同的外观，但不会影响内容。Typora 自带了若干主题，你也可以在 [官网](http://theme.typora.io/) 下载更多的主题。
除此之外，如果你有一定的 *Web* 编程基础,你可以自定义主题。


综上，合理的利用橘子数学提供的导出为`Markdown`格式的功能，可以帮助对LaTeX语法不太熟练，但是喜欢LaTeX公式排版样式的老师快速的生成一份美观的试卷，而且可以多种格式切换，再也不怕领导不满意了~
