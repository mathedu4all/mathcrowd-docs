.. _latex_tutorial:

=========
数学公式
=========

-------------------------
:math:`\LaTeX` 简介
-------------------------

Donald Knuth 在70年代设计 :math:`\TeX` 开源排版系统的一大初衷就是为了在自己即将出版的《计算机程序设计艺术》上轻松实现专业的数学公式呈现. 其后继者 Leslie Lamport 80年代在 :math:`\TeX` 的基础上实现推出了 :math:`\LaTeX`，其实质是基于 :math:`\TeX` 的各种功能、样式的宏包集，其实现了内容与呈现分离. 这让 :math:`\LaTeX` 在学术界大受欢迎，因为它让科学工作者只需要几分钟学习时间就可以上手排版自己的学术论文. 发展至今，:math:`\TeX` 用户群体已经十分壮大， `TeX Users Group(TUG) <https://tug.org/>`_ 已经整合了所有 :math:`\TeX` 相关资源，建立了 `Comprehensive TeX Archive Network (CTAN) <https://ctan.org/>`_ 宏包库，并同时维护着 `TeX Live <http://www.tug.org/texlive/>`_ , `MacTeX <http://www.tug.org/mactex/>`_  和 `proTeXt <http://www.tug.org/protext/>`_ 三个发行版本.

.. note:: 与 Word 的 ``.doc`` 等采用富文本格式不同，:math:`\TeX` 所采用的是纯文本的文件格式，所以它不依赖特定的文本编辑软件，你完全可以用记事本来写 :math:`\TeX`，甚至你都不需要鼠标.

随着因特网的发展，人们又把关注的焦点转向如何轻松实现数学公式在网页上的呈现，于是涌现了一大批如 `MathJax <https://www.mathjax.org/>`_、`KaTeX <https://katex.org/>`_ 这些支持在网页支持 :math:`\TeX` 方式呈现数学公式的库.

数学公式的处理对于橘子数学的海量数学试题库来说无疑是至关重要，于是网站采用$\LaTeX$排版系统并自主研发了一个试卷宏包以实现了数学试卷的标准排版( 见 :ref:`bhcexam` )，我们也就需要以 :math:`\TeX` 的方式来录入数学公式. 下面我们将尽可能简单地介绍如何用 :math:`\TeX` 表示数学公式，以求读者能够在10分钟左右的时间里掌握一些常见的用法可以在橘子数学网站上录入一些公式.

.. seealso:: 阅读中译版教程 `《110分钟了解LaTeX》 <https://github.com/CTeX-org/lshort-zh-cn/releases/download/v6.01/lshort-zh-cn.pdf>`_ 可以帮助你对 :math:`\LaTeX` 有一个更全面的了解.

.. seealso:: `MathJax basic tutorial and quick reference by StackExchange <https://math.meta.stackexchange.com/questions/5020/mathjax-basic-tutorial-and-quick-reference>`_

-------------------------
两种数学模式
-------------------------

inline mode
    将数学公式夹在两个 ``$`` 之间, 使数学公式与普通文字混排在段落中.

    Code：

    .. code-block:: latex

        $(a+b)^2=a^2+2ab+b^2$是一条 inline 模式的数学公式.

    Output：

        :math:`(a+b)^2=a^2+2ab+b^2` 是一条 inline 模式的数学公式.


display mode
    将数学公式夹在 ``\[`` 与 ``\]`` 之间,使数学公式单独放在一个段落并居中.

    Code：

    .. code-block:: latex

        这是一条 display 模式的数学公式:\[ (a+b)^2=a^2+2ab+b^2 \]

    Output：

        这是一条 display 模式的数学公式:

        .. math::
            (a+b)^2=a^2+2ab+b^2

.. warning:: 使用 **display** 模式注意控制公式的长度，以防超出屏幕或纸张.

-------------------------
换行与空格
-------------------------

在 :math:`\LaTeX` 中：

* 单独一次回车不换行算一次空格，两次及两次以上回车换一行;
* 连续多个空格、制表符、单独一次回车算一次空格;
* 跟在命令后面的空格会被忽略;
* 强制空格可用 ``~`` 或 ``\quad``，后者为4个空格;
* 强制换行可用 ``\\``.

-------------------------
特殊字符与转义
-------------------------

以下字符在 :math:`\LaTeX` 中需要进行转义:

    # $ % ^ & _ { } ~

Code:

    .. code-block:: latex

        \[\# \quad \$ \quad \% \quad \text{^} \quad \&
        \quad \_ \quad \{ \quad \} \quad \text{~} \]

Output:

    .. math::
        \# \quad \$ \quad \% \quad \text{^} \quad \& \quad \_ \quad \{ \quad \} \quad \text{~}

-------------------------
上标与下标
-------------------------

{ele}^{upper}, {ele}_{lower}
    在 :math:`\LaTeX` 中用 ``^`` 和 ``_`` 标明上下标。注意上下标的内容(子公式)一般需要用花括号包裹,否则上下标只对后面的一个符号起作用.

Code:

    .. code-block:: latex

        注意$x^{10}$不要写成$x^10$.

Output:

    注意 :math:`x^{10}` 不要写成 :math:`x^10`.

-------------------------
大中小括号
-------------------------

一般情况下，在数学公式中除了大括号 ``{ }`` 需要转义外，``( )[ ]`` 可以直接使用. 但一些情况下在括号前使用 ``\left`` 和 ``\right`` 命令自动调整括号的高度，可以使数学公式更美观. 注意 ``\left`` 和 ``\right`` 命令必须成对使用.

Code:

    .. code-block:: latex

        注意下面两者的区别.

        \[
            \left\{\frac{1}{3}+\left[\left(2^4\right)^{\frac{1}{3}}+4\right]\right\}^2
        \]

        \[
            \{\frac{1}{3}+[(2^4)^{\frac{1}{3}}+4]\}^2
        \]

Output:

    注意下面两者的区别.

    .. math::
        \left\{\frac{1}{3}+\left[\left(2^4\right)^{\frac{1}{3}}+4\right]\right\}^2

    .. math::
        \{\frac{1}{3}+[(2^4)^{\frac{1}{3}}+4]\}^2

-------------------------
命令与环境
-------------------------

\\command
    斜杠 ``\`` 在 :math:`\TeX` 中是转义符，其后跟一些英文单词就成为一条 **命令** .

    Code:

    .. code-block:: latex

        这是一些 \TeX 命令:\[\TeX \quad \times \quad \pi \quad \triangle\]

    Output:

    这是一些 :math:`\TeX` 命令:

    .. math::
        \TeX \quad \times \quad \pi \quad \triangle

\\command[optional parameter]{parameter1}{parameter2}
    有些 **命令** 需要接受一个或多个参数, 我们把参数用大括号 ``{ }`` 包起来按顺序跟在命令后面, 可选参数则写在命令与所有参数之间的 ``[]`` 里.

    .. code-block:: latex

        一个参数的命令: $\overrightarrow{AB}$、$\bar{z}$、$\sqrt{3}$;

        多个参数的命令: $\frac{1}{2}$;

        含有可选参数的命令: $\sqrt[3]{5}$.

    Output:

        一个参数的命令: :math:`\overrightarrow{AB}` 、:math:`\bar{z}` 、:math:`\sqrt{3}` ;

        多个参数的命令: :math:`\frac{1}{2}` ;

        含有可选参数的命令: :math:`\sqrt[3]{5}` .


environment
    环境是分别以 ``\begin`` 和 ``\end`` 两条命令为首尾的代码块，环境中可以嵌套环境. ``\begin`` 命令可以包含除了环境名以外的其他参数.

    .. code-block:: latex

        \begin{environment}
        ...
        \end{environment}

        \begin{environment}[optional parameter]{parameter1}
        ...
        \end{environment}

    Code:

    .. code-block:: latex

        分段函数:
        \[f(x)=\begin{cases}
            1 & x\in \mathbf{Q}
            0 & x\notin \mathbf{Q}
        \end{cases}\]

    Output:

    分段函数:

    .. math::
        f(x)=\begin{cases}
            1 & x\in \mathbf{Q}\\
            0 & x\notin \mathbf{Q}
        \end{cases}

-------------------------
字体说明
-------------------------

\\mathrm
    阿拉伯数字、运算符、函数名、常量(英文字母)用正体，若有专属命令则调用该命令，可以用 ``\mathrm`` 设置为正体;

    Code:

    .. code-block:: latex

        注意 $sin$ 和 $\sin$ 以及 $3+2i$ 与 $3+2\mathrm{i}$ 的区别.

    Output:

    注意 :math:`sin` 和 :math:`\sin` 以及 :math:`3+2i` 与 :math:`3+2\mathrm{i}` 的区别.

\\mathit
    变量名、常量(希腊字母)用斜体，可以用 ``\mathit`` 设置为斜体(一般情况下保持默认即可);

    Code:

    .. code-block:: latex

        注意$\pi \approx 3.1415926 \cdots$ 与 $\mathit{\pi \approx 3.1415926 \cdots}$ 的区别

    Output:

    注意 :math:`\pi \approx 3.1415926 \cdots` 与 :math:`\mathit{\pi \approx 3.1415926 \cdots}` 的区别

\\mathbf
    常用集合名用粗体，用 ``\mathbf`` 设置为粗体;

    Code:

    .. code-block:: latex

        注意 $x \in R$ 与 $x \in \mathbf{R}$ 的区别

    Output:

        注意 :math:`x \in R` 与 :math:`x \in \mathbf{R}` 的区别

-------------------------
常用公式示例
-------------------------

* 运算符号

    Code:

    .. code-block:: latex

        加减乘除:
        \[
            \times \quad \cdot \quad \div \quad \pm \quad \mp
        \]

        分数:
        \[
            \frac{1}{2} \quad 3\frac{1}{2} \quad \frac{1}{\frac{1}{\frac{1}{1}+2}+3}+4
        \]

        乘方开方:
        \[
            x^{-2} \quad \sqrt[4]{x^{2}} \quad 2^{-\frac{1}{2}}
        \]

        复数运算:
        \[
            \mathrm{Re}{z} \quad  \mathrm{Im}{z} \quad \overline{z}
        \]

        集合运算:

        \[
            \cap~\cup~\complement_{\mathrm{U}}
        \]

    Output:

        加减乘除:

        .. math::
            \times \quad \cdot \quad \div \quad \pm \quad \mp

        分数:

        .. math::
            \frac{1}{2} \quad 3\frac{1}{2} \quad \frac{1}{\frac{1}{\frac{1}{1}+2}+3}+4

        乘方开方:

        .. math::
            x^{-2} \quad \sqrt[4]{x^{2}} \quad 2^{-\frac{1}{2}}


        复数运算:

        .. math::
            \mathrm{Re}{z} \quad \mathrm{Im}{z} \quad \overline{z}

        集合运算:

        .. math::
            \cap~\cup~\complement_{\mathrm{U}}

* 关系符号

    Code:

    .. code-block:: latex

        大小关系:
        \[
            \gt \quad \ge \quad \lt \quad \le
        \]

        几何关系:
        \[
            \angle A \lt \angle B \quad \triangle{ABC}\sim\triangle{A'B'C'} \quad \alpha \bot \beta
        \]

        集合关系:
        \[
            \in \quad \notin \quad \subset \quad \supset \quad \subseteq \quad \supseteq \quad \subsetneqq \quad \supsetneqq
        \]

    Output:

        大小关系:

        .. math::
            \gt \quad \ge \quad \lt \quad \le

        几何关系:

        .. math::
            \angle A \lt \angle B \quad \quad \triangle{ABC}\sim\triangle{A'B'C'} \quad \alpha \bot \beta

        集合关系:

        .. math::
            \in \quad \notin \quad \subset \quad \supset \quad \subseteq \quad \supseteq \quad \subsetneqq \quad \supsetneqq

* 常用函数

    Code:

    .. code-block:: latex

        三角函数:
        \[
            \sin{x} \quad \cos(x+2\pi)\quad \tan\alpha \quad \cot{x} \\
            \arctan{x} \quad \arccos{x} \quad \sin^{-1}{x}
        \]

        对数函数:
        \[
            \log_{10}{x}~\ln{x}~\lg{x}
        \]

        其它函数:
        \[
            \max{f(x)} \quad \min{a_n}
        \]

    Output:

        三角函数:

        .. math::
            \sin{x} \quad \cos(x+2\pi)\quad \tan\alpha \quad \cot{x} \\
            \arctan{x} \quad \arccos{x} \quad \sin^{-1}{x}

        对数函数:

        .. math::
            \log_{10}{x} \quad \ln{x} \quad \lg{x}

        其它函数:

        .. math::
            \max{f(x)} \quad \min{a_n}


* 矩阵行列式

    Code:

    .. code-block:: latex

        \[
            \left|\begin{array}{lll}
                1 & 2 & 3 \\
                3 & 3 & 4 \\
                \end{array}\right|
                \quad
                \left(\begin{array}{ll}
                1 & 2 \\
                3 & 3 \\
            \end{array}\right)
        \]

    Output:

    .. math::
        \left|\begin{array}{lll}
            1 & 2 & 3 \\
            3 & 3 & 4 \\
        \end{array}\right|
        \quad
        \left(\begin{array}{ll}
            1 & 2 \\
            3 & 3 \\
        \end{array}\right)


* 极限:

    Code:

    .. code-block:: latex

        \[
            \lim\limits_{n\to\infty}a_n \quad \lim\limits_{x\to0^+}f(x)
        \]

    Output:

    .. math::
            \lim\limits_{n\to\infty}a_n \quad \lim\limits_{x\to0^+}f(x)

* 连等式:

    Code:

    .. code-block:: latex

        \[\begin{aligned}
            f(x)&=2\sin(x)+2\cos(x)\\
            &=2\sqrt{2}\sin(x+\frac{\pi}{4})\\
        \end{aligned}
        \quad
        \begin{aligned}
            & (x+1)^2\\
            = & (x+1)(x+1)\\
            = & x^2+x+x+1\\
            = & x^2+2x+1
        \end{aligned}\]

    Output:

    .. math::

        \begin{aligned}
            f(x)&=2\sin(x)+2\cos(x)\\
            &=2\sqrt{2}\sin(x+\frac{\pi}{4})\\
        \end{aligned}
        \quad
        \begin{aligned}
            & (x+1)^2\\
            = & (x+1)(x+1)\\
            = & x^2+x+x+1\\
            = & x^2+2x+1
        \end{aligned}

* 表格

    Code:

    .. code-block:: latex

        \[\begin{array}{|l|l|l|l|}
            \hline
            x & 1 & 2 & 3 \\
            \hline
            y & 2 & 4 & 6 \\
            \hline
        \end{array}\]

    Output:

    .. math::

        \begin{array}{|l|l|l|l|}
            \hline
            x & 1 & 2 & 3 \\
            \hline
            y & 2 & 4 & 6 \\
            \hline
        \end{array}
