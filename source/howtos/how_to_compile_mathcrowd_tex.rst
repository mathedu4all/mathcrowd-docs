.. _how_to_compile_mathcrowd_tex:

================================================================================
如何编译橘子数学的 .tex 文件
================================================================================


.. warning:: 网站后台提供了在线编译功能，即组卷完成后即可下载编译好的教师版和学生版PDF. 所以并没有必要进行本地编译，但网站还是提供了试卷tex文件的下载以方便LaTeX爱好者按照自己的需求对试卷的版式进行微调. 但并不建议初学者轻易尝试，因为你可能耗费大量时间应付各种编译出错.

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