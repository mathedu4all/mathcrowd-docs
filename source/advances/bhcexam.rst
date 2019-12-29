.. _bhcexam:

===============
BHCexam 宏包
===============

--------
关于宏包
--------

**BHCexam** 宏包是一个用于排版数学试卷的 :math:`\LaTeX` 文档类. 宏包由橘子数学社区创始人 橘子老君 开发并维护.

2011年7月，刚刚参加中学教学工作的橘子老君，以 exam 宏包为底层文档类，在盖鹤麟开发的colin宏包基础上，增加了对 XeLaTeX 的支持，发布了最初版本的 **BHCexam** 宏包.

在实际教学工作中，橘子老君发现如果没有一个 :math:`\LaTeX` 试题数据库，那么用 :math:`\LaTeX` 排版试卷无疑事倍功半. 也就有了橘子数学社区.


2019年5月，**BHCexam** 宏包升级到 V1.0, 为了实现更好的兼容性，弃用了 exam 而改用 article 宏包类. 橘子数学网站提供下载组卷的 ``.tex`` 源文件即使用该版本的文档类.

.. seealso:: **经验分享:** :ref:`how_to_compile_mathcrowd_tex`  


---------
入门
---------

获取宏包并安装
===================

* 从 GitHub 获取 `最新 BHCexam 宏包 <https://github.com/mathedu4all/bhcexam/releases/v1.0>`_ ： https://github.com/mathedu4all/bhcexam/

* 解压 ``bhcexam.zip``

* 复制 ``BHCexam.cls`` 到 texmf 文件夹或与要编译的 ``.tex`` 同一个文件夹.


一个简单的例子
==============

以下示例的源文件 ``fun.tex`` 已包含在 ``bhcexam.zip`` 内.

    .. code-block:: tex

        % 使用 BHCexam 文档类，并传递选项
        \documentclass[a4paper,answers]{BHCexam}

        % 使用 hyperref 宏包，以支持显示链接.
        \usepackage{hyperref}

        \begin{document}

        % 左上角二维码或logo图片
        \logo{qrcode.png}

        % 第一行主标题
        \title{BHCexam试卷排版宏包}

        % 第二行副标题
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
        \begin{questions}[s]

        % 选择题，四个选项
        \question[30] 以下哪一项不是橘子数学社区的宗旨\key{C}.
        \fourchoices{开放}{高效}{无视版权}{合作}

        % 解答，4cm 参数被忽略
        \begin{solution}{4cm}
        % 两种解法
        \method 橘子数学社区的宗旨是开放、高效、合作、变革.
        \method 见 \url{http://docs.mathcrowd.cn/zh_CN/latest/community/principles.html}
        \end{solution}

        % 选择题，五个选项
        \question[40] 以下数学公式显示有明显瑕疵的是\key{D}.
        \fivechoices{$\sin A$}{$2+3\mathrm{i}$}{$x^2$}{$\ln x$}{$\mathrm{e}^{\mathrm{i}\theta}$}

        % 解答，4cm 参数被忽略
        \begin{solution}{4cm}
        % 只有一种解法
        \methodonly D 中正确的公式显示效果为$\ln{x}$.

        更多公式排版的注意事项见 \url{http://docs.mathcrowd.cn/zh_CN/latest/basics/mathjax_basics.html}
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
        % 只有一种解法
        \methodonly 欢迎加入用户群组发言讨论.

        橘子数学社区用户 telegram 交流群组: https://t.me/mathcrowd

        橘子数学社区用户 QQ 群: 319701002

        % 显示上述步骤的分值.
        \score{15}{15}

        对网站开发和社区运作提出建议: \url{https://github.com/mathedu4all/mathcrowd-community/wiki}

        \score{15}{30}

        \end{solution}
        \end{questions}

        \end{groups}
        \end{document}

建议安装 TeXLive 2019 套件，并使用 xelatex 编译文档，编译命令如下：

    .. code-block:: bash

        xelatex fun.tex

.. seealso:: **经验分享:** :ref:`how_to_install_texlive`

.. seealso:: 加上 ``answers`` 宏包选项后编译，可生成教师版试卷，见 :ref:`bhcexam_option` .

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

answers
    生成有答案的教师版试卷

.. note:: 更多字体及字号设置，参考 `ctex 宏包文档 <https://ctan.org/tex-archive/language/chinese/ctex?lang=en>`_ .

试卷头
==============

\\logo{%image%}
    设置试卷头左上方的二维码或logo，%image% 为文件名.

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

命令 \\group{%group_name%}{%group_description}
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

命令 \\question[%score%] %text%
    在试题环境中新增试题，可选参数%score为该题的分值.

命令 \\key{%key}
    在学生版试卷中显示与%key%匹配长度的横线，在教师版试卷中显示答案%key%.

命令 \\fivechoices{%option 1%}{%option 2%}{%option 3%}{%option 4%}{%option 5%}
    显示五个选项.

命令 \\fourchoices{%option 1%}{%option 2%}{%option 3%}{%option 4%}
    显示四个选项.

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

命令 \\method
    在解答环境中，新增一种解法.

命令 \\methodonly
    在解答环境中，插入唯一的解法.

命令 \\score{%step_score%}{%score_total}
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







