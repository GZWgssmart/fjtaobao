<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/3/20
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <title>商品详情</title>
    <link rel="stylesheet" type="text/css" href="<%=path %>/jquery-easyui/themes/bootstrap/easyui.css">
    <link rel="stylesheet" href="<%=path %>/jquery-easyui/themes/icon.css"/>

    <script type="text/javascript" src="<%=path %>/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=path %>/jquery-easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=path %>/jquery-easyui/locale/easyui-lang-zh_CN.js"></script>
</head>
<body>
<h3 style="text-align: center;">
    详情补货建议
</h3>
<table class="easyui-datagrid" title="商品详细列表" style="width:98%;height:250px;"
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
        <th data-options="field:'id', checkbox:true">商品id</th>
        <th data-options="field:'productNo',width:100,align:'center'">商品编号</th>
        <th data-options="field:'name',width:100,align:'center'">商品名称</th>
        <th data-options="field:'days',width:60,align:'center'">周期</th>
        <th data-options="field:'brand',width:60,align:'center'">商品品牌</th>
        <th data-options="field:'pType',width:60,align:'center'">商品类型</th>
        <th data-options="field:'totalStock',width:60,align:'center'">全国库存</th>
        <th data-options="field:'totalSales',width:60,align:'center'">全国销量</th>
        <th data-options="field:'totalStock',width:60,align:'center'">北京库存</th>
        <th data-options="field:'totalSales',width:60,align:'center'">北京销量</th>
        <th data-options="field:'totalStock',width:60,align:'center'">上海库存</th>
        <th data-options="field:'totalSales',width:60,align:'center'">上海销量</th>
        <th data-options="field:'totalStock',width:60,align:'center'">广州库存</th>
        <th data-options="field:'totalSales',width:60,align:'center'">广州销量</th>
        <th data-options="field:'totalStock',width:60,align:'center'">成都库存</th>
        <th data-options="field:'totalSales',width:60,align:'center'">成都销量</th>
        <th data-options="field:'totalStock',width:60,align:'center'">武汉库存</th>
        <th data-options="field:'totalSales',width:60,align:'center'">武汉销量</th>
        <th data-options="field:'totalStock',width:60,align:'center'">沈阳库存</th>
        <th data-options="field:'totalSales',width:60,align:'center'">沈阳销量</th>
        <th data-options="field:'totalStock',width:60,align:'center'">西安库存</th>
        <th data-options="field:'totalSales',width:60,align:'center'">西安销量</th>
        <th data-options="field:'totalStock',width:60,align:'center'">固安库存</th>
        <th data-options="field:'totalSales',width:60,align:'center'">固安销量</th>
        <th data-options="field:'totalSales',width:80,align:'center'">建议补货数</th>
    </tr>
    </thead>
</table>


<div style="text-align: right; margin-right: 50px;"><a href="<%=path %>/index.jsp">返回首页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=path %>/look.jsp">查看文档</a></div>
</body>
</html>
