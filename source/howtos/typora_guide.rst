.. _typora_guide:

===================
Typora 简明使用指南
===================

Typora 是一款支持实时预览的 Markdown 跨平台文本编辑器，支持导入/导出多种格式的文档，目前是 **完全免费** 的.

:download:`Typora 官方下载<https://www.typora.io/#windows>`

.. important:: 推荐使用 Typora 编辑由橘子数学网站导出的试题、试卷 Markdown 格式文本.

-----------------
关于 MarkDown
-----------------

Markdown是一种轻量级标记语言，它允许人们“使用易读易写的纯文本格式编写文档，然后转换成有效的XHTML（或者HTML）文档”。由于Markdown的轻量化、易读易写特性，并且对于图片，图表、数学公式都有支持，当前许多网站都广泛使用 Markdown 来撰写帮助文档或是用于论坛上发表消息。例如：GitHub、Stack Exchange等。

.. seealso:: `Markdown 快速入门 <https://guides.github.com/features/mastering-markdown/>`_

为什么使用 Markdown
----------------------

利用 Typora 或其他工具，我们可以轻松实现从Markdown到Word,LaTeX,HTML格式的转换，还具备了以下优点：

* 可以享受纯文本编辑器的简洁用户界面及快捷响应(没有一堆“无用”的工具栏按钮、菜单选项、加载项等)
* 用更简单的方式标记文本中的样式，实现了源代码的易读易写特性
* 无须安装LaTeX编译环境也无须处理各种编译错误，但完美支持了以LaTeX的方式处理数学公式
* 把注意力集中在文本内容本身而不是样式上


哪些场景适合使用Markdown
-------------------------

虽然 Markdown 的轻量化可以为含数学公式的文本编辑工作带来极大的便利，但也丧失了绝大部分对排版的精细化控制能力. 所以它并不适合用在有精细化排版需求的应用场景里.

.. warning:: 请不要把Typora当做一款排版软件，在Markdown纯文本里加入html标签以实现对样式的精细控制是一件愚蠢的事，因为这会破坏源代码的可读性.

一般，我们可以在以下场景中使用 Markdown:

* 学习笔记
* 随笔
* 错题集
* 写作素材的归档

-----------------------
Markdown 语法
-----------------------

标题
-------

Markdown 插入标题的语法为:

.. code-block::  md

    #    一级标题
    ##   二级标题
    ###  三级标题

斜体&粗体
------------

Markdown 插入斜体和粗体文本的语法为:

.. code-block:: md

    *text*    斜体text
    **text**  粗题text


图片
-----------

Markdown 插入图片的语法为:

.. code-block:: md

    ![图片不显示时显示此处文字](图片的链接)

.. note:: 在 ``Typora`` 中还可以使用如下两种形式插入图片:
    * 使用 ``复制/粘贴`` 将网络图片、剪贴板图片复制到文档中;
    * 直接拖动本地图片到文档中


数学公式
-------------

Markdown 支持 :math:`\LaTeX` 格式的数学公式:

.. code-block:: md

    $...$     inline 公式
    $$...$$   display 公式

.. warning:: 行内公式需要在 ``文件->偏好设置->Markdown->Markdown扩展语法`` 中勾选 ``内联公式`` 复选框， 重启 ``Typora`` 后生效.

.. seealso:: :ref:`latex_tutorial`


--------------------------------
获取橘子数学试题、试卷的Markdown
--------------------------------

* 获取试卷的 Markdown 文件

.. seealso:: :ref:`download_worksheet`

* 获取试题的 Markdown 代码

.. seealso:: :ref:`problem_share`

------------------
导出为其他格式
------------------

Typora 支持导出多种格式文档，点击 ``文件->导出`` 选择需要导出的格式.

    .. image:: ../_static/typora.png
        :width: 400px







