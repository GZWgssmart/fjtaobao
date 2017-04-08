<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/3/17
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>上传文件</title>
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path %>/css/layoutit.css" rel="stylesheet">
    <link href="<%=path %>/css/default.css" rel="stylesheet">
    <link href="<%=path %>/css/base.css" rel="stylesheet">
    <link href="<%=path %>/css/list.css" rel="stylesheet">
    <link href="<%=path %>/css/content.css" rel="stylesheet">

</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <h3 style="text-align: center;">
                上传文件
            </h3>
            <form action="<%=path%>/files/addFile" method="post" id="form" enctype="multipart/form-data">
            <div role="form">
                <div id="error" style="color: red;"></div>
                <div>
                    <label>表格类型：</label>
                    <select class="combobox" name="ftype" onchange="checkType(this)">
                        <option value="xc">小表格</option>
                        <option value="dc">大表格</option>
                    </select>
                </div>
                <div>
                    <label for="exampleInputFile">文件：</label>
                    <input id="exampleInputFile" name="file" type="file" style="display:inline;"/>
                </div>
                <h4>设置文件属性：</h4>
                <div id="days">
                    <label>天数：</label>
                    <select name="days" class="combobox">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="7">7</option>
                        <option value="14">14</option>
                        <option value="15">15</option>
                        <option value="28">28</option>
                        <option value="30">30</option>
                        <option value="90">90</option>
                    </select>
                </div>
                <div>
                    <label>品牌：</label>
                    <select name="brand" class="combobox">
                        <option value="全部">全部</option>
                        <option value="A">A</option>
                        <option value="B">B</option>
                        <option value="C">C</option>
                        <option value="其他品牌">其他品牌</option>
                    </select>
                </div>
                <div>
                    <label>商品分类：</label>
                    <select name="ptype" class="combobox">
                        <option value="全部">全部</option>
                        <option value="A">A</option>
                        <option value="B">B</option>
                        <option value="C">C</option>
                        <option value="D">D</option>
                        <option value="E">E</option>
                    </select>
                </div>
                <div>
                    <label>商品状态：</label>
                    <select name="pstatus" class="combobox">
                        <option value="全部">全部</option>
                        <option value="上柜">上柜</option>
                        <option value="可上柜">可上柜</option>
                        <option value="下柜">下柜</option>
                    </select>
                </div>
                <br/>
                <input type="button" onclick="upload()" class="btn btn-default" id="btn" style="cursor: pointer;" value="提交"/>

             </div>
            </form>
            <div style="text-align: right;"><a href="<%=path %>/index.jsp">返回首页</a></div>
        </div>
    </div>
</div>

<script type="text/javascript" src="<%=path %>/js/jquery.min.js"></script>

<script>
    var count;
    $(function() {
        count = 0;
    });

    function checkType(comboBox) {
        var val = comboBox.value;
        var div = document.getElementById("days");

        if (val == "xc") {
            div.style = "display: black;";
        } else {
            div.style = "display: none;";
        }
    }

    function upload() {
        count++;
        var file = document.getElementById("exampleInputFile").value;
        var div = document.getElementById("error");
        if (file != null && file != undefined && file != "") {
            if (count == 1) {
                document.getElementById("form").submit();
                document.getElementById("btn").style.cursor='not-allowed';
            }
        } else {
            count = 0;
            div.innerHTML = "请选择文件";
        }

    }
</script>

</body>
</html>
