<!DOCTYPE html>
<html>
<head>
<#if title ??>
    <title>${title}</title>
</#if>
    <!--
        使用 rem 布局，使 H5 页面能适配不同设备屏幕尺寸
        flexible-lite-1.0.js 用于计算 html 根元素的 font-size 大小
        然后 css 或 less 中所有的尺寸值一定要用 rem 单位，而不是 px 或其它单位。
    -->
    <meta charset="UTF-8" name="viewport"
          content="width=device-width,initial-scale=1,user-scalable=0"/>
    <script src="/website/flexible-lite/flexible-lite-1.0.js"></script>
    <script type="text/javascript">
        flex(1000);
    </script>
    <!--
            务必确保在 less.js 之前加载你的样式表。
            如果加载多个 .less 样式表文件，每个文件都会被单独编译。
            因此，一个文件中所定义的任何变量、mixin 或命名空间都无法在其它文件中访问。
    -->
    <link rel="stylesheet/less" type="text/css" href="/api2doc/css/doc.less?v=${v}">
    <link rel="stylesheet/less" type="text/css" href="/api2doc/css/md.less?v=${v}">
    <script type="text/javascript" src="/website/less/less-1.7.0.js"></script>

    <!-- 使代码根据语法显示样式（如：高亮等） -->
    <link rel="stylesheet"
          href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/styles/default.min.css">
    <script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/highlight.min.js"></script>
    <script type="text/javascript">
        hljs.initHighlightingOnLoad();
    </script>

</head>
<body>
<div class="test-entry">
    <a href="/api2doc/test.html">接口测试</a>
</div>
<div class="clear"/>
<#if title ??>
<div class="title">${title}</div>
</#if>
<div class="content">${content}</div>
</body>
</html>