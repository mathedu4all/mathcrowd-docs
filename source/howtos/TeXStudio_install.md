# 简介
`TeX Studio` 是一款$\LaTeX{}$编辑器，所以安装前需要安装编译器，这里推荐`TeX Live`

## 下载安装
登录[`TeX Studio`官网](https://www.texstudio.org/),点击下载，双击安装即可：
> 如果点击无反应，可以点击左侧`Download`，选择`Windows`下的`Installer`安装包.


## 开始使用

打开`TeX Studio`，点击图中`1`处新建空白文件，在`3`处填入内容，然后点击`2`处的绿色双箭头进行编译(或者按`F5`)，即可看到生成的`PDF`格式文档内容(如图`4`)

> 默认编译方式为`pdflatex`，可以在`Tools-Commands`中选择其他编译方式


## 修改配置
依次点击`Options-Configure TeXStudio`

### 默认编译方式

默认编译方式为`pdflatex`，默认打开软件内置`PDF`阅读器.如图，点击`Build`，将默认编译方式修改为`XeLaTeX`,`PDF`修改为外部独立`PDF`阅读软件
> 仅作示例，根据个人习惯和宏包要求设置

### 修改编译参数
部分文档编译时需要引用网络图片(`\write18`),需要在编译时加上`-shell-escape`选项。可以在`Commands`中修改(此处仅作参考)
此处给出`Overleaf`提供的参数详细：
```
https://www.overleaf.com/learn/latex/TeX_engine_command_line_options_for_pdfTeX,_XeTeX_and_LuaTeX
```


> 其他常用设置部分：
> `General`：修改页面样式，字体等
> `Shortcuts`：为常用指令设置快捷键
> `Editor`：设置文本编辑窗口的字体，字号等
> `Syntax Highlighting`：设置关键字高亮
> `Preview`：设置内部`PDF`预览页面

`TeX Studio`的更详细的设置，可以参考[官方文档](http://texstudio.sourceforge.net/manual/current/usermanual_en.html)