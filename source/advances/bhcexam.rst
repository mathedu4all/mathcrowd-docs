.. _bhcexam:

===============
BHCexam 宏包
===============

--------
关于宏包
--------

**BHCexam** 宏包是一个用于排版数学试卷的 :math:`\LaTeX` 文档类. 宏包由橘子数学社区创始人 橘子老君 开发并维护.

2011年7月，刚刚参加中学教学工作的橘子老君，以 exam 宏包为底层文档类，在盖鹤麟开发的 colinexam 宏包基础上，增加了对 XeLaTeX 的支持，发布了最初版本的 **BHCexam** 宏包.

在实际教学工作中，橘子老君发现如果没有一个 :math:`\LaTeX` 试题数据库，那么用 :math:`\LaTeX` 排版试卷无疑事倍功半. 也就有了橘子数学社区.

2019年5月起，`橘子数学共享试题社区网站 <https://www.mathcrowd.cn>`_ 上线，网站提供的试卷均由 BHCexam 排版且提供源码下载.

.. seealso:: **经验分享:** :ref:`how_to_compile_mathcrowd_tex`

------------
版本历史
------------


* 2019年5月，v1.0:
    * 弃用 ``exam`` 而改用 ``article`` 为基宏包类

* 2020年1月, v1.1：
    * 新增对A3双栏版式的支持
    * 新增列表样式的试题

* 2020年3月，v1.2：
    * 支持苹果字体
    * 使用 ``stix`` 数学字体
    * ``\parallel`` 命令优化
    * 支持在选择题最后显示右对齐括号

* 2020年3月, v1.3:
    * 新增 ``\sixchoices`` , ``\threechoices`` 命令，已增加对3个和6个选项的支持，智能断行同时保持选项对齐



---------
入门
---------

软件需求
===================

* 安装TeX软件发行套装，如 ``texlive 2019``.

.. seealso:: **经验分享** :ref:`how_to_install_texlive`

* 安装 LaTeX 编辑器，如 ``TexStudio``.

.. seealso:: **经验分享** :ref:`texstudio_install`


获取宏包并安装
===================

* 从 GitHub 获取 `最新 BHCexam 宏包 <https://github.com/mathedu4all/bhcexam/releases/v1.3>`_ ： https://github.com/mathedu4all/bhcexam/

* 解压 ``bhcexam.zip``

.. code-block:: bash

    # unzip bhcexam.zip
    .
    ├── BHCexam.cls
    ├── examples
    │   ├── BHCexam.cls
    │   ├── example.pdf
    │   ├── example.tex
    │   ├── F7UJfg6iYCiCefLftREhksYit6NP46Of.png
    │   ├── lRyWbWTAbMoaIHdzGNbnHtHNwMC1OqLS.png
    │   ├── naive.pdf
    │   ├── naive.tex
    │   ├── qrcode.png
    │   ├── rOqrX8AOkhQtAGTSvgdyU0mzeH3pIfTp.png
    │   └── sSFh6W64bKcV715x2rYUVGCnqVea4NCO.png
    └── README.md

* 复制 ``BHCexam.cls`` 到 texmf 文件夹或与要编译的 ``.tex`` 同一个文件夹

* 设置LaTeX编辑器的编译器为 ``xelatex``

.. seealso:: **经验分享** :ref:`texstudio_config`

一个简单的例子
==============

以下示例的源文件 ``naive.tex`` 已包含在 ``bhcexam.zip`` 内的 ``examples`` 文件夹中.

    .. code-block:: tex

        % 使用 BHCexam 文档类，并传递选项
        \documentclass[answers]{BHCexam}
        \usepackage{hyperref}

        \begin{document}

        % 第一行主标题
        \title{BHCexam试卷排版宏包}

        % 第二行主标题
        \subtitle{样例}

        % 考试说明
        \notice{满分100分, 10分钟完成.}

        % 命题人信息
        \author{微信关注公众号：橘子数学}

        % 考试日期
        \date{2019.12.1}

        % 生成试卷头
        \maketitle

        \begin{groups}

        % 第一个题组，显示分值，不预留空间
        \group{填空}{本题组共1小题，共30.0分}
        \begin{questions}[s]

        % 填空题，两个空
        \question[30] 橘子数学的网址是\key{www.mathcrowd.cn}, 橘子数学的微信公众号是\key{mathcrowd}.

        \end{questions}

        % 第二个题组，显示分值，不预留空间
        \group{选择}{本题组共2小题，共40.0分}
        \begin{questions}[ps]

        % 选择题，四个选项
        \question[30] 以下哪一项不是橘子数学社区的宗旨\key{C}.
        \fourchoices{开放}{高效}{无视版权}{合作}

        % 解答，4cm 参数被忽略
        \begin{solution}{4cm}
        \method 橘子数学社区的宗旨是开放、高效、合作、变革.
        \method 见 \url{http://docs.mathcrowd.cn/zh_CN/latest/community/principles.html}
        \end{solution}

        % 选择题，五个选项
        \question[40] 以下数学公式显示有明显瑕疵的是\key{D}.
        \fivechoices{$\sin A$}{$2+3\mathrm{i}$}{$x^2$}{$\ln x$}{$\mathrm{e}^{\mathrm{i}\theta}$}

        \begin{solution}{4cm}
        \methodonly D 中正确的公式显示效果为$\ln{x}$.
        \end{solution}
        \end{questions}

        % 第三个题组，显示分值，预留空间
        \group{主观题}{本题组共1小题，共30.0分}
        \begin{questions}[st]
        % 简答题，两个小问
        \question[30] 请回答以下问题：
        \begin{subquestions}
            \subquestion 你觉得有必要创建这样一个试题社区吗? 为什么?
            \subquestion 你对社区的建设有什么建议.
        \end{subquestions}

        % 解答，学生版会预留8cm的答题空间.
        \begin{solution}{8cm}
            \methodonly 欢迎加入用户群组发言讨论.

        telegram 交流群组: https://t.me/mathcrowd

        QQ 群: 319701002

        Github项目页: \url{https://github.com/mathedu4all/mathcrowd-community/wiki}

        \score{30}{30}

        \end{solution}
        \end{questions}

        \end{groups}
        \end{document}

使用 xelatex 编译即可.

.. seealso:: **经验分享:** :ref:`texstudio_usage`


-------------
宏包说明
-------------

.. _bhcexam_option:

使用文档类及选项
=====================

在使用 BHCexam 文档类时，支持给宏包加上选项以实现对字体大小和字体选择.

example:

    .. code-block:: tex

        \documentclass[cs4size,windows]{BHCexam}

csize4
    设置默认字体为小四

csize5
    设置默认字体为五号

windows
    使用windows的默认字体

ubuntu
    使用ubuntu的默认字体

adobe
    使用adobe的默认字体

mac
    使用mac的默认字体

answers
    生成有答案的教师版试卷

twocolumn
    设置为A3双栏

list
    以列表格式显示试题(试题编号右对齐且位于试题文本左侧.)

.. note:: 更多字体及字号设置，参考 `ctex 宏包文档 <https://ctan.org/tex-archive/language/chinese/ctex?lang=en>`_ .

试卷头
==============

\\title{%title%}
    设置主标题为%title%.

\\subtitle{%subtitle%}
    设置副标题为%subtitle%.

\\notice{%notice paragraph%}
    设置考试说明部分的文字为%notice paragraph%.

\\author{%author%}
    设置命题人信息为%author%.

\\date{%date}
    设置考试日期为%date.

\\maketitle
    生成试卷头


题组环境
==============

example:

.. code-block:: tex

    \begin{groups}
        \group{题组1}{题组1的描述}
        ...
        \group{题组2}{题组2的描述}
        ...
    \end{groups}

 \\group{%group_name%}{%group_description}
    在题组环境中新增题组，%group_name%为题组名，%group_description 为题组描述.


试题环境
===============

example:

.. code-block:: tex

    \begin{questions}[s]
        \question[4] 这道填空题的答案是\key{XXX}.
        ...
        \question[4] 这道选择题的答案是\key{A}.
        \fourchoices{选项1}{选项2}{选项3}{选项4}
        ...
        \question[10] 这是一道简答题.
        ...
    \end{questions}

可选参数s
    显示环境内试题的分值.

可选参数t
    在环境内试题后预留答题空间.

可选参数p
    在选择题后增加右对齐的括号.

 \\question[%score%] %text%
    在试题环境中新增试题，可选参数%score为该题的分值.

 \\example %text%
    在试题环境中新增一道例题.

 \\exercise %text%
    在试题环境中新增一道习题.

 \\key{%key}
    在学生版试卷中显示与%key%匹配长度的横线，在教师版试卷中显示答案%key%.

 \\fivechoices{%option 1%}{%option 2%}{%option 3%}{%option 4%}{%option 5%}
    显示五个选项.

 \\fourchoices{%option 1%}{%option 2%}{%option 3%}{%option 4%}
    显示四个选项.

 \\threechoices{%option 1%}{%option 2%}{%option 3%}
    显示三个选项.

 \\sixchoices{%option 1%}{%option 2%}{%option 3%}{%option 4%}{%option 5%}{%option 6%}
    显示六个选项.



解答环境
===============

example:

.. code-block:: tex

    \begin{solution}{10cm}
        \methodonly 把冰箱打开
        \score{10}{10}
        把大象塞进冰箱
        \socre{10}{20}
        关上冰箱门
        \score{10}{30}
    \end{solution}

环境参数
    预留空间的高度.

 \\method
    在解答环境中，新增一种解法.

 \\methodonly
    在解答环境中，插入唯一的解法.

 \\score{%step_score%}{%score_total}
    在步骤结束时，插入该步骤的分值，%step_score% 为当前步骤的分值，%score_total% 为累计分值.

小问环境
=================

example:

.. code-block:: tex

    \begin{subquestions}
        \subquestion 第一问
        \subquestion 第二问
        \subquestion 第三问
    \end{subquestions}

命令 \\subquestion
    在小问环境中，新增一个小问.







