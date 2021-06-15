.. _customized_css:

===============
自定义css样式
===============

目前橘子数学试题导出样式及相关测试环境已经开源！


* **Github** 仓库 : `github.com/mathedu4all/mathcrowd-css <https://github.com/mathedu4all/mathcrowd-css>`_

开始之前
-------------------

* 你需要会一点 CSS
* 你需要学会在本地部署测试环境

测试环境的部署(Ubuntu)
-------------------------

1. 安装 PHP 及 composer

    .. code-block:: bash

        sudo apt-get install php php-intl php-mbstring php-dom php-mysql php-memcache php-gd php-imagick php-xml php-bcmath php-curl composer

2. 克隆项目代码到本地

    .. code-block:: bash

        git clone git@github.com:mathedu4all/mathcrowd-css.git

3. 安装依赖

    .. code-block:: bash

        cd mathcrowd-css/basic
        composer update -vvv

4. 运行测试环境并访问 http://localhost:8080

    .. code-block:: bash

        ./yii serve

    .. image:: ../_static/css-dev-01.png
        :width: 400px

5. 打开Chrome开发模式，开始调试你的设计吧

    .. image:: ../_static/css-dev-02.png
        :width: 800px

如何创建新样式
---------------------

* 在 ``mathcrowd-css/css`` 文件夹下新建 ``outputX.css`` (X为样式编号)

* 在 ``mathcrowd-css/basic/views/share.php`` 的第32行起的按钮列表中，新增一个按钮

    .. code-block:: php

      <p>
      <button class="btn btn-default style-button" data-id="1">样式1</button>
      <button class="btn btn-default style-button" data-id="2">样式2</button>
      ...
      <!-- 新增一行 -->
      <button class="btn btn-default style-button" data-id="X">样式X</button>
      </p>