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
    <title>查看文件</title>
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path %>/css/layoutit.css" rel="stylesheet">
    <link href="<%=path %>/css/default.css" rel="stylesheet">
    <link href="<%=path %>/css/base.css" rel="stylesheet">
    <link href="<%=path %>/css/list.css" rel="stylesheet">
    <link href="<%=path %>/css/content.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="<%=path %>/jquery-easyui/themes/bootstrap/easyui.css">
    <link rel="stylesheet" href="<%=path %>/jquery-easyui/themes/icon.css"/>

    <script type="text/javascript" src="<%=path %>/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=path %>/jquery-easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=path %>/jquery-easyui/locale/easyui-lang-zh_CN.js"></script>


</head>
<body>
<div class="container">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <h3 style="text-align: center;">
                    补货建议
                </h3>
                <table class="easyui-datagrid" title="文档列表" style="width:95%;height:500px;"
                       data-options="toolbar:'#tb',
                        singleSelect:false,
                        collapsible:true,
                        url:'file.json',
                        method:'get',
                        rownumbers:true,
                        autoRowHeight:true,
                        pagination:true,
                        pageSize:20" style="height:100%;">
                    <thead>
                    <tr>
                        <th data-options="field:'id', checkbox:true">文档编号</th>
                        <th data-options="field:'name',width:150,align:'center'">文档名称</th>
                        <th data-options="field:'days',width:100,align:'center'">周期</th>
                        <th data-options="field:'brand',width:100,align:'center'">商品品牌</th>
                        <th data-options="field:'pType',width:100,align:'center'">商品类型</th>
                        <th data-options="field:'pStatus',width:100,align:'center'">商品状态</th>
                        <th data-options="field:'createTime',width:250,align:'center'">文档上传时间</th>
                    </tr>
                    </thead>
                </table>

                <div id="tb" style="padding:5px;height:auto">
                    <div style="margin-bottom:5px">
                        <label>选择天数：</label>
                        <select class="easyui-combobox" name="state" style="width:100px;">
                            <option value="PA">28</option>
                            <option value="CT">30</option>
                            <option value="NY">25</option>
                            <option value="PA">20</option>
                            <option value="NY">15</option>
                            <option value="PA">10</option>
                        </select>
                        <label>选择城市：</label>
                        <select class="easyui-combobox" data-options="editable:false" name="state" style="width:100px;">
                            <option value="PA">全部</option>
                            <option value="CT">北京</option>
                            <option value="NY">上海</option>
                            <option value="PA">广州</option>
                            <option value="NY">成都</option>
                            <option value="PA">武汉</option>
                            <option value="PA">沈阳</option>
                            <option value="NY">西安</option>
                            <option value="PA">固安</option>
                        </select>
                        <a href="<%=path %>/file_detail.jsp"
                           class="easyui-linkbutton" iconCls="icon-search">查看补货建议</a>
                    </div>
                </div>
                <div style="text-align: right; margin-right: 50px;"><a href="<%=path %>/index.jsp">返回首页</a></div>
            </div>
        </div>
    </div>

</div>

</body>
</html>
