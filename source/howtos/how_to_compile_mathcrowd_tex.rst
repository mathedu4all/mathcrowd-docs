.. _how_to_compile_mathcrowd_tex:

================================================================================
如何编译橘子数学的 .tex 文件
================================================================================

安装 TeXLive 套件
-----------------------------

.. seealso:: **经验分享:** :ref:`how_to_install_texlive`

安装 wget 程序
-----------------------------

    下载并安装 `wget for windows <http://downloads.sourceforge.net/gnuwin32/wget-1.11.4-1-setup.exe>`_，

    wget for windows 项目: http://gnuwin32.sourceforge.net/packages/wget.htm

下载 .tex 文件
------------------------------

.. seealso:: 参见 :ref:`download_worksheet`

编译文件
-------------------------------

xelatex  --shell-escape  %file%.tex

.. note:: 由于橘子数学网站下载的 .tex 文件需要调用外部的 wget 命令，故需要增加编译参数 ``--shell-escape``. 使用 TeXStudio 的用户可以在 Options->Configure->Commands 中修改.