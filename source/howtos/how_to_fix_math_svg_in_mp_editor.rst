.. _how_to_fix_math_svg:

如何修复在微信暗黑模式下的长数学公式
==============================================

拖动以下按钮到收藏栏

.. raw:: html

    <p>
        <a href="javascript: function loadSVG(src) {return new Promise((resolve) => {let ajax = new XMLHttpRequest();ajax.open('GET', src, true);ajax.send();ajax.onload = function (e) {let div = document.createElement('div');div.innerHTML = ajax.responseText;let svg = div.childNodes[0];resolve(svg);}})}function revise() {console.log(`【修复公式SVG】开始`);let ueditor = document.getElementById('ueditor_0');let view = ueditor.contentDocument.getElementsByClassName('view')[0];let embeds = view.querySelectorAll(' embed');console.log(`【修复公式SVG】 检测到 ${embeds.length} 个目标……`);let promises = [];embeds.forEach((embed, index) => {console.log(`【修复公式SVG】 第 ${index} 个……`);let parent_node = embed.parentNode;promises.push(new Promise(resolve => {loadSVG(embed.src).then(svg => {parent_node.insertBefore(svg, embed);parent_node.removeChild(embed);resolve();})}))});Promise.all(promises).then(() => {console.log('【修复公式SVG】 修复成功！');alert('修复成功！');})}revise()">一键修复SVG</a>
    </p>
