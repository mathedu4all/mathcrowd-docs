.. _how_to_install_texlive:

##################
如何安装TeXLive
##################

==========
Windows
==========

在线安装
++++++++

1. 选择一个镜像源，这里推荐 `清华镜像源 <https://mirrors.tuna.tsinghua.edu.cn/CTAN/systems/texlive/>`_ .

2. 下载安装程序

    :download:`install-tl-windows.exe<https://mirrors.tuna.tsinghua.edu.cn/CTAN/systems/texlive/tlnet/install-tl-windows.exe>`

3. 双击安装程序安装.

.. note::

    安装过程中请务必保证良好的网络环境，同时要求硬盘有5G以上的空闲空间.

离线安装
+++++++

当你网络环境一般时，可以提前下载完整的ISO镜像文件(大小为3.3G)离线安装.

1. 在网络环境良好的机器上下载ISO镜像文件.

    :download:`texlive2019.iso<https://mirrors.tuna.tsinghua.edu.cn/CTAN/systems/texlive/Images/texlive2019.iso>`

2. 下载完整后，建议校验文件的完整性. 即在命令行中运行以下命令，比较返回结果与官方md5是否一致.

    .. code-block:: cmd

        cd {iso文件所在的目录}
        certutil -hashfile texlive2019.iso MD5

    :download:`官方md5<https://mirrors.tuna.tsinghua.edu.cn/CTAN/systems/texlive/Images/texlive2019.md5>`

3. 将ISO镜像文件复制到目标机器上，双击ISO文件加载镜像(win10以上，win7需额外安装虚拟光驱软件）.

    :download:`虚拟光驱软件: WinCDE <http://wincdemu.sysprogs.org/>`

4. 在所加载光盘的根目录下双击安装程序 ``install-tl-windows.exe`` 安装.

==========
Mac
==========

**Mac** 用户请安装 ``MacTeX`` 发行版本. 在线/离线安装方式于上述大致相同，除了安装程序的文件名改为 ``MacTeX.pkg`` .

    :download:`MacTeX.pkg<https://mirrors.tuna.tsinghua.edu.cn/CTAN/systems/mac/mactex/MacTeX.pkg>`


==========
Linux
==========

都玩 ``Linux`` 了，应该也不用在这里看教程了吧.