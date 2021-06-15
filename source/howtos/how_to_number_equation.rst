.. _equation_numbering:

如何对数学公式编号并引用
=========================

交叉引用是 :math:`\LaTeX` 排版的强项之一，其自然也支持数学公式的交叉引用.

对于在 ``align`` 、 ``equation`` 等环境中的公式， 我们可以用在公式后添加 ``\label`` 命令定义标签使其右侧生成公式的编号，然后在数学环境中用 ``\eqref`` 引用指定标签的公式，示例如下.

**Code:**

.. code-block:: tex

    \begin{equation}
    \sin\alpha+\sin\beta=\sqrt2
    \tag{1}\label{eq:1}
    \end{equation}

    \begin{equation}
    \cos\alpha+\cos\beta=\frac{\sqrt 3}{2}
    \tag{2}\label{eq:2}
    \end{equation}

    $\eqref{eq:1}^2+\eqref{eq:2}^2$得

    \[
        \sin^2\alpha+\cos^2\alpha+\sin^2\beta+\cos^2\beta+2(\sin\alpha\sin\beta+\cos\alpha\cos\beta)=\frac{11}{4}
    \]


**Output:**

    .. math::

        \sin\alpha+\sin\beta=\sqrt2
        \tag{1}\label{eq:1}

    .. math::

        \cos\alpha+\cos\beta=\frac{\sqrt 3}{2}
        \tag{2}\label{eq:2}

    :math:`\eqref{eq:1}^2+\eqref{eq:2}^2` 得:

    .. math::

        \sin^2\alpha+\cos^2\alpha+\sin^2\beta+\cos^2\beta+2(\sin\alpha\sin\beta+\cos\alpha\cos\beta)=\frac{11}{4}

.. note::

    若不添加 ``\tag``， :math:`\LaTeX` 会对文档中所有定义标签的公式从1开始编号. ``\tag`` 命令可以手动定义公式的编号.

