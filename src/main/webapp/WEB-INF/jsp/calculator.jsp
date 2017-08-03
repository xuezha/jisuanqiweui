<%--
  Created by IntelliJ IDEA.
  User: yemin
  Date: 2017/8/3
  Time: 10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>工程师特训营考试答卷</title>
    <script type="text/javascript" src="/js/jquery-1.9.1.min.js"></script>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximun-scale=1.0,user-scalable=no"/>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="container">
    <div id="word"><h5>大家好，我是叶敏</h5></div>
    <div id="image"><img src="/images/1024.jpg"></div>
    <hr/>
    <div  class="align">
    <label class="weui-cell weui-check__label">表达式：</label><input class="weui-input" type="text"  name="expression" id="expression"/>
    <hr/>
    <label class="weui-cell weui-check__label">结果：</label><input class="weui-input" type="text"  name="result" id="result"/>
    </div>
    <button type="button"   class="weui-btn weui-btn_primary" id="sumitBtn">计算</button>
</div>
<script type="text/javascript" >
    $("#sumitBtn").click(function() {
        jQuery.ajax({
            type: "post",
            url: "calculator",
            data: {expression: $("#expression").val()},
            success:function (data) {
                $("#result").val(data);
            },
           error: function()
            {
            alert("fail");
            }
    });
    });
</script>
</body>
</html>
