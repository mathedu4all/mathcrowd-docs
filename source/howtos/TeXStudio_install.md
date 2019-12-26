# 简介
`TeX Studio` 是一款LaTeX编辑器，所以安装前需要安装编译器，这里推荐`TeX Live`

## 下载安装
登录[`TeX Studio`官网](https://www.texstudio.org/),点击下载，双击安装即可：
> 如果点击无反应，可以点击左侧`Download`，选择`Windows`下的`Installer`安装包.


## 开始使用

### 新建文件
打开`TeX Studio`，点击图中`1`处新建空白文件，在`3`处填入内容，然后点击`2`处的绿色双箭头进行编译(或者按`F5`)，即可看到生成的`PDF`格式文档内容(如图`4`)
<p align="center">
<img src="https://github.com/yuchengqi9/mathcrowd-docs/blob/yuchengqi9-win_install_tl/source/howtos/images/tex_new_build.png" width="600">
</p>

### 切换编译器
默认编译器为`pdflatex`，可以在`Tools-Commands`中选择以其他编译器编译当前文档


## 简单配置

依次点击`Options-Configure TeXStudio`，进入`TeX Studio`的配置页面，下面的操作都在该页面中进行

### 修改显示预言为中文
点击`General`，将`language`修改为`zh_CN`，点击设置页面的右下角的确认，主界面所有文字既已修改为中文.
<p align="center">
<img src="https://github.com/yuchengqi9/mathcrowd-docs/blob/yuchengqi9-win_install_tl/source/howtos/images/tex_st_lag.png" width="600">
</p>
  
  
### 修改默认编译器及`PDF`查看器
- 不同宏包的编译器要求不同，通常为`pdflatex`或`xelatex`.`TeX STudio`默认编译器为`pdflatex`，如要修改为`xelatex`，可以点击`构建`，将默认编译器修改为`XeLaTeX`即可.
- 默认`PDF`查看器为嵌入式窗口，可以修改为外部独立`PDF`阅读软件以调用用户安装的`PDF`软件(推荐`Sumatra PDF`).

<p align="center">
<img src="https://github.com/yuchengqi9/mathcrowd-docs/blob/yuchengqi9-win_install_tl/source/howtos/images/tex_st_build.png" width="600">
</p>


### 修改编译参数
部分文档编译时需要引用网络图片(`\write18`),需要在编译时加上`-shell-escape`选项。可以在`命令`选项中修改对应编译器参数.
> 下面为`Overleaf`网站提供的几种编译器的参数说明：
```
https://www.overleaf.com/learn/latex/TeX_engine_command_line_options_for_pdfTeX,_XeTeX_and_LuaTeX
```
<p align="center">
<img src="https://github.com/yuchengqi9/mathcrowd-docs/blob/yuchengqi9-win_install_tl/source/howtos/images/tex_st_cmd.png" width="600">
</p>

### 其他常用设置部分：
- `常规`：修改页面样式，字体等
- `快捷键`：为常用指令设置快捷键
- `编辑器`：设置文本编辑窗口的字体，字号等
- `语法高亮`：设置关键字高亮
- `预览`：设置内部`PDF`预览页面


关于`TeX Studio`的更详细的设置，可以参考[官方文档](http://texstudio.sourceforge.net/manual/current/usermanual_en.html)
