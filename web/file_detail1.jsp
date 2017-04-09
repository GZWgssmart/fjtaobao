<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/3/20
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
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

    <script type="text/javascript" src="<%=path %>/js/main.js"></script>
    <style>
        .datagrid-cell-c1-totalStock {
            background-color: #d0cece;
        }
        .datagrid-cell-c1-bjStock {
            background-color: #d0cece;
        }
        .datagrid-cell-c1-shStock {
            background-color: #d0cece;
        }
        .datagrid-cell-c1-gzStock {
            background-color: #d0cece;
        }
        .datagrid-cell-c1-cdStock {
            background-color: #d0cece;
        }
        .datagrid-cell-c1-whStock {
            background-color: #d0cece;
        }
        .datagrid-cell-c1-syStock {
            background-color: #d0cece;
        }
        .datagrid-cell-c1-xaStock {
            background-color: #d0cece;
        }
        .datagrid-cell-c1-gaStock {
            background-color: #d0cece;
        }

    </style>
</head>
<body>
<h3 style="text-align: center;">
    商品详情补货建议
</h3>
<table class="easyui-datagrid" id="list" title="商品详细列表" style="width:100%;height:600px;"
       data-options="toolbar:'#tb',
                        singleSelect:true,
                        collapsible:true,
                        url:'<%=path %>/files/maxTable',
                        method:'get',
                        rownumbers:true,
                        autoRowHeight:true,
                        pagination:true,
                        pageSize:20" style="height:100%;">
    <thead>
    <tr>
        <th data-options="field:'id', checkbox:'true'">商品id</th>
        <th data-options="field:'productNo',width:100,align:'center'">商品编号</th>
        <th data-options="field:'name',width:100,align:'center'">商品名称</th>
        <th data-options="field:'brand',width:100,align:'center'">商品品牌</th>
        <th data-options="field:'status',width:100,align:'center'">商品状态</th>
        <th data-options="field:'price',width:100,align:'center'" formatter="price">商品价格</th>
        <th data-options="field:'totalStock',width:100,align:'center'">全国总库存</th>
        <th data-options="field:'totalStockCount',width:100,align:'center'" formatter="totalStockCount">全国总库存额</th>
        <c:choose>
            <c:when test="${sessionScope.city == 'bj'}">
                <th data-options="field:'bjStock',width:100,align:'center'">北京库存</th>
                <c:forEach items="${sessionScope.salesList}" var="mt">
                    <c:if test="${mt == 1}">
                        <th data-options="field:'bjSales1',width:100,align:'center'">北京1天销量</th>
                        <th data-options="field:'bjTurnoverDays1',width:100,align:'center'" formatter="bjTurnoverDays1">
                            北京1天周转天数
                        </th>
                        <th data-options="field:'bjCount1',width:200,align:'center'" formatter="bjCount1">
                            北京1天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 2}">
                        <th data-options="field:'bjSales2',width:100,align:'center'">北京2天销量</th>
                        <th data-options="field:'bjTurnoverDays2',width:100,align:'center'" formatter="bjTurnoverDays2">
                            北京2天周转天数
                        </th>
                        <th data-options="field:'bjCount2',width:200,align:'center'" formatter="bjCount2">
                            北京2天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 3}">
                        <th data-options="field:'bjSales3',width:100,align:'center'">北京3天销量</th>
                        <th data-options="field:'bjTurnoverDays3',width:100,align:'center'" formatter="bjTurnoverDays3">
                            北京3天周转天数
                        </th>
                        <th data-options="field:'bjCount3',width:200,align:'center'" formatter="bjCount3">
                            北京3天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 4}">
                        <th data-options="field:'bjSales4',width:100,align:'center'">北京4天销量</th>
                        <th data-options="field:'bjTurnoverDays4',width:100,align:'center'" formatter="bjTurnoverDays4">
                            北京4天周转天数
                        </th>
                        <th data-options="field:'bjCount4',width:200,align:'center'" formatter="bjCount4">
                            北京4天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 5}">
                        <th data-options="field:'bjSales5',width:100,align:'center'">北京5天销量</th>
                        <th data-options="field:'bjTurnoverDays5',width:100,align:'center'" formatter="bjTurnoverDays5">
                            北京5天周转天数
                        </th>
                        <th data-options="field:'bjCount5',width:200,align:'center'" formatter="bjCount5">
                            北京5天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 6}">
                        <th data-options="field:'bjSales6',width:100,align:'center'">北京6天销量</th>
                        <th data-options="field:'bjTurnoverDays6',width:100,align:'center'" formatter="bjTurnoverDays6">
                            北京6天周转天数
                        </th>
                        <th data-options="field:'bjCount6',width:200,align:'center'" formatter="bjCount6">
                            北京6天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 7}">
                        <th data-options="field:'bjSales7',width:100,align:'center'">北京7天销量</th>
                        <th data-options="field:'bjTurnoverDays7',width:100,align:'center'" formatter="bjTurnoverDays7">
                            北京7天周转天数
                        </th>
                        <th data-options="field:'bjCount7',width:200,align:'center'" formatter="bjCount7">
                            北京7天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 8}">
                        <th data-options="field:'bjSales8',width:100,align:'center'">北京8天销量</th>
                        <th data-options="field:'bjTurnoverDays8',width:100,align:'center'" formatter="bjTurnoverDays8">
                            北京8天周转天数
                        </th>
                        <th data-options="field:'bjCount8',width:200,align:'center'" formatter="bjCount8">
                            北京8天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 9}">
                        <th data-options="field:'bjSales9',width:100,align:'center'">北京9天销量</th>
                        <th data-options="field:'bjTurnoverDays9',width:100,align:'center'" formatter="bjTurnoverDays9">
                            北京9天周转天数
                        </th>
                        <th data-options="field:'bjCount9',width:200,align:'center'" formatter="bjCount9">
                            北京9天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 10}">
                        <th data-options="field:'bjSales10',width:100,align:'center'">北京10天销量</th>
                        <th data-options="field:'bjTurnoverDays10',width:100,align:'center'"
                            formatter="bjTurnoverDays10">北京10天周转天数
                        </th>
                        <th data-options="field:'bjCount10',width:200,align:'center'" formatter="bjCount10">
                            北京10天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 11}">
                        <th data-options="field:'bjSales11',width:100,align:'center'">北京11天销量</th>
                        <th data-options="field:'bjTurnoverDays11',width:100,align:'center'"
                            formatter="bjTurnoverDays11">北京11天周转天数
                        </th>
                        <th data-options="field:'bjCount11',width:200,align:'center'" formatter="bjCount11">
                            北京11天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 12}">
                        <th data-options="field:'bjSales12',width:100,align:'center'">北京12天销量</th>
                        <th data-options="field:'bjTurnoverDays12',width:100,align:'center'"
                            formatter="bjTurnoverDays12">北京12天周转天数
                        </th>
                        <th data-options="field:'bjCount12',width:200,align:'center'" formatter="bjCount12">
                            北京12天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 13}">
                        <th data-options="field:'bjSales13',width:100,align:'center'">北京13天销量</th>
                        <th data-options="field:'bjTurnoverDays13',width:100,align:'center'"
                            formatter="bjTurnoverDays13">北京13天周转天数
                        </th>
                        <th data-options="field:'bjCount13',width:200,align:'center'" formatter="bjCount13">
                            北京13天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 14}">
                        <th data-options="field:'bjSales14',width:100,align:'center'">北京14天销量</th>
                        <th data-options="field:'bjTurnoverDays14',width:100,align:'center'"
                            formatter="bjTurnoverDays14">北京14天周转天数
                        </th>
                        <th data-options="field:'bjCount14',width:200,align:'center'" formatter="bjCount14">
                            北京14天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 15}">
                        <th data-options="field:'bjSales15',width:100,align:'center'">北京15天销量</th>
                        <th data-options="field:'bjTurnoverDays15',width:100,align:'center'"
                            formatter="bjTurnoverDays15">北京15天周转天数
                        </th>
                        <th data-options="field:'bjCount15',width:200,align:'center'" formatter="bjCount15">
                            北京15天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 16}">
                        <th data-options="field:'bjSales16',width:100,align:'center'">北京16天销量</th>
                        <th data-options="field:'bjTurnoverDays16',width:100,align:'center'"
                            formatter="bjTurnoverDays16">北京16天周转天数
                        </th>
                        <th data-options="field:'bjCount16',width:200,align:'center'" formatter="bjCount16">
                            北京16天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 17}">
                        <th data-options="field:'bjSales17',width:100,align:'center'">北京17天销量</th>
                        <th data-options="field:'bjTurnoverDays17',width:100,align:'center'"
                            formatter="bjTurnoverDays17">北京17天周转天数
                        </th>
                        <th data-options="field:'bjCount17',width:200,align:'center'" formatter="bjCount17">
                            北京17天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 18}">
                        <th data-options="field:'bjSales18',width:100,align:'center'">北京18天销量</th>
                        <th data-options="field:'bjTurnoverDays18',width:100,align:'center'"
                            formatter="bjTurnoverDays18">北京18天周转天数
                        </th>
                        <th data-options="field:'bjCount18',width:200,align:'center'" formatter="bjCount18">
                            北京18天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 19}">
                        <th data-options="field:'bjSales19',width:100,align:'center'">北京19天销量</th>
                        <th data-options="field:'bjTurnoverDays19',width:100,align:'center'"
                            formatter="bjTurnoverDays19">北京19天周转天数
                        </th>
                        <th data-options="field:'bjCount19',width:200,align:'center'" formatter="bjCount19">
                            北京19天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 20}">
                        <th data-options="field:'bjSales20',width:100,align:'center'">北京20天销量</th>
                        <th data-options="field:'bjTurnoverDays20',width:100,align:'center'"
                            formatter="bjTurnoverDays20">北京20天周转天数
                        </th>
                        <th data-options="field:'bjCount20',width:200,align:'center'" formatter="bjCount20">
                            北京20天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 21}">
                        <th data-options="field:'bjSales21',width:100,align:'center'">北京21天销量</th>
                        <th data-options="field:'bjTurnoverDays21',width:100,align:'center'"
                            formatter="bjTurnoverDays21">北京21天周转天数
                        </th>
                        <th data-options="field:'bjCount21',width:200,align:'center'" formatter="bjCount21">
                            北京21天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 22}">
                        <th data-options="field:'bjSales22',width:100,align:'center'">北京22天销量</th>
                        <th data-options="field:'bjTurnoverDays22',width:100,align:'center'"
                            formatter="bjTurnoverDays22">北京22天周转天数
                        </th>
                        <th data-options="field:'bjCount22',width:200,align:'center'" formatter="bjCount22">
                            北京22天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 23}">
                        <th data-options="field:'bjSales23',width:100,align:'center'">北京23天销量</th>
                        <th data-options="field:'bjTurnoverDays23',width:100,align:'center'"
                            formatter="bjTurnoverDays23">北京23天周转天数
                        </th>
                        <th data-options="field:'bjCount23',width:200,align:'center'" formatter="bjCount23">
                            北京23天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 24}">
                        <th data-options="field:'bjSales24',width:100,align:'center'">北京24天销量</th>
                        <th data-options="field:'bjTurnoverDays24',width:100,align:'center'"
                            formatter="bjTurnoverDays24">北京24天周转天数
                        </th>
                        <th data-options="field:'bjCount24',width:200,align:'center'" formatter="bjCount24">
                            北京24天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 25}">
                        <th data-options="field:'bjSales25',width:100,align:'center'">北京25天销量</th>
                        <th data-options="field:'bjTurnoverDays25',width:100,align:'center'"
                            formatter="bjTurnoverDays25">北京25天周转天数
                        </th>
                        <th data-options="field:'bjCount25',width:200,align:'center'" formatter="bjCount25">
                            北京25天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 26}">
                        <th data-options="field:'bjSales26',width:100,align:'center'">北京26天销量</th>
                        <th data-options="field:'bjTurnoverDays26',width:100,align:'center'"
                            formatter="bjTurnoverDays26">北京26天周转天数
                        </th>
                        <th data-options="field:'bjCount26',width:200,align:'center'" formatter="bjCount26">
                            北京26天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 27}">
                        <th data-options="field:'bjSales27',width:100,align:'center'">北京27天销量</th>
                        <th data-options="field:'bjTurnoverDays27',width:100,align:'center'"
                            formatter="bjTurnoverDays27">北京27天周转天数
                        </th>
                        <th data-options="field:'bjCount27',width:200,align:'center'" formatter="bjCount27">
                            北京27天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 28}">
                        <th data-options="field:'bjSales28',width:100,align:'center'">北京28天销量</th>
                        <th data-options="field:'bjTurnoverDays28',width:100,align:'center'"
                            formatter="bjTurnoverDays28">北京28天周转天数
                        </th>
                        <th data-options="field:'bjCount28',width:200,align:'center'" formatter="bjCount28">
                            北京28天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 29}">
                        <th data-options="field:'bjSales29',width:100,align:'center'">北京29天销量</th>
                        <th data-options="field:'bjTurnoverDays29',width:100,align:'center'"
                            formatter="bjTurnoverDays29">北京29天周转天数
                        </th>
                        <th data-options="field:'bjCount29',width:200,align:'center'" formatter="bjCount29">
                            北京29天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 30}">
                        <th data-options="field:'bjSales30',width:100,align:'center'">北京30天销量</th>
                        <th data-options="field:'bjTurnoverDays30',width:100,align:'center'"
                            formatter="bjTurnoverDays30">北京30天周转天数
                        </th>
                        <th data-options="field:'bjCount30',width:200,align:'center'" formatter="bjCount30">
                            北京30天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 31}">
                        <th data-options="field:'bjSales31',width:100,align:'center'">北京31天销量</th>
                        <th data-options="field:'bjTurnoverDays31',width:100,align:'center'"
                            formatter="bjTurnoverDays31">北京31天周转天数
                        </th>
                        <th data-options="field:'bjCount31',width:200,align:'center'" formatter="bjCount31">
                            北京31天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 90}">
                        <th data-options="field:'bjSales90',width:100,align:'center'">北京90天销量</th>
                        <th data-options="field:'bjTurnoverDays90',width:100,align:'center'"
                            formatter="bjTurnoverDays90">北京90天周转天数
                        </th>
                        <th data-options="field:'bjCount90',width:200,align:'center'" formatter="bjCount90">
                            北京90天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                </c:forEach>
            </c:when>
            <c:when test="${sessionScope.city == 'sh'}">
                <th data-options="field:'shStock',width:100,align:'center'">上海库存</th>
                <c:forEach items="${sessionScope.salesList}" var="mt">
                    <c:if test="${mt == 1}">
                        <th data-options="field:'shSales1',width:100,align:'center'">上海1天销量</th>
                        <th data-options="field:'shTurnoverDays1',width:100,align:'center'" formatter="shTurnoverDays1">
                            上海1天周转天数
                        </th>
                        <th data-options="field:'shCount1',width:200,align:'center'" formatter="shCount1">
                            上海1天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 2}">
                        <th data-options="field:'shSales2',width:100,align:'center'">上海2天销量</th>
                        <th data-options="field:'shTurnoverDays2',width:100,align:'center'" formatter="shTurnoverDays2">
                            上海2天周转天数
                        </th>
                        <th data-options="field:'shCount2',width:200,align:'center'" formatter="shCount2">
                            上海2天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 3}">
                        <th data-options="field:'shSales3',width:100,align:'center'">上海3天销量</th>
                        <th data-options="field:'shTurnoverDays3',width:100,align:'center'" formatter="shTurnoverDays3">
                            上海3天周转天数
                        </th>
                        <th data-options="field:'shCount3',width:200,align:'center'" formatter="shCount3">
                            上海3天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 4}">
                        <th data-options="field:'shSales4',width:100,align:'center'">上海4天销量</th>
                        <th data-options="field:'shTurnoverDays4',width:100,align:'center'" formatter="shTurnoverDays4">
                            上海4天周转天数
                        </th>
                        <th data-options="field:'shCount4',width:200,align:'center'" formatter="shCount4">
                            上海4天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 5}">
                        <th data-options="field:'shSales5',width:100,align:'center'">上海5天销量</th>
                        <th data-options="field:'shTurnoverDays5',width:100,align:'center'" formatter="shTurnoverDays5">
                            上海5天周转天数
                        </th>
                        <th data-options="field:'shCount5',width:200,align:'center'" formatter="shCount5">
                            上海5天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 6}">
                        <th data-options="field:'shSales6',width:100,align:'center'">上海6天销量</th>
                        <th data-options="field:'shTurnoverDays6',width:100,align:'center'" formatter="shTurnoverDays6">
                            上海6天周转天数
                        </th>
                        <th data-options="field:'shCount6',width:200,align:'center'" formatter="shCount6">
                            上海6天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 7}">
                        <th data-options="field:'shSales7',width:100,align:'center'">上海7天销量</th>
                        <th data-options="field:'shTurnoverDays7',width:100,align:'center'" formatter="shTurnoverDays7">
                            上海7天周转天数
                        </th>
                        <th data-options="field:'shCount7',width:200,align:'center'" formatter="shCount7">
                            上海7天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 8}">
                        <th data-options="field:'shSales8',width:100,align:'center'">上海8天销量</th>
                        <th data-options="field:'shTurnoverDays8',width:100,align:'center'" formatter="shTurnoverDays8">
                            上海8天周转天数
                        </th>
                        <th data-options="field:'shCount8',width:200,align:'center'" formatter="shCount8">
                            上海8天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 9}">
                        <th data-options="field:'shSales9',width:100,align:'center'">上海9天销量</th>
                        <th data-options="field:'shTurnoverDays9',width:100,align:'center'" formatter="shTurnoverDays9">
                            上海9天周转天数
                        </th>
                        <th data-options="field:'shCount9',width:200,align:'center'" formatter="shCount9">
                            上海9天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 10}">
                        <th data-options="field:'shSales10',width:100,align:'center'">上海10天销量</th>
                        <th data-options="field:'shTurnoverDays10',width:100,align:'center'"
                            formatter="shTurnoverDays10">上海10天周转天数
                        </th>
                        <th data-options="field:'shCount10',width:200,align:'center'" formatter="shCount10">
                            上海10天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 11}">
                        <th data-options="field:'shSales11',width:100,align:'center'">上海11天销量</th>
                        <th data-options="field:'shTurnoverDays11',width:100,align:'center'"
                            formatter="shTurnoverDays11">上海11天周转天数
                        </th>
                        <th data-options="field:'shCount11',width:200,align:'center'" formatter="shCount11">
                            上海11天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 12}">
                        <th data-options="field:'shSales12',width:100,align:'center'">上海12天销量</th>
                        <th data-options="field:'shTurnoverDays12',width:100,align:'center'"
                            formatter="shTurnoverDays12">上海12天周转天数
                        </th>
                        <th data-options="field:'shCount12',width:200,align:'center'" formatter="shCount12">
                            上海12天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 13}">
                        <th data-options="field:'shSales13',width:100,align:'center'">上海13天销量</th>
                        <th data-options="field:'shTurnoverDays13',width:100,align:'center'"
                            formatter="shTurnoverDays13">上海13天周转天数
                        </th>
                        <th data-options="field:'shCount13',width:200,align:'center'" formatter="shCount13">
                            上海13天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 14}">
                        <th data-options="field:'shSales14',width:100,align:'center'">上海14天销量</th>
                        <th data-options="field:'shTurnoverDays14',width:100,align:'center'"
                            formatter="shTurnoverDays14">上海14天周转天数
                        </th>
                        <th data-options="field:'shCount14',width:200,align:'center'" formatter="shCount14">
                            上海14天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 15}">
                        <th data-options="field:'shSales15',width:100,align:'center'">上海15天销量</th>
                        <th data-options="field:'shTurnoverDays15',width:100,align:'center'"
                            formatter="shTurnoverDays15">上海15天周转天数
                        </th>
                        <th data-options="field:'shCount15',width:200,align:'center'" formatter="shCount15">
                            上海15天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 16}">
                        <th data-options="field:'shSales16',width:100,align:'center'">上海16天销量</th>
                        <th data-options="field:'shTurnoverDays16',width:100,align:'center'"
                            formatter="shTurnoverDays16">上海16天周转天数
                        </th>
                        <th data-options="field:'shCount16',width:200,align:'center'" formatter="shCount16">
                            上海16天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 17}">
                        <th data-options="field:'shSales17',width:100,align:'center'">上海17天销量</th>
                        <th data-options="field:'shTurnoverDays17',width:100,align:'center'"
                            formatter="shTurnoverDays17">上海17天周转天数
                        </th>
                        <th data-options="field:'shCount17',width:200,align:'center'" formatter="shCount17">
                            上海17天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 18}">
                        <th data-options="field:'shSales18',width:100,align:'center'">上海18天销量</th>
                        <th data-options="field:'shTurnoverDays18',width:100,align:'center'"
                            formatter="shTurnoverDays18">上海18天周转天数
                        </th>
                        <th data-options="field:'shCount18',width:200,align:'center'" formatter="shCount18">
                            上海18天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 19}">
                        <th data-options="field:'shSales19',width:100,align:'center'">上海19天销量</th>
                        <th data-options="field:'shTurnoverDays19',width:100,align:'center'"
                            formatter="shTurnoverDays19">上海19天周转天数
                        </th>
                        <th data-options="field:'shCount19',width:200,align:'center'" formatter="shCount19">
                            上海19天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 20}">
                        <th data-options="field:'shSales20',width:100,align:'center'">上海20天销量</th>
                        <th data-options="field:'shTurnoverDays20',width:100,align:'center'"
                            formatter="shTurnoverDays20">上海20天周转天数
                        </th>
                        <th data-options="field:'shCount20',width:200,align:'center'" formatter="shCount20">
                            上海20天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 21}">
                        <th data-options="field:'shSales21',width:100,align:'center'">上海21天销量</th>
                        <th data-options="field:'shTurnoverDays21',width:100,align:'center'"
                            formatter="shTurnoverDays21">上海21天周转天数
                        </th>
                        <th data-options="field:'shCount21',width:200,align:'center'" formatter="shCount21">
                            上海21天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 22}">
                        <th data-options="field:'shSales22',width:100,align:'center'">上海22天销量</th>
                        <th data-options="field:'shTurnoverDays22',width:100,align:'center'"
                            formatter="shTurnoverDays22">上海22天周转天数
                        </th>
                        <th data-options="field:'shCount22',width:200,align:'center'" formatter="shCount22">
                            上海22天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 23}">
                        <th data-options="field:'shSales23',width:100,align:'center'">上海23天销量</th>
                        <th data-options="field:'shTurnoverDays23',width:100,align:'center'"
                            formatter="shTurnoverDays23">上海23天周转天数
                        </th>
                        <th data-options="field:'shCount23',width:200,align:'center'" formatter="shCount23">
                            上海23天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 24}">
                        <th data-options="field:'shSales24',width:100,align:'center'">上海24天销量</th>
                        <th data-options="field:'shTurnoverDays24',width:100,align:'center'"
                            formatter="shTurnoverDays24">上海24天周转天数
                        </th>
                        <th data-options="field:'shCount24',width:200,align:'center'" formatter="shCount24">
                            上海24天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 25}">
                        <th data-options="field:'shSales25',width:100,align:'center'">上海25天销量</th>
                        <th data-options="field:'shTurnoverDays25',width:100,align:'center'"
                            formatter="shTurnoverDays25">上海25天周转天数
                        </th>
                        <th data-options="field:'shCount25',width:200,align:'center'" formatter="shCount25">
                            上海25天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 26}">
                        <th data-options="field:'shSales26',width:100,align:'center'">上海26天销量</th>
                        <th data-options="field:'shTurnoverDays26',width:100,align:'center'"
                            formatter="shTurnoverDays26">上海26天周转天数
                        </th>
                        <th data-options="field:'shCount26',width:200,align:'center'" formatter="shCount26">
                            上海26天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 27}">
                        <th data-options="field:'shSales27',width:100,align:'center'">上海27天销量</th>
                        <th data-options="field:'shTurnoverDays27',width:100,align:'center'"
                            formatter="shTurnoverDays27">上海27天周转天数
                        </th>
                        <th data-options="field:'shCount27',width:200,align:'center'" formatter="shCount27">
                            上海27天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 28}">
                        <th data-options="field:'shSales28',width:100,align:'center'">上海28天销量</th>
                        <th data-options="field:'shTurnoverDays28',width:100,align:'center'"
                            formatter="shTurnoverDays28">上海28天周转天数
                        </th>
                        <th data-options="field:'shCount28',width:200,align:'center'" formatter="shCount28">
                            上海28天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 29}">
                        <th data-options="field:'shSales29',width:100,align:'center'">上海29天销量</th>
                        <th data-options="field:'shTurnoverDays29',width:100,align:'center'"
                            formatter="shTurnoverDays29">上海29天周转天数
                        </th>
                        <th data-options="field:'shCount29',width:200,align:'center'" formatter="shCount29">
                            上海29天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 30}">
                        <th data-options="field:'shSales30',width:100,align:'center'">上海30天销量</th>
                        <th data-options="field:'shTurnoverDays30',width:100,align:'center'"
                            formatter="shTurnoverDays30">上海30天周转天数
                        </th>
                        <th data-options="field:'shCount30',width:200,align:'center'" formatter="shCount30">
                            上海30天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 31}">
                        <th data-options="field:'shSales31',width:100,align:'center'">上海31天销量</th>
                        <th data-options="field:'shTurnoverDays31',width:100,align:'center'"
                            formatter="shTurnoverDays31">上海31天周转天数
                        </th>
                        <th data-options="field:'shCount31',width:200,align:'center'" formatter="shCount31">
                            上海31天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 90}">
                        <th data-options="field:'shSales90',width:100,align:'center'">上海90天销量</th>
                        <th data-options="field:'shTurnoverDays90',width:100,align:'center'"
                            formatter="shTurnoverDays90">上海90天周转天数
                        </th>
                        <th data-options="field:'shCount90',width:200,align:'center'" formatter="shCount90">
                            上海90天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                </c:forEach>
            </c:when>
            <c:when test="${sessionScope.city == 'gz'}">
                <th data-options="field:'gzStock',width:100,align:'center'">广州库存</th>
                <c:forEach items="${sessionScope.salesList}" var="mt">
                    <c:if test="${mt == 1}">
                        <th data-options="field:'gzSales1',width:100,align:'center'">广州1天销量</th>
                        <th data-options="field:'gzTurnoverDays1',width:100,align:'center'" formatter="gzTurnoverDays1">
                            广州1天周转天数
                        </th>
                        <th data-options="field:'gzCount1',width:200,align:'center'" formatter="gzCount1">
                            广州1天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 2}">
                        <th data-options="field:'gzSales2',width:100,align:'center'">广州2天销量</th>
                        <th data-options="field:'gzTurnoverDays2',width:100,align:'center'" formatter="gzTurnoverDays2">
                            广州2天周转天数
                        </th>
                        <th data-options="field:'gzCount2',width:200,align:'center'" formatter="gzCount2">
                            广州2天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 3}">
                        <th data-options="field:'gzSales3',width:100,align:'center'">广州3天销量</th>
                        <th data-options="field:'gzTurnoverDays3',width:100,align:'center'" formatter="gzTurnoverDays3">
                            广州3天周转天数
                        </th>
                        <th data-options="field:'gzCount3',width:200,align:'center'" formatter="gzCount3">
                            广州3天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 4}">
                        <th data-options="field:'gzSales4',width:100,align:'center'">广州4天销量</th>
                        <th data-options="field:'gzTurnoverDays4',width:100,align:'center'" formatter="gzTurnoverDays4">
                            广州4天周转天数
                        </th>
                        <th data-options="field:'gzCount4',width:200,align:'center'" formatter="gzCount4">
                            广州4天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 5}">
                        <th data-options="field:'gzSales5',width:100,align:'center'">广州5天销量</th>
                        <th data-options="field:'gzTurnoverDays5',width:100,align:'center'" formatter="gzTurnoverDays5">
                            广州5天周转天数
                        </th>
                        <th data-options="field:'gzCount5',width:200,align:'center'" formatter="gzCount5">
                            广州5天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 6}">
                        <th data-options="field:'gzSales6',width:100,align:'center'">广州6天销量</th>
                        <th data-options="field:'gzTurnoverDays6',width:100,align:'center'" formatter="gzTurnoverDays6">
                            广州6天周转天数
                        </th>
                        <th data-options="field:'gzCount6',width:200,align:'center'" formatter="gzCount6">
                            广州6天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 7}">
                        <th data-options="field:'gzSales7',width:100,align:'center'">广州7天销量</th>
                        <th data-options="field:'gzTurnoverDays7',width:100,align:'center'" formatter="gzTurnoverDays7">
                            广州7天周转天数
                        </th>
                        <th data-options="field:'gzCount7',width:200,align:'center'" formatter="gzCount7">
                            广州7天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 8}">
                        <th data-options="field:'gzSales8',width:100,align:'center'">广州8天销量</th>
                        <th data-options="field:'gzTurnoverDays8',width:100,align:'center'" formatter="gzTurnoverDays8">
                            广州8天周转天数
                        </th>
                        <th data-options="field:'gzCount8',width:200,align:'center'" formatter="gzCount8">
                            广州8天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 9}">
                        <th data-options="field:'gzSales9',width:100,align:'center'">广州9天销量</th>
                        <th data-options="field:'gzTurnoverDays9',width:100,align:'center'" formatter="gzTurnoverDays9">
                            广州9天周转天数
                        </th>
                        <th data-options="field:'gzCount9',width:200,align:'center'" formatter="gzCount9">
                            广州9天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 10}">
                        <th data-options="field:'gzSales10',width:100,align:'center'">广州10天销量</th>
                        <th data-options="field:'gzTurnoverDays10',width:100,align:'center'"
                            formatter="gzTurnoverDays10">广州10天周转天数
                        </th>
                        <th data-options="field:'gzCount10',width:200,align:'center'" formatter="gzCount10">
                            广州10天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 11}">
                        <th data-options="field:'gzSales11',width:100,align:'center'">广州11天销量</th>
                        <th data-options="field:'gzTurnoverDays11',width:100,align:'center'"
                            formatter="gzTurnoverDays11">广州11天周转天数
                        </th>
                        <th data-options="field:'gzCount11',width:200,align:'center'" formatter="gzCount11">
                            广州11天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 12}">
                        <th data-options="field:'gzSales12',width:100,align:'center'">广州12天销量</th>
                        <th data-options="field:'gzTurnoverDays12',width:100,align:'center'"
                            formatter="gzTurnoverDays12">广州12天周转天数
                        </th>
                        <th data-options="field:'gzCount12',width:200,align:'center'" formatter="gzCount12">
                            广州12天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 13}">
                        <th data-options="field:'gzSales13',width:100,align:'center'">广州13天销量</th>
                        <th data-options="field:'gzTurnoverDays13',width:100,align:'center'"
                            formatter="gzTurnoverDays13">广州13天周转天数
                        </th>
                        <th data-options="field:'gzCount13',width:200,align:'center'" formatter="gzCount13">
                            广州13天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 14}">
                        <th data-options="field:'gzSales14',width:100,align:'center'">广州14天销量</th>
                        <th data-options="field:'gzTurnoverDays14',width:100,align:'center'"
                            formatter="gzTurnoverDays14">广州14天周转天数
                        </th>
                        <th data-options="field:'gzCount14',width:200,align:'center'" formatter="gzCount14">
                            广州14天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 15}">
                        <th data-options="field:'gzSales15',width:100,align:'center'">广州15天销量</th>
                        <th data-options="field:'gzTurnoverDays15',width:100,align:'center'"
                            formatter="gzTurnoverDays15">广州15天周转天数
                        </th>
                        <th data-options="field:'gzCount15',width:200,align:'center'" formatter="gzCount15">
                            广州15天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 16}">
                        <th data-options="field:'gzSales16',width:100,align:'center'">广州16天销量</th>
                        <th data-options="field:'gzTurnoverDays16',width:100,align:'center'"
                            formatter="gzTurnoverDays16">广州16天周转天数
                        </th>
                        <th data-options="field:'gzCount16',width:200,align:'center'" formatter="gzCount16">
                            广州16天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 17}">
                        <th data-options="field:'gzSales17',width:100,align:'center'">广州17天销量</th>
                        <th data-options="field:'gzTurnoverDays17',width:100,align:'center'"
                            formatter="gzTurnoverDays17">广州17天周转天数
                        </th>
                        <th data-options="field:'gzCount17',width:200,align:'center'" formatter="gzCount17">
                            广州17天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 18}">
                        <th data-options="field:'gzSales18',width:100,align:'center'">广州18天销量</th>
                        <th data-options="field:'gzTurnoverDays18',width:100,align:'center'"
                            formatter="gzTurnoverDays18">广州18天周转天数
                        </th>
                        <th data-options="field:'gzCount18',width:200,align:'center'" formatter="gzCount18">
                            广州18天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 19}">
                        <th data-options="field:'gzSales19',width:100,align:'center'">广州19天销量</th>
                        <th data-options="field:'gzTurnoverDays19',width:100,align:'center'"
                            formatter="gzTurnoverDays19">广州19天周转天数
                        </th>
                        <th data-options="field:'gzCount19',width:200,align:'center'" formatter="gzCount19">
                            广州19天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 20}">
                        <th data-options="field:'gzSales20',width:100,align:'center'">广州20天销量</th>
                        <th data-options="field:'gzTurnoverDays20',width:100,align:'center'"
                            formatter="gzTurnoverDays20">广州20天周转天数
                        </th>
                        <th data-options="field:'gzCount20',width:200,align:'center'" formatter="gzCount20">
                            广州20天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 21}">
                        <th data-options="field:'gzSales21',width:100,align:'center'">广州21天销量</th>
                        <th data-options="field:'gzTurnoverDays21',width:100,align:'center'"
                            formatter="gzTurnoverDays21">广州21天周转天数
                        </th>
                        <th data-options="field:'gzCount21',width:200,align:'center'" formatter="gzCount21">
                            广州21天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 22}">
                        <th data-options="field:'gzSales22',width:100,align:'center'">广州22天销量</th>
                        <th data-options="field:'gzTurnoverDays22',width:100,align:'center'"
                            formatter="gzTurnoverDays22">广州22天周转天数
                        </th>
                        <th data-options="field:'gzCount22',width:200,align:'center'" formatter="gzCount22">
                            广州22天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 23}">
                        <th data-options="field:'gzSales23',width:100,align:'center'">广州23天销量</th>
                        <th data-options="field:'gzTurnoverDays23',width:100,align:'center'"
                            formatter="gzTurnoverDays23">广州23天周转天数
                        </th>
                        <th data-options="field:'gzCount23',width:200,align:'center'" formatter="gzCount23">
                            广州23天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 24}">
                        <th data-options="field:'gzSales24',width:100,align:'center'">广州24天销量</th>
                        <th data-options="field:'gzTurnoverDays24',width:100,align:'center'"
                            formatter="gzTurnoverDays24">广州24天周转天数
                        </th>
                        <th data-options="field:'gzCount24',width:200,align:'center'" formatter="gzCount24">
                            广州24天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 25}">
                        <th data-options="field:'gzSales25',width:100,align:'center'">广州25天销量</th>
                        <th data-options="field:'gzTurnoverDays25',width:100,align:'center'"
                            formatter="gzTurnoverDays25">广州25天周转天数
                        </th>
                        <th data-options="field:'gzCount25',width:200,align:'center'" formatter="gzCount25">
                            广州25天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 26}">
                        <th data-options="field:'gzSales26',width:100,align:'center'">广州26天销量</th>
                        <th data-options="field:'gzTurnoverDays26',width:100,align:'center'"
                            formatter="gzTurnoverDays26">广州26天周转天数
                        </th>
                        <th data-options="field:'gzCount26',width:200,align:'center'" formatter="gzCount26">
                            广州26天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 27}">
                        <th data-options="field:'gzSales27',width:100,align:'center'">广州27天销量</th>
                        <th data-options="field:'gzTurnoverDays27',width:100,align:'center'"
                            formatter="gzTurnoverDays27">广州27天周转天数
                        </th>
                        <th data-options="field:'gzCount27',width:200,align:'center'" formatter="gzCount27">
                            广州27天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 28}">
                        <th data-options="field:'gzSales28',width:100,align:'center'">广州28天销量</th>
                        <th data-options="field:'gzTurnoverDays28',width:100,align:'center'"
                            formatter="gzTurnoverDays28">广州28天周转天数
                        </th>
                        <th data-options="field:'gzCount28',width:200,align:'center'" formatter="gzCount28">
                            广州28天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 29}">
                        <th data-options="field:'gzSales29',width:100,align:'center'">广州29天销量</th>
                        <th data-options="field:'gzTurnoverDays29',width:100,align:'center'"
                            formatter="gzTurnoverDays29">广州29天周转天数
                        </th>
                        <th data-options="field:'gzCount29',width:200,align:'center'" formatter="gzCount29">
                            广州29天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 30}">
                        <th data-options="field:'gzSales30',width:100,align:'center'">广州30天销量</th>
                        <th data-options="field:'gzTurnoverDays30',width:100,align:'center'"
                            formatter="gzTurnoverDays30">广州30天周转天数
                        </th>
                        <th data-options="field:'gzCount30',width:200,align:'center'" formatter="gzCount30">
                            广州30天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 31}">
                        <th data-options="field:'gzSales31',width:100,align:'center'">广州31天销量</th>
                        <th data-options="field:'gzTurnoverDays31',width:100,align:'center'"
                            formatter="gzTurnoverDays31">广州31天周转天数
                        </th>
                        <th data-options="field:'gzCount31',width:200,align:'center'" formatter="gzCount31">
                            广州31天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 90}">
                        <th data-options="field:'gzSales90',width:100,align:'center'">广州90天销量</th>
                        <th data-options="field:'gzTurnoverDays90',width:100,align:'center'"
                            formatter="gzTurnoverDays90">广州90天周转天数
                        </th>
                        <th data-options="field:'gzCount90',width:200,align:'center'" formatter="gzCount90">
                            广州90天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                </c:forEach>

            </c:when>
            <c:when test="${sessionScope.city == 'cd'}">
                <th data-options="field:'cdStock',width:100,align:'center'">成都库存</th>
                <c:forEach items="${sessionScope.salesList}" var="mt">
                    <c:if test="${mt == 1}">
                        <th data-options="field:'cdSales1',width:100,align:'center'">成都1天销量</th>
                        <th data-options="field:'cdTurnoverDays1',width:100,align:'center'" formatter="cdTurnoverDays1">
                            成都1天周转天数
                        </th>
                        <th data-options="field:'cdCount1',width:200,align:'center'" formatter="cdCount1">
                            成都1天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 2}">
                        <th data-options="field:'cdSales2',width:100,align:'center'">成都2天销量</th>
                        <th data-options="field:'cdTurnoverDays2',width:100,align:'center'" formatter="cdTurnoverDays2">
                            成都2天周转天数
                        </th>
                        <th data-options="field:'cdCount2',width:200,align:'center'" formatter="cdCount2">
                            成都2天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 3}">
                        <th data-options="field:'cdSales3',width:100,align:'center'">成都3天销量</th>
                        <th data-options="field:'cdTurnoverDays3',width:100,align:'center'" formatter="cdTurnoverDays3">
                            成都3天周转天数
                        </th>
                        <th data-options="field:'cdCount3',width:200,align:'center'" formatter="cdCount3">
                            成都3天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 4}">
                        <th data-options="field:'cdSales4',width:100,align:'center'">成都4天销量</th>
                        <th data-options="field:'cdTurnoverDays4',width:100,align:'center'" formatter="cdTurnoverDays4">
                            成都4天周转天数
                        </th>
                        <th data-options="field:'cdCount4',width:200,align:'center'" formatter="cdCount4">
                            成都4天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 5}">
                        <th data-options="field:'cdSales5',width:100,align:'center'">成都5天销量</th>
                        <th data-options="field:'cdTurnoverDays5',width:100,align:'center'" formatter="cdTurnoverDays5">
                            成都5天周转天数
                        </th>
                        <th data-options="field:'cdCount5',width:200,align:'center'" formatter="cdCount5">
                            成都5天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 6}">
                        <th data-options="field:'cdSales6',width:100,align:'center'">成都6天销量</th>
                        <th data-options="field:'cdTurnoverDays6',width:100,align:'center'" formatter="cdTurnoverDays6">
                            成都6天周转天数
                        </th>
                        <th data-options="field:'cdCount6',width:200,align:'center'" formatter="cdCount6">
                            成都6天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 7}">
                        <th data-options="field:'cdSales7',width:100,align:'center'">成都7天销量</th>
                        <th data-options="field:'cdTurnoverDays7',width:100,align:'center'" formatter="cdTurnoverDays7">
                            成都7天周转天数
                        </th>
                        <th data-options="field:'cdCount7',width:200,align:'center'" formatter="cdCount7">
                            成都7天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 8}">
                        <th data-options="field:'cdSales8',width:100,align:'center'">成都8天销量</th>
                        <th data-options="field:'cdTurnoverDays8',width:100,align:'center'" formatter="cdTurnoverDays8">
                            成都8天周转天数
                        </th>
                        <th data-options="field:'cdCount8',width:200,align:'center'" formatter="cdCount8">
                            成都8天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 9}">
                        <th data-options="field:'cdSales9',width:100,align:'center'">成都9天销量</th>
                        <th data-options="field:'cdTurnoverDays9',width:100,align:'center'" formatter="cdTurnoverDays9">
                            成都9天周转天数
                        </th>
                        <th data-options="field:'cdCount9',width:200,align:'center'" formatter="cdCount9">
                            成都9天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 10}">
                        <th data-options="field:'cdSales10',width:100,align:'center'">成都10天销量</th>
                        <th data-options="field:'cdTurnoverDays10',width:100,align:'center'"
                            formatter="cdTurnoverDays10">成都10天周转天数
                        </th>
                        <th data-options="field:'cdCount10',width:200,align:'center'" formatter="cdCount10">
                            成都10天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 11}">
                        <th data-options="field:'cdSales11',width:100,align:'center'">成都11天销量</th>
                        <th data-options="field:'cdTurnoverDays11',width:100,align:'center'"
                            formatter="cdTurnoverDays11">成都11天周转天数
                        </th>
                        <th data-options="field:'cdCount11',width:200,align:'center'" formatter="cdCount11">
                            成都11天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 12}">
                        <th data-options="field:'cdSales12',width:100,align:'center'">成都12天销量</th>
                        <th data-options="field:'cdTurnoverDays12',width:100,align:'center'"
                            formatter="cdTurnoverDays12">成都12天周转天数
                        </th>
                        <th data-options="field:'cdCount12',width:200,align:'center'" formatter="cdCount12">
                            成都12天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 13}">
                        <th data-options="field:'cdSales13',width:100,align:'center'">成都13天销量</th>
                        <th data-options="field:'cdTurnoverDays13',width:100,align:'center'"
                            formatter="cdTurnoverDays13">成都13天周转天数
                        </th>
                        <th data-options="field:'cdCount13',width:200,align:'center'" formatter="cdCount13">
                            成都13天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 14}">
                        <th data-options="field:'cdSales14',width:100,align:'center'">成都14天销量</th>
                        <th data-options="field:'cdTurnoverDays14',width:100,align:'center'"
                            formatter="cdTurnoverDays14">成都14天周转天数
                        </th>
                        <th data-options="field:'cdCount14',width:200,align:'center'" formatter="cdCount14">
                            成都14天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 15}">
                        <th data-options="field:'cdSales15',width:100,align:'center'">成都15天销量</th>
                        <th data-options="field:'cdTurnoverDays15',width:100,align:'center'"
                            formatter="cdTurnoverDays15">成都15天周转天数
                        </th>
                        <th data-options="field:'cdCount15',width:200,align:'center'" formatter="cdCount15">
                            成都15天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 16}">
                        <th data-options="field:'cdSales16',width:100,align:'center'">成都16天销量</th>
                        <th data-options="field:'cdTurnoverDays16',width:100,align:'center'"
                            formatter="cdTurnoverDays16">成都16天周转天数
                        </th>
                        <th data-options="field:'cdCount16',width:200,align:'center'" formatter="cdCount16">
                            成都16天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 17}">
                        <th data-options="field:'cdSales17',width:100,align:'center'">成都17天销量</th>
                        <th data-options="field:'cdTurnoverDays17',width:100,align:'center'"
                            formatter="cdTurnoverDays17">成都17天周转天数
                        </th>
                        <th data-options="field:'cdCount17',width:200,align:'center'" formatter="cdCount17">
                            成都17天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 18}">
                        <th data-options="field:'cdSales18',width:100,align:'center'">成都18天销量</th>
                        <th data-options="field:'cdTurnoverDays18',width:100,align:'center'"
                            formatter="cdTurnoverDays18">成都18天周转天数
                        </th>
                        <th data-options="field:'cdCount18',width:200,align:'center'" formatter="cdCount18">
                            成都18天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 19}">
                        <th data-options="field:'cdSales19',width:100,align:'center'">成都19天销量</th>
                        <th data-options="field:'cdTurnoverDays19',width:100,align:'center'"
                            formatter="cdTurnoverDays19">成都19天周转天数
                        </th>
                        <th data-options="field:'cdCount19',width:200,align:'center'" formatter="cdCount19">
                            成都19天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 20}">
                        <th data-options="field:'cdSales20',width:100,align:'center'">成都20天销量</th>
                        <th data-options="field:'cdTurnoverDays20',width:100,align:'center'"
                            formatter="cdTurnoverDays20">成都20天周转天数
                        </th>
                        <th data-options="field:'cdCount20',width:200,align:'center'" formatter="cdCount20">
                            成都20天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 21}">
                        <th data-options="field:'cdSales21',width:100,align:'center'">成都21天销量</th>
                        <th data-options="field:'cdTurnoverDays21',width:100,align:'center'"
                            formatter="cdTurnoverDays21">成都21天周转天数
                        </th>
                        <th data-options="field:'cdCount21',width:200,align:'center'" formatter="cdCount21">
                            成都21天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 22}">
                        <th data-options="field:'cdSales22',width:100,align:'center'">成都22天销量</th>
                        <th data-options="field:'cdTurnoverDays22',width:100,align:'center'"
                            formatter="cdTurnoverDays22">成都22天周转天数
                        </th>
                        <th data-options="field:'cdCount22',width:200,align:'center'" formatter="cdCount22">
                            成都22天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 23}">
                        <th data-options="field:'cdSales23',width:100,align:'center'">成都23天销量</th>
                        <th data-options="field:'cdTurnoverDays23',width:100,align:'center'"
                            formatter="cdTurnoverDays23">成都23天周转天数
                        </th>
                        <th data-options="field:'cdCount23',width:200,align:'center'" formatter="cdCount23">
                            成都23天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 24}">
                        <th data-options="field:'cdSales24',width:100,align:'center'">成都24天销量</th>
                        <th data-options="field:'cdTurnoverDays24',width:100,align:'center'"
                            formatter="cdTurnoverDays24">成都24天周转天数
                        </th>
                        <th data-options="field:'cdCount24',width:200,align:'center'" formatter="cdCount24">
                            成都24天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 25}">
                        <th data-options="field:'cdSales25',width:100,align:'center'">成都25天销量</th>
                        <th data-options="field:'cdTurnoverDays25',width:100,align:'center'"
                            formatter="cdTurnoverDays25">成都25天周转天数
                        </th>
                        <th data-options="field:'cdCount25',width:200,align:'center'" formatter="cdCount25">
                            成都25天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 26}">
                        <th data-options="field:'cdSales26',width:100,align:'center'">成都26天销量</th>
                        <th data-options="field:'cdTurnoverDays26',width:100,align:'center'"
                            formatter="cdTurnoverDays26">成都26天周转天数
                        </th>
                        <th data-options="field:'cdCount26',width:200,align:'center'" formatter="cdCount26">
                            成都26天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 27}">
                        <th data-options="field:'cdSales27',width:100,align:'center'">成都27天销量</th>
                        <th data-options="field:'cdTurnoverDays27',width:100,align:'center'"
                            formatter="cdTurnoverDays27">成都27天周转天数
                        </th>
                        <th data-options="field:'cdCount27',width:200,align:'center'" formatter="cdCount27">
                            成都27天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 28}">
                        <th data-options="field:'cdSales28',width:100,align:'center'">成都28天销量</th>
                        <th data-options="field:'cdTurnoverDays28',width:100,align:'center'"
                            formatter="cdTurnoverDays28">成都28天周转天数
                        </th>
                        <th data-options="field:'cdCount28',width:200,align:'center'" formatter="cdCount28">
                            成都28天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 29}">
                        <th data-options="field:'cdSales29',width:100,align:'center'">成都29天销量</th>
                        <th data-options="field:'cdTurnoverDays29',width:100,align:'center'"
                            formatter="cdTurnoverDays29">成都29天周转天数
                        </th>
                        <th data-options="field:'cdCount29',width:200,align:'center'" formatter="cdCount29">
                            成都29天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 30}">
                        <th data-options="field:'cdSales30',width:100,align:'center'">成都30天销量</th>
                        <th data-options="field:'cdTurnoverDays30',width:100,align:'center'"
                            formatter="cdTurnoverDays30">成都30天周转天数
                        </th>
                        <th data-options="field:'cdCount30',width:200,align:'center'" formatter="cdCount30">
                            成都30天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 31}">
                        <th data-options="field:'cdSales31',width:100,align:'center'">成都31天销量</th>
                        <th data-options="field:'cdTurnoverDays31',width:100,align:'center'"
                            formatter="cdTurnoverDays31">成都31天周转天数
                        </th>
                        <th data-options="field:'cdCount31',width:200,align:'center'" formatter="cdCount31">
                            成都31天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 90}">
                        <th data-options="field:'cdSales90',width:100,align:'center'">成都90天销量</th>
                        <th data-options="field:'cdTurnoverDays90',width:100,align:'center'"
                            formatter="cdTurnoverDays90">成都90天周转天数
                        </th>
                        <th data-options="field:'cdCount90',width:200,align:'center'" formatter="cdCount90">
                            成都90天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                </c:forEach>
            </c:when>
            <c:when test="${sessionScope.city == 'wh'}">
                <th data-options="field:'whStock',width:100,align:'center'">武汉库存</th>
                <c:forEach items="${sessionScope.salesList}" var="mt">
                    <c:if test="${mt == 1}">
                        <th data-options="field:'whSales1',width:100,align:'center'">武汉1天销量</th>
                        <th data-options="field:'whTurnoverDays1',width:100,align:'center'" formatter="whTurnoverDays1">
                            武汉1天周转天数
                        </th>
                        <th data-options="field:'whCount1',width:200,align:'center'" formatter="whCount1">
                            武汉1天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 2}">
                        <th data-options="field:'whSales2',width:100,align:'center'">武汉2天销量</th>
                        <th data-options="field:'whTurnoverDays2',width:100,align:'center'" formatter="whTurnoverDays2">
                            武汉2天周转天数
                        </th>
                        <th data-options="field:'whCount2',width:200,align:'center'" formatter="whCount2">
                            武汉2天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 3}">
                        <th data-options="field:'whSales3',width:100,align:'center'">武汉3天销量</th>
                        <th data-options="field:'whTurnoverDays3',width:100,align:'center'" formatter="whTurnoverDays3">
                            武汉3天周转天数
                        </th>
                        <th data-options="field:'whCount3',width:200,align:'center'" formatter="whCount3">
                            武汉3天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 4}">
                        <th data-options="field:'whSales4',width:100,align:'center'">武汉4天销量</th>
                        <th data-options="field:'whTurnoverDays4',width:100,align:'center'" formatter="whTurnoverDays4">
                            武汉4天周转天数
                        </th>
                        <th data-options="field:'whCount4',width:200,align:'center'" formatter="whCount4">
                            武汉4天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 5}">
                        <th data-options="field:'whSales5',width:100,align:'center'">武汉5天销量</th>
                        <th data-options="field:'whTurnoverDays5',width:100,align:'center'" formatter="whTurnoverDays5">
                            武汉5天周转天数
                        </th>
                        <th data-options="field:'whCount5',width:200,align:'center'" formatter="whCount5">
                            武汉5天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 6}">
                        <th data-options="field:'whSales6',width:100,align:'center'">武汉6天销量</th>
                        <th data-options="field:'whTurnoverDays6',width:100,align:'center'" formatter="whTurnoverDays6">
                            武汉6天周转天数
                        </th>
                        <th data-options="field:'whCount6',width:200,align:'center'" formatter="whCount6">
                            武汉6天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 7}">
                        <th data-options="field:'whSales7',width:100,align:'center'">武汉7天销量</th>
                        <th data-options="field:'whTurnoverDays7',width:100,align:'center'" formatter="whTurnoverDays7">
                            武汉7天周转天数
                        </th>
                        <th data-options="field:'whCount7',width:200,align:'center'" formatter="whCount7">
                            武汉7天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 8}">
                        <th data-options="field:'whSales8',width:100,align:'center'">武汉8天销量</th>
                        <th data-options="field:'whTurnoverDays8',width:100,align:'center'" formatter="whTurnoverDays8">
                            武汉8天周转天数
                        </th>
                        <th data-options="field:'whCount8',width:200,align:'center'" formatter="whCount8">
                            武汉8天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 9}">
                        <th data-options="field:'whSales9',width:100,align:'center'">武汉9天销量</th>
                        <th data-options="field:'whTurnoverDays9',width:100,align:'center'" formatter="whTurnoverDays9">
                            武汉9天周转天数
                        </th>
                        <th data-options="field:'whCount9',width:200,align:'center'" formatter="whCount9">
                            武汉9天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 10}">
                        <th data-options="field:'whSales10',width:100,align:'center'">武汉10天销量</th>
                        <th data-options="field:'whTurnoverDays10',width:100,align:'center'"
                            formatter="whTurnoverDays10">武汉10天周转天数
                        </th>
                        <th data-options="field:'whCount10',width:200,align:'center'" formatter="whCount10">
                            武汉10天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 11}">
                        <th data-options="field:'whSales11',width:100,align:'center'">武汉11天销量</th>
                        <th data-options="field:'whTurnoverDays11',width:100,align:'center'"
                            formatter="whTurnoverDays11">武汉11天周转天数
                        </th>
                        <th data-options="field:'whCount11',width:200,align:'center'" formatter="whCount11">
                            武汉11天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 12}">
                        <th data-options="field:'whSales12',width:100,align:'center'">武汉12天销量</th>
                        <th data-options="field:'whTurnoverDays12',width:100,align:'center'"
                            formatter="whTurnoverDays12">武汉12天周转天数
                        </th>
                        <th data-options="field:'whCount12',width:200,align:'center'" formatter="whCount12">
                            武汉12天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 13}">
                        <th data-options="field:'whSales13',width:100,align:'center'">武汉13天销量</th>
                        <th data-options="field:'whTurnoverDays13',width:100,align:'center'"
                            formatter="whTurnoverDays13">武汉13天周转天数
                        </th>
                        <th data-options="field:'whCount13',width:200,align:'center'" formatter="whCount13">
                            武汉13天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 14}">
                        <th data-options="field:'whSales14',width:100,align:'center'">武汉14天销量</th>
                        <th data-options="field:'whTurnoverDays14',width:100,align:'center'"
                            formatter="whTurnoverDays14">武汉14天周转天数
                        </th>
                        <th data-options="field:'whCount14',width:200,align:'center'" formatter="whCount14">
                            武汉14天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 15}">
                        <th data-options="field:'whSales15',width:100,align:'center'">武汉15天销量</th>
                        <th data-options="field:'whTurnoverDays15',width:100,align:'center'"
                            formatter="whTurnoverDays15">武汉15天周转天数
                        </th>
                        <th data-options="field:'whCount15',width:200,align:'center'" formatter="whCount15">
                            武汉15天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 16}">
                        <th data-options="field:'whSales16',width:100,align:'center'">武汉16天销量</th>
                        <th data-options="field:'whTurnoverDays16',width:100,align:'center'"
                            formatter="whTurnoverDays16">武汉16天周转天数
                        </th>
                        <th data-options="field:'whCount16',width:200,align:'center'" formatter="whCount16">
                            武汉16天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 17}">
                        <th data-options="field:'whSales17',width:100,align:'center'">武汉17天销量</th>
                        <th data-options="field:'whTurnoverDays17',width:100,align:'center'"
                            formatter="whTurnoverDays17">武汉17天周转天数
                        </th>
                        <th data-options="field:'whCount17',width:200,align:'center'" formatter="whCount17">
                            武汉17天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 18}">
                        <th data-options="field:'whSales18',width:100,align:'center'">武汉18天销量</th>
                        <th data-options="field:'whTurnoverDays18',width:100,align:'center'"
                            formatter="whTurnoverDays18">武汉18天周转天数
                        </th>
                        <th data-options="field:'whCount18',width:200,align:'center'" formatter="whCount18">
                            武汉18天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 19}">
                        <th data-options="field:'whSales19',width:100,align:'center'">武汉19天销量</th>
                        <th data-options="field:'whTurnoverDays19',width:100,align:'center'"
                            formatter="whTurnoverDays19">武汉19天周转天数
                        </th>
                        <th data-options="field:'whCount19',width:200,align:'center'" formatter="whCount19">
                            武汉19天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 20}">
                        <th data-options="field:'whSales20',width:100,align:'center'">武汉20天销量</th>
                        <th data-options="field:'whTurnoverDays20',width:100,align:'center'"
                            formatter="whTurnoverDays20">武汉20天周转天数
                        </th>
                        <th data-options="field:'whCount20',width:200,align:'center'" formatter="whCount20">
                            武汉20天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 21}">
                        <th data-options="field:'whSales21',width:100,align:'center'">武汉21天销量</th>
                        <th data-options="field:'whTurnoverDays21',width:100,align:'center'"
                            formatter="whTurnoverDays21">武汉21天周转天数
                        </th>
                        <th data-options="field:'whCount21',width:200,align:'center'" formatter="whCount21">
                            武汉21天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 22}">
                        <th data-options="field:'whSales22',width:100,align:'center'">武汉22天销量</th>
                        <th data-options="field:'whTurnoverDays22',width:100,align:'center'"
                            formatter="whTurnoverDays22">武汉22天周转天数
                        </th>
                        <th data-options="field:'whCount22',width:200,align:'center'" formatter="whCount22">
                            武汉22天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 23}">
                        <th data-options="field:'whSales23',width:100,align:'center'">武汉23天销量</th>
                        <th data-options="field:'whTurnoverDays23',width:100,align:'center'"
                            formatter="whTurnoverDays23">武汉23天周转天数
                        </th>
                        <th data-options="field:'whCount23',width:200,align:'center'" formatter="whCount23">
                            武汉23天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 24}">
                        <th data-options="field:'whSales24',width:100,align:'center'">武汉24天销量</th>
                        <th data-options="field:'whTurnoverDays24',width:100,align:'center'"
                            formatter="whTurnoverDays24">武汉24天周转天数
                        </th>
                        <th data-options="field:'whCount24',width:200,align:'center'" formatter="whCount24">
                            武汉24天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 25}">
                        <th data-options="field:'whSales25',width:100,align:'center'">武汉25天销量</th>
                        <th data-options="field:'whTurnoverDays25',width:100,align:'center'"
                            formatter="whTurnoverDays25">武汉25天周转天数
                        </th>
                        <th data-options="field:'whCount25',width:200,align:'center'" formatter="whCount25">
                            武汉25天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 26}">
                        <th data-options="field:'whSales26',width:100,align:'center'">武汉26天销量</th>
                        <th data-options="field:'whTurnoverDays26',width:100,align:'center'"
                            formatter="whTurnoverDays26">武汉26天周转天数
                        </th>
                        <th data-options="field:'whCount26',width:200,align:'center'" formatter="whCount26">
                            武汉26天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 27}">
                        <th data-options="field:'whSales27',width:100,align:'center'">武汉27天销量</th>
                        <th data-options="field:'whTurnoverDays27',width:100,align:'center'"
                            formatter="whTurnoverDays27">武汉27天周转天数
                        </th>
                        <th data-options="field:'whCount27',width:200,align:'center'" formatter="whCount27">
                            武汉27天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 28}">
                        <th data-options="field:'whSales28',width:100,align:'center'">武汉28天销量</th>
                        <th data-options="field:'whTurnoverDays28',width:100,align:'center'"
                            formatter="whTurnoverDays28">武汉28天周转天数
                        </th>
                        <th data-options="field:'whCount28',width:200,align:'center'" formatter="whCount28">
                            武汉28天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 29}">
                        <th data-options="field:'whSales29',width:100,align:'center'">武汉29天销量</th>
                        <th data-options="field:'whTurnoverDays29',width:100,align:'center'"
                            formatter="whTurnoverDays29">武汉29天周转天数
                        </th>
                        <th data-options="field:'whCount29',width:200,align:'center'" formatter="whCount29">
                            武汉29天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 30}">
                        <th data-options="field:'whSales30',width:100,align:'center'">武汉30天销量</th>
                        <th data-options="field:'whTurnoverDays30',width:100,align:'center'"
                            formatter="whTurnoverDays30">武汉30天周转天数
                        </th>
                        <th data-options="field:'whCount30',width:200,align:'center'" formatter="whCount30">
                            武汉30天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 31}">
                        <th data-options="field:'whSales31',width:100,align:'center'">武汉31天销量</th>
                        <th data-options="field:'whTurnoverDays31',width:100,align:'center'"
                            formatter="whTurnoverDays31">武汉31天周转天数
                        </th>
                        <th data-options="field:'whCount31',width:200,align:'center'" formatter="whCount31">
                            武汉31天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 90}">
                        <th data-options="field:'whSales90',width:100,align:'center'">武汉90天销量</th>
                        <th data-options="field:'whTurnoverDays90',width:100,align:'center'"
                            formatter="whTurnoverDays90">武汉90天周转天数
                        </th>
                        <th data-options="field:'whCount90',width:200,align:'center'" formatter="whCount90">
                            武汉90天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                </c:forEach>
            </c:when>
            <c:when test="${sessionScope.city == 'sy'}">
                <th data-options="field:'syStock',width:100,align:'center'">沈阳库存</th>
                <c:forEach items="${sessionScope.salesList}" var="mt">
                    <c:if test="${mt == 1}">
                        <th data-options="field:'sySales1',width:100,align:'center'">沈阳1天销量</th>
                        <th data-options="field:'syTurnoverDays1',width:100,align:'center'" formatter="syTurnoverDays1">
                            沈阳1天周转天数
                        </th>
                        <th data-options="field:'syCount1',width:200,align:'center'" formatter="syCount1">
                            沈阳1天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 2}">
                        <th data-options="field:'sySales2',width:100,align:'center'">沈阳2天销量</th>
                        <th data-options="field:'syTurnoverDays2',width:100,align:'center'" formatter="syTurnoverDays2">
                            沈阳2天周转天数
                        </th>
                        <th data-options="field:'syCount2',width:200,align:'center'" formatter="syCount2">
                            沈阳2天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 3}">
                        <th data-options="field:'sySales3',width:100,align:'center'">沈阳3天销量</th>
                        <th data-options="field:'syTurnoverDays3',width:100,align:'center'" formatter="syTurnoverDays3">
                            沈阳3天周转天数
                        </th>
                        <th data-options="field:'syCount3',width:200,align:'center'" formatter="syCount3">
                            沈阳3天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 4}">
                        <th data-options="field:'sySales4',width:100,align:'center'">沈阳4天销量</th>
                        <th data-options="field:'syTurnoverDays4',width:100,align:'center'" formatter="syTurnoverDays4">
                            沈阳4天周转天数
                        </th>
                        <th data-options="field:'syCount4',width:200,align:'center'" formatter="syCount4">
                            沈阳4天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 5}">
                        <th data-options="field:'sySales5',width:100,align:'center'">沈阳5天销量</th>
                        <th data-options="field:'syTurnoverDays5',width:100,align:'center'" formatter="syTurnoverDays5">
                            沈阳5天周转天数
                        </th>
                        <th data-options="field:'syCount5',width:200,align:'center'" formatter="syCount5">
                            沈阳5天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 6}">
                        <th data-options="field:'sySales6',width:100,align:'center'">沈阳6天销量</th>
                        <th data-options="field:'syTurnoverDays6',width:100,align:'center'" formatter="syTurnoverDays6">
                            沈阳6天周转天数
                        </th>
                        <th data-options="field:'syCount6',width:200,align:'center'" formatter="syCount6">
                            沈阳6天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 7}">
                        <th data-options="field:'sySales7',width:100,align:'center'">沈阳7天销量</th>
                        <th data-options="field:'syTurnoverDays7',width:100,align:'center'" formatter="syTurnoverDays7">
                            沈阳7天周转天数
                        </th>
                        <th data-options="field:'syCount7',width:200,align:'center'" formatter="syCount7">
                            沈阳7天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 8}">
                        <th data-options="field:'sySales8',width:100,align:'center'">沈阳8天销量</th>
                        <th data-options="field:'syTurnoverDays8',width:100,align:'center'" formatter="syTurnoverDays8">
                            沈阳8天周转天数
                        </th>
                        <th data-options="field:'syCount8',width:200,align:'center'" formatter="syCount8">
                            沈阳8天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 9}">
                        <th data-options="field:'sySales9',width:100,align:'center'">沈阳9天销量</th>
                        <th data-options="field:'syTurnoverDays9',width:100,align:'center'" formatter="syTurnoverDays9">
                            沈阳9天周转天数
                        </th>
                        <th data-options="field:'syCount9',width:200,align:'center'" formatter="syCount9">
                            沈阳9天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 10}">
                        <th data-options="field:'sySales10',width:100,align:'center'">沈阳10天销量</th>
                        <th data-options="field:'syTurnoverDays10',width:100,align:'center'"
                            formatter="syTurnoverDays10">沈阳10天周转天数
                        </th>
                        <th data-options="field:'syCount10',width:200,align:'center'" formatter="syCount10">
                            沈阳10天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 11}">
                        <th data-options="field:'sySales11',width:100,align:'center'">沈阳11天销量</th>
                        <th data-options="field:'syTurnoverDays11',width:100,align:'center'"
                            formatter="syTurnoverDays11">沈阳11天周转天数
                        </th>
                        <th data-options="field:'syCount11',width:200,align:'center'" formatter="syCount11">
                            沈阳11天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 12}">
                        <th data-options="field:'sySales12',width:100,align:'center'">沈阳12天销量</th>
                        <th data-options="field:'syTurnoverDays12',width:100,align:'center'"
                            formatter="syTurnoverDays12">沈阳12天周转天数
                        </th>
                        <th data-options="field:'syCount12',width:200,align:'center'" formatter="syCount12">
                            沈阳12天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 13}">
                        <th data-options="field:'sySales13',width:100,align:'center'">沈阳13天销量</th>
                        <th data-options="field:'syTurnoverDays13',width:100,align:'center'"
                            formatter="syTurnoverDays13">沈阳13天周转天数
                        </th>
                        <th data-options="field:'syCount13',width:200,align:'center'" formatter="syCount13">
                            沈阳13天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 14}">
                        <th data-options="field:'sySales14',width:100,align:'center'">沈阳14天销量</th>
                        <th data-options="field:'syTurnoverDays14',width:100,align:'center'"
                            formatter="syTurnoverDays14">沈阳14天周转天数
                        </th>
                        <th data-options="field:'syCount14',width:200,align:'center'" formatter="syCount14">
                            沈阳14天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 15}">
                        <th data-options="field:'sySales15',width:100,align:'center'">沈阳15天销量</th>
                        <th data-options="field:'syTurnoverDays15',width:100,align:'center'"
                            formatter="syTurnoverDays15">沈阳15天周转天数
                        </th>
                        <th data-options="field:'syCount15',width:200,align:'center'" formatter="syCount15">
                            沈阳15天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 16}">
                        <th data-options="field:'sySales16',width:100,align:'center'">沈阳16天销量</th>
                        <th data-options="field:'syTurnoverDays16',width:100,align:'center'"
                            formatter="syTurnoverDays16">沈阳16天周转天数
                        </th>
                        <th data-options="field:'syCount16',width:200,align:'center'" formatter="syCount16">
                            沈阳16天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 17}">
                        <th data-options="field:'sySales17',width:100,align:'center'">沈阳17天销量</th>
                        <th data-options="field:'syTurnoverDays17',width:100,align:'center'"
                            formatter="syTurnoverDays17">沈阳17天周转天数
                        </th>
                        <th data-options="field:'syCount17',width:200,align:'center'" formatter="syCount17">
                            沈阳17天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 18}">
                        <th data-options="field:'sySales18',width:100,align:'center'">沈阳18天销量</th>
                        <th data-options="field:'syTurnoverDays18',width:100,align:'center'"
                            formatter="syTurnoverDays18">沈阳18天周转天数
                        </th>
                        <th data-options="field:'syCount18',width:200,align:'center'" formatter="syCount18">
                            沈阳18天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 19}">
                        <th data-options="field:'sySales19',width:100,align:'center'">沈阳19天销量</th>
                        <th data-options="field:'syTurnoverDays19',width:100,align:'center'"
                            formatter="syTurnoverDays19">沈阳19天周转天数
                        </th>
                        <th data-options="field:'syCount19',width:200,align:'center'" formatter="syCount19">
                            沈阳19天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 20}">
                        <th data-options="field:'sySales20',width:100,align:'center'">沈阳20天销量</th>
                        <th data-options="field:'syTurnoverDays20',width:100,align:'center'"
                            formatter="syTurnoverDays20">沈阳20天周转天数
                        </th>
                        <th data-options="field:'syCount20',width:200,align:'center'" formatter="syCount20">
                            沈阳20天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 21}">
                        <th data-options="field:'sySales21',width:100,align:'center'">沈阳21天销量</th>
                        <th data-options="field:'syTurnoverDays21',width:100,align:'center'"
                            formatter="syTurnoverDays21">沈阳21天周转天数
                        </th>
                        <th data-options="field:'syCount21',width:200,align:'center'" formatter="syCount21">
                            沈阳21天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 22}">
                        <th data-options="field:'sySales22',width:100,align:'center'">沈阳22天销量</th>
                        <th data-options="field:'syTurnoverDays22',width:100,align:'center'"
                            formatter="syTurnoverDays22">沈阳22天周转天数
                        </th>
                        <th data-options="field:'syCount22',width:200,align:'center'" formatter="syCount22">
                            沈阳22天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 23}">
                        <th data-options="field:'sySales23',width:100,align:'center'">沈阳23天销量</th>
                        <th data-options="field:'syTurnoverDays23',width:100,align:'center'"
                            formatter="syTurnoverDays23">沈阳23天周转天数
                        </th>
                        <th data-options="field:'syCount23',width:200,align:'center'" formatter="syCount23">
                            沈阳23天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 24}">
                        <th data-options="field:'sySales24',width:100,align:'center'">沈阳24天销量</th>
                        <th data-options="field:'syTurnoverDays24',width:100,align:'center'"
                            formatter="syTurnoverDays24">沈阳24天周转天数
                        </th>
                        <th data-options="field:'syCount24',width:200,align:'center'" formatter="syCount24">
                            沈阳24天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 25}">
                        <th data-options="field:'sySales25',width:100,align:'center'">沈阳25天销量</th>
                        <th data-options="field:'syTurnoverDays25',width:100,align:'center'"
                            formatter="syTurnoverDays25">沈阳25天周转天数
                        </th>
                        <th data-options="field:'syCount25',width:200,align:'center'" formatter="syCount25">
                            沈阳25天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 26}">
                        <th data-options="field:'sySales26',width:100,align:'center'">沈阳26天销量</th>
                        <th data-options="field:'syTurnoverDays26',width:100,align:'center'"
                            formatter="syTurnoverDays26">沈阳26天周转天数
                        </th>
                        <th data-options="field:'syCount26',width:200,align:'center'" formatter="syCount26">
                            沈阳26天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 27}">
                        <th data-options="field:'sySales27',width:100,align:'center'">沈阳27天销量</th>
                        <th data-options="field:'syTurnoverDays27',width:100,align:'center'"
                            formatter="syTurnoverDays27">沈阳27天周转天数
                        </th>
                        <th data-options="field:'syCount27',width:200,align:'center'" formatter="syCount27">
                            沈阳27天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 28}">
                        <th data-options="field:'sySales28',width:100,align:'center'">沈阳28天销量</th>
                        <th data-options="field:'syTurnoverDays28',width:100,align:'center'"
                            formatter="syTurnoverDays28">沈阳28天周转天数
                        </th>
                        <th data-options="field:'syCount28',width:200,align:'center'" formatter="syCount28">
                            沈阳28天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 29}">
                        <th data-options="field:'sySales29',width:100,align:'center'">沈阳29天销量</th>
                        <th data-options="field:'syTurnoverDays29',width:100,align:'center'"
                            formatter="syTurnoverDays29">沈阳29天周转天数
                        </th>
                        <th data-options="field:'syCount29',width:200,align:'center'" formatter="syCount29">
                            沈阳29天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 30}">
                        <th data-options="field:'sySales30',width:100,align:'center'">沈阳30天销量</th>
                        <th data-options="field:'syTurnoverDays30',width:100,align:'center'"
                            formatter="syTurnoverDays30">沈阳30天周转天数
                        </th>
                        <th data-options="field:'syCount30',width:200,align:'center'" formatter="syCount30">
                            沈阳30天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 31}">
                        <th data-options="field:'sySales31',width:100,align:'center'">沈阳31天销量</th>
                        <th data-options="field:'syTurnoverDays31',width:100,align:'center'"
                            formatter="syTurnoverDays31">沈阳31天周转天数
                        </th>
                        <th data-options="field:'syCount31',width:200,align:'center'" formatter="syCount31">
                            沈阳31天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 90}">
                        <th data-options="field:'sySales90',width:100,align:'center'">沈阳90天销量</th>
                        <th data-options="field:'syTurnoverDays90',width:100,align:'center'"
                            formatter="syTurnoverDays90">沈阳90天周转天数
                        </th>
                        <th data-options="field:'syCount90',width:200,align:'center'" formatter="syCount90">
                            沈阳90天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                </c:forEach>
            </c:when>
            <c:when test="${sessionScope.city == 'xa'}">
                <th data-options="field:'xaStock',width:100,align:'center'">西安库存</th>
                <c:forEach items="${sessionScope.salesList}" var="mt">
                    <c:if test="${mt == 1}">
                        <th data-options="field:'xaSales1',width:100,align:'center'">西安1天销量</th>
                        <th data-options="field:'xaTurnoverDays1',width:100,align:'center'" formatter="xaTurnoverDays1">
                            西安1天周转天数
                        </th>
                        <th data-options="field:'xaCount1',width:200,align:'center'" formatter="xaCount1">
                            西安1天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 2}">
                        <th data-options="field:'xaSales2',width:100,align:'center'">西安2天销量</th>
                        <th data-options="field:'xaTurnoverDays2',width:100,align:'center'" formatter="xaTurnoverDays2">
                            西安2天周转天数
                        </th>
                        <th data-options="field:'xaCount2',width:200,align:'center'" formatter="xaCount2">
                            西安2天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 3}">
                        <th data-options="field:'xaSales3',width:100,align:'center'">西安3天销量</th>
                        <th data-options="field:'xaTurnoverDays3',width:100,align:'center'" formatter="xaTurnoverDays3">
                            西安3天周转天数
                        </th>
                        <th data-options="field:'xaCount3',width:200,align:'center'" formatter="xaCount3">
                            西安3天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 4}">
                        <th data-options="field:'xaSales4',width:100,align:'center'">西安4天销量</th>
                        <th data-options="field:'xaTurnoverDays4',width:100,align:'center'" formatter="xaTurnoverDays4">
                            西安4天周转天数
                        </th>
                        <th data-options="field:'xaCount4',width:200,align:'center'" formatter="xaCount4">
                            西安4天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 5}">
                        <th data-options="field:'xaSales5',width:100,align:'center'">西安5天销量</th>
                        <th data-options="field:'xaTurnoverDays5',width:100,align:'center'" formatter="xaTurnoverDays5">
                            西安5天周转天数
                        </th>
                        <th data-options="field:'xaCount5',width:200,align:'center'" formatter="xaCount5">
                            西安5天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 6}">
                        <th data-options="field:'xaSales6',width:100,align:'center'">西安6天销量</th>
                        <th data-options="field:'xaTurnoverDays6',width:100,align:'center'" formatter="xaTurnoverDays6">
                            西安6天周转天数
                        </th>
                        <th data-options="field:'xaCount6',width:200,align:'center'" formatter="xaCount6">
                            西安6天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 7}">
                        <th data-options="field:'xaSales7',width:100,align:'center'">西安7天销量</th>
                        <th data-options="field:'xaTurnoverDays7',width:100,align:'center'" formatter="xaTurnoverDays7">
                            西安7天周转天数
                        </th>
                        <th data-options="field:'xaCount7',width:200,align:'center'" formatter="xaCount7">
                            西安7天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 8}">
                        <th data-options="field:'xaSales8',width:100,align:'center'">西安8天销量</th>
                        <th data-options="field:'xaTurnoverDays8',width:100,align:'center'" formatter="xaTurnoverDays8">
                            西安8天周转天数
                        </th>
                        <th data-options="field:'xaCount8',width:200,align:'center'" formatter="xaCount8">
                            西安8天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 9}">
                        <th data-options="field:'xaSales9',width:100,align:'center'">西安9天销量</th>
                        <th data-options="field:'xaTurnoverDays9',width:100,align:'center'" formatter="xaTurnoverDays9">
                            西安9天周转天数
                        </th>
                        <th data-options="field:'xaCount9',width:200,align:'center'" formatter="xaCount9">
                            西安9天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 10}">
                        <th data-options="field:'xaSales10',width:100,align:'center'">西安10天销量</th>
                        <th data-options="field:'xaTurnoverDays10',width:100,align:'center'"
                            formatter="xaTurnoverDays10">西安10天周转天数
                        </th>
                        <th data-options="field:'xaCount10',width:200,align:'center'" formatter="xaCount10">
                            西安10天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 11}">
                        <th data-options="field:'xaSales11',width:100,align:'center'">西安11天销量</th>
                        <th data-options="field:'xaTurnoverDays11',width:100,align:'center'"
                            formatter="xaTurnoverDays11">西安11天周转天数
                        </th>
                        <th data-options="field:'xaCount11',width:200,align:'center'" formatter="xaCount11">
                            西安11天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 12}">
                        <th data-options="field:'xaSales12',width:100,align:'center'">西安12天销量</th>
                        <th data-options="field:'xaTurnoverDays12',width:100,align:'center'"
                            formatter="xaTurnoverDays12">西安12天周转天数
                        </th>
                        <th data-options="field:'xaCount12',width:200,align:'center'" formatter="xaCount12">
                            西安12天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 13}">
                        <th data-options="field:'xaSales13',width:100,align:'center'">西安13天销量</th>
                        <th data-options="field:'xaTurnoverDays13',width:100,align:'center'"
                            formatter="xaTurnoverDays13">西安13天周转天数
                        </th>
                        <th data-options="field:'xaCount13',width:200,align:'center'" formatter="xaCount13">
                            西安13天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 14}">
                        <th data-options="field:'xaSales14',width:100,align:'center'">西安14天销量</th>
                        <th data-options="field:'xaTurnoverDays14',width:100,align:'center'"
                            formatter="xaTurnoverDays14">西安14天周转天数
                        </th>
                        <th data-options="field:'xaCount14',width:200,align:'center'" formatter="xaCount14">
                            西安14天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 15}">
                        <th data-options="field:'xaSales15',width:100,align:'center'">西安15天销量</th>
                        <th data-options="field:'xaTurnoverDays15',width:100,align:'center'"
                            formatter="xaTurnoverDays15">西安15天周转天数
                        </th>
                        <th data-options="field:'xaCount15',width:200,align:'center'" formatter="xaCount15">
                            西安15天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 16}">
                        <th data-options="field:'xaSales16',width:100,align:'center'">西安16天销量</th>
                        <th data-options="field:'xaTurnoverDays16',width:100,align:'center'"
                            formatter="xaTurnoverDays16">西安16天周转天数
                        </th>
                        <th data-options="field:'xaCount16',width:200,align:'center'" formatter="xaCount16">
                            西安16天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 17}">
                        <th data-options="field:'xaSales17',width:100,align:'center'">西安17天销量</th>
                        <th data-options="field:'xaTurnoverDays17',width:100,align:'center'"
                            formatter="xaTurnoverDays17">西安17天周转天数
                        </th>
                        <th data-options="field:'xaCount17',width:200,align:'center'" formatter="xaCount17">
                            西安17天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 18}">
                        <th data-options="field:'xaSales18',width:100,align:'center'">西安18天销量</th>
                        <th data-options="field:'xaTurnoverDays18',width:100,align:'center'"
                            formatter="xaTurnoverDays18">西安18天周转天数
                        </th>
                        <th data-options="field:'xaCount18',width:200,align:'center'" formatter="xaCount18">
                            西安18天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 19}">
                        <th data-options="field:'xaSales19',width:100,align:'center'">西安19天销量</th>
                        <th data-options="field:'xaTurnoverDays19',width:100,align:'center'"
                            formatter="xaTurnoverDays19">西安19天周转天数
                        </th>
                        <th data-options="field:'xaCount19',width:200,align:'center'" formatter="xaCount19">
                            西安19天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 20}">
                        <th data-options="field:'xaSales20',width:100,align:'center'">西安20天销量</th>
                        <th data-options="field:'xaTurnoverDays20',width:100,align:'center'"
                            formatter="xaTurnoverDays20">西安20天周转天数
                        </th>
                        <th data-options="field:'xaCount20',width:200,align:'center'" formatter="xaCount20">
                            西安20天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 21}">
                        <th data-options="field:'xaSales21',width:100,align:'center'">西安21天销量</th>
                        <th data-options="field:'xaTurnoverDays21',width:100,align:'center'"
                            formatter="xaTurnoverDays21">西安21天周转天数
                        </th>
                        <th data-options="field:'xaCount21',width:200,align:'center'" formatter="xaCount21">
                            西安21天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 22}">
                        <th data-options="field:'xaSales22',width:100,align:'center'">西安22天销量</th>
                        <th data-options="field:'xaTurnoverDays22',width:100,align:'center'"
                            formatter="xaTurnoverDays22">西安22天周转天数
                        </th>
                        <th data-options="field:'xaCount22',width:200,align:'center'" formatter="xaCount22">
                            西安22天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 23}">
                        <th data-options="field:'xaSales23',width:100,align:'center'">西安23天销量</th>
                        <th data-options="field:'xaTurnoverDays23',width:100,align:'center'"
                            formatter="xaTurnoverDays23">西安23天周转天数
                        </th>
                        <th data-options="field:'xaCount23',width:200,align:'center'" formatter="xaCount23">
                            西安23天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 24}">
                        <th data-options="field:'xaSales24',width:100,align:'center'">西安24天销量</th>
                        <th data-options="field:'xaTurnoverDays24',width:100,align:'center'"
                            formatter="xaTurnoverDays24">西安24天周转天数
                        </th>
                        <th data-options="field:'xaCount24',width:200,align:'center'" formatter="xaCount24">
                            西安24天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 25}">
                        <th data-options="field:'xaSales25',width:100,align:'center'">西安25天销量</th>
                        <th data-options="field:'xaTurnoverDays25',width:100,align:'center'"
                            formatter="xaTurnoverDays25">西安25天周转天数
                        </th>
                        <th data-options="field:'xaCount25',width:200,align:'center'" formatter="xaCount25">
                            西安25天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 26}">
                        <th data-options="field:'xaSales26',width:100,align:'center'">西安26天销量</th>
                        <th data-options="field:'xaTurnoverDays26',width:100,align:'center'"
                            formatter="xaTurnoverDays26">西安26天周转天数
                        </th>
                        <th data-options="field:'xaCount26',width:200,align:'center'" formatter="xaCount26">
                            西安26天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 27}">
                        <th data-options="field:'xaSales27',width:100,align:'center'">西安27天销量</th>
                        <th data-options="field:'xaTurnoverDays27',width:100,align:'center'"
                            formatter="xaTurnoverDays27">西安27天周转天数
                        </th>
                        <th data-options="field:'xaCount27',width:200,align:'center'" formatter="xaCount27">
                            西安27天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 28}">
                        <th data-options="field:'xaSales28',width:100,align:'center'">西安28天销量</th>
                        <th data-options="field:'xaTurnoverDays28',width:100,align:'center'"
                            formatter="xaTurnoverDays28">西安28天周转天数
                        </th>
                        <th data-options="field:'xaCount28',width:200,align:'center'" formatter="xaCount28">
                            西安28天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 29}">
                        <th data-options="field:'xaSales29',width:100,align:'center'">西安29天销量</th>
                        <th data-options="field:'xaTurnoverDays29',width:100,align:'center'"
                            formatter="xaTurnoverDays29">西安29天周转天数
                        </th>
                        <th data-options="field:'xaCount29',width:200,align:'center'" formatter="xaCount29">
                            西安29天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 30}">
                        <th data-options="field:'xaSales30',width:100,align:'center'">西安30天销量</th>
                        <th data-options="field:'xaTurnoverDays30',width:100,align:'center'"
                            formatter="xaTurnoverDays30">西安30天周转天数
                        </th>
                        <th data-options="field:'xaCount30',width:200,align:'center'" formatter="xaCount30">
                            西安30天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 31}">
                        <th data-options="field:'xaSales31',width:100,align:'center'">西安31天销量</th>
                        <th data-options="field:'xaTurnoverDays31',width:100,align:'center'"
                            formatter="xaTurnoverDays31">西安31天周转天数
                        </th>
                        <th data-options="field:'xaCount31',width:200,align:'center'" formatter="xaCount31">
                            西安31天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 90}">
                        <th data-options="field:'xaSales90',width:100,align:'center'">西安90天销量</th>
                        <th data-options="field:'xaTurnoverDays90',width:100,align:'center'"
                            formatter="xaTurnoverDays90">西安90天周转天数
                        </th>
                        <th data-options="field:'xaCount90',width:200,align:'center'" formatter="xaCount90">
                            西安90天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                </c:forEach>
            </c:when>
            <c:when test="${sessionScope.city == 'ga'}">
                <th data-options="field:'gaStock',width:100,align:'center'">固安库存</th>
                <c:forEach items="${sessionScope.salesList}" var="mt">
                    <c:if test="${mt == 1}">
                        <th data-options="field:'gaSales1',width:100,align:'center'">固安1天销量</th>
                        <th data-options="field:'gaTurnoverDays1',width:100,align:'center'" formatter="gaTurnoverDays1">
                            固安1天周转天数
                        </th>
                        <th data-options="field:'gaCount1',width:200,align:'center'" formatter="gaCount1">
                            固安1天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 2}">
                        <th data-options="field:'gaSales2',width:100,align:'center'">固安2天销量</th>
                        <th data-options="field:'gaTurnoverDays2',width:100,align:'center'" formatter="gaTurnoverDays2">
                            固安2天周转天数
                        </th>
                        <th data-options="field:'gaCount2',width:200,align:'center'" formatter="gaCount2">
                            固安2天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 3}">
                        <th data-options="field:'gaSales3',width:100,align:'center'">固安3天销量</th>
                        <th data-options="field:'gaTurnoverDays3',width:100,align:'center'" formatter="gaTurnoverDays3">
                            固安3天周转天数
                        </th>
                        <th data-options="field:'gaCount3',width:200,align:'center'" formatter="gaCount3">
                            固安3天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 4}">
                        <th data-options="field:'gaSales4',width:100,align:'center'">固安4天销量</th>
                        <th data-options="field:'gaTurnoverDays4',width:100,align:'center'" formatter="gaTurnoverDays4">
                            固安4天周转天数
                        </th>
                        <th data-options="field:'gaCount4',width:200,align:'center'" formatter="gaCount4">
                            固安4天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 5}">
                        <th data-options="field:'gaSales5',width:100,align:'center'">固安5天销量</th>
                        <th data-options="field:'gaTurnoverDays5',width:100,align:'center'" formatter="gaTurnoverDays5">
                            固安5天周转天数
                        </th>
                        <th data-options="field:'gaCount5',width:200,align:'center'" formatter="gaCount5">
                            固安5天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 6}">
                        <th data-options="field:'gaSales6',width:100,align:'center'">固安6天销量</th>
                        <th data-options="field:'gaTurnoverDays6',width:100,align:'center'" formatter="gaTurnoverDays6">
                            固安6天周转天数
                        </th>
                        <th data-options="field:'gaCount6',width:200,align:'center'" formatter="gaCount6">
                            固安6天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 7}">
                        <th data-options="field:'gaSales7',width:100,align:'center'">固安7天销量</th>
                        <th data-options="field:'gaTurnoverDays7',width:100,align:'center'" formatter="gaTurnoverDays7">
                            固安7天周转天数
                        </th>
                        <th data-options="field:'gaCount7',width:200,align:'center'" formatter="gaCount7">
                            固安7天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 8}">
                        <th data-options="field:'gaSales8',width:100,align:'center'">固安8天销量</th>
                        <th data-options="field:'gaTurnoverDays8',width:100,align:'center'" formatter="gaTurnoverDays8">
                            固安8天周转天数
                        </th>
                        <th data-options="field:'gaCount8',width:200,align:'center'" formatter="gaCount8">
                            固安8天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 9}">
                        <th data-options="field:'gaSales9',width:100,align:'center'">固安9天销量</th>
                        <th data-options="field:'gaTurnoverDays9',width:100,align:'center'" formatter="gaTurnoverDays9">
                            固安9天周转天数
                        </th>
                        <th data-options="field:'gaCount9',width:200,align:'center'" formatter="gaCount9">
                            固安9天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 10}">
                        <th data-options="field:'gaSales10',width:100,align:'center'">固安10天销量</th>
                        <th data-options="field:'gaTurnoverDays10',width:100,align:'center'"
                            formatter="gaTurnoverDays10">固安10天周转天数
                        </th>
                        <th data-options="field:'gaCount10',width:200,align:'center'" formatter="gaCount10">
                            固安10天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 11}">
                        <th data-options="field:'gaSales11',width:100,align:'center'">固安11天销量</th>
                        <th data-options="field:'gaTurnoverDays11',width:100,align:'center'"
                            formatter="gaTurnoverDays11">固安11天周转天数
                        </th>
                        <th data-options="field:'gaCount11',width:200,align:'center'" formatter="gaCount11">
                            固安11天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 12}">
                        <th data-options="field:'gaSales12',width:100,align:'center'">固安12天销量</th>
                        <th data-options="field:'gaTurnoverDays12',width:100,align:'center'"
                            formatter="gaTurnoverDays12">固安12天周转天数
                        </th>
                        <th data-options="field:'gaCount12',width:200,align:'center'" formatter="gaCount12">
                            固安12天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 13}">
                        <th data-options="field:'gaSales13',width:100,align:'center'">固安13天销量</th>
                        <th data-options="field:'gaTurnoverDays13',width:100,align:'center'"
                            formatter="gaTurnoverDays13">固安13天周转天数
                        </th>
                        <th data-options="field:'gaCount13',width:200,align:'center'" formatter="gaCount13">
                            固安13天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 14}">
                        <th data-options="field:'gaSales14',width:100,align:'center'">固安14天销量</th>
                        <th data-options="field:'gaTurnoverDays14',width:100,align:'center'"
                            formatter="gaTurnoverDays14">固安14天周转天数
                        </th>
                        <th data-options="field:'gaCount14',width:200,align:'center'" formatter="gaCount14">
                            固安14天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 15}">
                        <th data-options="field:'gaSales15',width:100,align:'center'">固安15天销量</th>
                        <th data-options="field:'gaTurnoverDays15',width:100,align:'center'"
                            formatter="gaTurnoverDays15">固安15天周转天数
                        </th>
                        <th data-options="field:'gaCount15',width:200,align:'center'" formatter="gaCount15">
                            固安15天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 16}">
                        <th data-options="field:'gaSales16',width:100,align:'center'">固安16天销量</th>
                        <th data-options="field:'gaTurnoverDays16',width:100,align:'center'"
                            formatter="gaTurnoverDays16">固安16天周转天数
                        </th>
                        <th data-options="field:'gaCount16',width:200,align:'center'" formatter="gaCount16">
                            固安16天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 17}">
                        <th data-options="field:'gaSales17',width:100,align:'center'">固安17天销量</th>
                        <th data-options="field:'gaTurnoverDays17',width:100,align:'center'"
                            formatter="gaTurnoverDays17">固安17天周转天数
                        </th>
                        <th data-options="field:'gaCount17',width:200,align:'center'" formatter="gaCount17">
                            固安17天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 18}">
                        <th data-options="field:'gaSales18',width:100,align:'center'">固安18天销量</th>
                        <th data-options="field:'gaTurnoverDays18',width:100,align:'center'"
                            formatter="gaTurnoverDays18">固安18天周转天数
                        </th>
                        <th data-options="field:'gaCount18',width:200,align:'center'" formatter="gaCount18">
                            固安18天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 19}">
                        <th data-options="field:'gaSales19',width:100,align:'center'">固安19天销量</th>
                        <th data-options="field:'gaTurnoverDays19',width:100,align:'center'"
                            formatter="gaTurnoverDays19">固安19天周转天数
                        </th>
                        <th data-options="field:'gaCount19',width:200,align:'center'" formatter="gaCount19">
                            固安19天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 20}">
                        <th data-options="field:'gaSales20',width:100,align:'center'">固安20天销量</th>
                        <th data-options="field:'gaTurnoverDays20',width:100,align:'center'"
                            formatter="gaTurnoverDays20">固安20天周转天数
                        </th>
                        <th data-options="field:'gaCount20',width:200,align:'center'" formatter="gaCount20">
                            固安20天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 21}">
                        <th data-options="field:'gaSales21',width:100,align:'center'">固安21天销量</th>
                        <th data-options="field:'gaTurnoverDays21',width:100,align:'center'"
                            formatter="gaTurnoverDays21">固安21天周转天数
                        </th>
                        <th data-options="field:'gaCount21',width:200,align:'center'" formatter="gaCount21">
                            固安21天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 22}">
                        <th data-options="field:'gaSales22',width:100,align:'center'">固安22天销量</th>
                        <th data-options="field:'gaTurnoverDays22',width:100,align:'center'"
                            formatter="gaTurnoverDays22">固安22天周转天数
                        </th>
                        <th data-options="field:'gaCount22',width:200,align:'center'" formatter="gaCount22">
                            固安22天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 23}">
                        <th data-options="field:'gaSales23',width:100,align:'center'">固安23天销量</th>
                        <th data-options="field:'gaTurnoverDays23',width:100,align:'center'"
                            formatter="gaTurnoverDays23">固安23天周转天数
                        </th>
                        <th data-options="field:'gaCount23',width:200,align:'center'" formatter="gaCount23">
                            固安23天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 24}">
                        <th data-options="field:'gaSales24',width:100,align:'center'">固安24天销量</th>
                        <th data-options="field:'gaTurnoverDays24',width:100,align:'center'"
                            formatter="gaTurnoverDays24">固安24天周转天数
                        </th>
                        <th data-options="field:'gaCount24',width:200,align:'center'" formatter="gaCount24">
                            固安24天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 25}">
                        <th data-options="field:'gaSales25',width:100,align:'center'">固安25天销量</th>
                        <th data-options="field:'gaTurnoverDays25',width:100,align:'center'"
                            formatter="gaTurnoverDays25">固安25天周转天数
                        </th>
                        <th data-options="field:'gaCount25',width:200,align:'center'" formatter="gaCount25">
                            固安25天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 26}">
                        <th data-options="field:'gaSales26',width:100,align:'center'">固安26天销量</th>
                        <th data-options="field:'gaTurnoverDays26',width:100,align:'center'"
                            formatter="gaTurnoverDays26">固安26天周转天数
                        </th>
                        <th data-options="field:'gaCount26',width:200,align:'center'" formatter="gaCount26">
                            固安26天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 27}">
                        <th data-options="field:'gaSales27',width:100,align:'center'">固安27天销量</th>
                        <th data-options="field:'gaTurnoverDays27',width:100,align:'center'"
                            formatter="gaTurnoverDays27">固安27天周转天数
                        </th>
                        <th data-options="field:'gaCount27',width:200,align:'center'" formatter="gaCount27">
                            固安27天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 28}">
                        <th data-options="field:'gaSales28',width:100,align:'center'">固安28天销量</th>
                        <th data-options="field:'gaTurnoverDays28',width:100,align:'center'"
                            formatter="gaTurnoverDays28">固安28天周转天数
                        </th>
                        <th data-options="field:'gaCount28',width:200,align:'center'" formatter="gaCount28">
                            固安28天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 29}">
                        <th data-options="field:'gaSales29',width:100,align:'center'">固安29天销量</th>
                        <th data-options="field:'gaTurnoverDays29',width:100,align:'center'"
                            formatter="gaTurnoverDays29">固安29天周转天数
                        </th>
                        <th data-options="field:'gaCount29',width:200,align:'center'" formatter="gaCount29">
                            固安29天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 30}">
                        <th data-options="field:'gaSales30',width:100,align:'center'">固安30天销量</th>
                        <th data-options="field:'gaTurnoverDays30',width:100,align:'center'"
                            formatter="gaTurnoverDays30">固安30天周转天数
                        </th>
                        <th data-options="field:'gaCount30',width:200,align:'center'" formatter="gaCount30">
                            固安30天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 31}">
                        <th data-options="field:'gaSales31',width:100,align:'center'">固安31天销量</th>
                        <th data-options="field:'gaTurnoverDays31',width:100,align:'center'"
                            formatter="gaTurnoverDays31">固安31天周转天数
                        </th>
                        <th data-options="field:'gaCount31',width:200,align:'center'" formatter="gaCount31">
                            固安31天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 90}">
                        <th data-options="field:'gaSales90',width:100,align:'center'">固安90天销量</th>
                        <th data-options="field:'gaTurnoverDays90',width:100,align:'center'"
                            formatter="gaTurnoverDays90">固安90天周转天数
                        </th>
                        <th data-options="field:'gaCount90',width:200,align:'center'" formatter="gaCount90">
                            固安90天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <th data-options="field:'bjStock',width:100,align:'center'">北京库存</th>
                <c:forEach items="${sessionScope.salesList}" var="mt">
                    <c:if test="${mt == 1}">
                        <th data-options="field:'bjSales1',width:100,align:'center'">北京1天销量</th>
                        <th data-options="field:'bjTurnoverDays1',width:100,align:'center'" formatter="bjTurnoverDays1">
                            北京1天周转天数
                        </th>
                        <th data-options="field:'bjCount1',width:200,align:'center'" formatter="bjCount1">
                            北京1天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 2}">
                        <th data-options="field:'bjSales2',width:100,align:'center'">北京2天销量</th>
                        <th data-options="field:'bjTurnoverDays2',width:100,align:'center'" formatter="bjTurnoverDays2">
                            北京2天周转天数
                        </th>
                        <th data-options="field:'bjCount2',width:200,align:'center'" formatter="bjCount2">
                            北京2天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 3}">
                        <th data-options="field:'bjSales3',width:100,align:'center'">北京3天销量</th>
                        <th data-options="field:'bjTurnoverDays3',width:100,align:'center'" formatter="bjTurnoverDays3">
                            北京3天周转天数
                        </th>
                        <th data-options="field:'bjCount3',width:200,align:'center'" formatter="bjCount3">
                            北京3天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 4}">
                        <th data-options="field:'bjSales4',width:100,align:'center'">北京4天销量</th>
                        <th data-options="field:'bjTurnoverDays4',width:100,align:'center'" formatter="bjTurnoverDays4">
                            北京4天周转天数
                        </th>
                        <th data-options="field:'bjCount4',width:200,align:'center'" formatter="bjCount4">
                            北京4天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 5}">
                        <th data-options="field:'bjSales5',width:100,align:'center'">北京5天销量</th>
                        <th data-options="field:'bjTurnoverDays5',width:100,align:'center'" formatter="bjTurnoverDays5">
                            北京5天周转天数
                        </th>
                        <th data-options="field:'bjCount5',width:200,align:'center'" formatter="bjCount5">
                            北京5天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 6}">
                        <th data-options="field:'bjSales6',width:100,align:'center'">北京6天销量</th>
                        <th data-options="field:'bjTurnoverDays6',width:100,align:'center'" formatter="bjTurnoverDays6">
                            北京6天周转天数
                        </th>
                        <th data-options="field:'bjCount6',width:200,align:'center'" formatter="bjCount6">
                            北京6天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 7}">
                        <th data-options="field:'bjSales7',width:100,align:'center'">北京7天销量</th>
                        <th data-options="field:'bjTurnoverDays7',width:100,align:'center'" formatter="bjTurnoverDays7">
                            北京7天周转天数
                        </th>
                        <th data-options="field:'bjCount7',width:200,align:'center'" formatter="bjCount7">
                            北京7天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 8}">
                        <th data-options="field:'bjSales8',width:100,align:'center'">北京8天销量</th>
                        <th data-options="field:'bjTurnoverDays8',width:100,align:'center'" formatter="bjTurnoverDays8">
                            北京8天周转天数
                        </th>
                        <th data-options="field:'bjCount8',width:200,align:'center'" formatter="bjCount8">
                            北京8天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 9}">
                        <th data-options="field:'bjSales9',width:100,align:'center'">北京9天销量</th>
                        <th data-options="field:'bjTurnoverDays9',width:100,align:'center'" formatter="bjTurnoverDays9">
                            北京9天周转天数
                        </th>
                        <th data-options="field:'bjCount9',width:200,align:'center'" formatter="bjCount9">
                            北京9天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 10}">
                        <th data-options="field:'bjSales10',width:100,align:'center'">北京10天销量</th>
                        <th data-options="field:'bjTurnoverDays10',width:100,align:'center'"
                            formatter="bjTurnoverDays10">北京10天周转天数
                        </th>
                        <th data-options="field:'bjCount10',width:200,align:'center'" formatter="bjCount10">
                            北京10天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 11}">
                        <th data-options="field:'bjSales11',width:100,align:'center'">北京11天销量</th>
                        <th data-options="field:'bjTurnoverDays11',width:100,align:'center'"
                            formatter="bjTurnoverDays11">北京11天周转天数
                        </th>
                        <th data-options="field:'bjCount11',width:200,align:'center'" formatter="bjCount11">
                            北京11天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 12}">
                        <th data-options="field:'bjSales12',width:100,align:'center'">北京12天销量</th>
                        <th data-options="field:'bjTurnoverDays12',width:100,align:'center'"
                            formatter="bjTurnoverDays12">北京12天周转天数
                        </th>
                        <th data-options="field:'bjCount12',width:200,align:'center'" formatter="bjCount12">
                            北京12天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 13}">
                        <th data-options="field:'bjSales13',width:100,align:'center'">北京13天销量</th>
                        <th data-options="field:'bjTurnoverDays13',width:100,align:'center'"
                            formatter="bjTurnoverDays13">北京13天周转天数
                        </th>
                        <th data-options="field:'bjCount13',width:200,align:'center'" formatter="bjCount13">
                            北京13天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 14}">
                        <th data-options="field:'bjSales14',width:100,align:'center'">北京14天销量</th>
                        <th data-options="field:'bjTurnoverDays14',width:100,align:'center'"
                            formatter="bjTurnoverDays14">北京14天周转天数
                        </th>
                        <th data-options="field:'bjCount14',width:200,align:'center'" formatter="bjCount14">
                            北京14天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 15}">
                        <th data-options="field:'bjSales15',width:100,align:'center'">北京15天销量</th>
                        <th data-options="field:'bjTurnoverDays15',width:100,align:'center'"
                            formatter="bjTurnoverDays15">北京15天周转天数
                        </th>
                        <th data-options="field:'bjCount15',width:200,align:'center'" formatter="bjCount15">
                            北京15天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 16}">
                        <th data-options="field:'bjSales16',width:100,align:'center'">北京16天销量</th>
                        <th data-options="field:'bjTurnoverDays16',width:100,align:'center'"
                            formatter="bjTurnoverDays16">北京16天周转天数
                        </th>
                        <th data-options="field:'bjCount16',width:200,align:'center'" formatter="bjCount16">
                            北京16天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 17}">
                        <th data-options="field:'bjSales17',width:100,align:'center'">北京17天销量</th>
                        <th data-options="field:'bjTurnoverDays17',width:100,align:'center'"
                            formatter="bjTurnoverDays17">北京17天周转天数
                        </th>
                        <th data-options="field:'bjCount17',width:200,align:'center'" formatter="bjCount17">
                            北京17天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 18}">
                        <th data-options="field:'bjSales18',width:100,align:'center'">北京18天销量</th>
                        <th data-options="field:'bjTurnoverDays18',width:100,align:'center'"
                            formatter="bjTurnoverDays18">北京18天周转天数
                        </th>
                        <th data-options="field:'bjCount18',width:200,align:'center'" formatter="bjCount18">
                            北京18天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 19}">
                        <th data-options="field:'bjSales19',width:100,align:'center'">北京19天销量</th>
                        <th data-options="field:'bjTurnoverDays19',width:100,align:'center'"
                            formatter="bjTurnoverDays19">北京19天周转天数
                        </th>
                        <th data-options="field:'bjCount19',width:200,align:'center'" formatter="bjCount19">
                            北京19天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 20}">
                        <th data-options="field:'bjSales20',width:100,align:'center'">北京20天销量</th>
                        <th data-options="field:'bjTurnoverDays20',width:100,align:'center'"
                            formatter="bjTurnoverDays20">北京20天周转天数
                        </th>
                        <th data-options="field:'bjCount20',width:200,align:'center'" formatter="bjCount20">
                            北京20天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 21}">
                        <th data-options="field:'bjSales21',width:100,align:'center'">北京21天销量</th>
                        <th data-options="field:'bjTurnoverDays21',width:100,align:'center'"
                            formatter="bjTurnoverDays21">北京21天周转天数
                        </th>
                        <th data-options="field:'bjCount21',width:200,align:'center'" formatter="bjCount21">
                            北京21天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 22}">
                        <th data-options="field:'bjSales22',width:100,align:'center'">北京22天销量</th>
                        <th data-options="field:'bjTurnoverDays22',width:100,align:'center'"
                            formatter="bjTurnoverDays22">北京22天周转天数
                        </th>
                        <th data-options="field:'bjCount22',width:200,align:'center'" formatter="bjCount22">
                            北京22天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 23}">
                        <th data-options="field:'bjSales23',width:100,align:'center'">北京23天销量</th>
                        <th data-options="field:'bjTurnoverDays23',width:100,align:'center'"
                            formatter="bjTurnoverDays23">北京23天周转天数
                        </th>
                        <th data-options="field:'bjCount23',width:200,align:'center'" formatter="bjCount23">
                            北京23天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 24}">
                        <th data-options="field:'bjSales24',width:100,align:'center'">北京24天销量</th>
                        <th data-options="field:'bjTurnoverDays24',width:100,align:'center'"
                            formatter="bjTurnoverDays24">北京24天周转天数
                        </th>
                        <th data-options="field:'bjCount24',width:200,align:'center'" formatter="bjCount24">
                            北京24天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 25}">
                        <th data-options="field:'bjSales25',width:100,align:'center'">北京25天销量</th>
                        <th data-options="field:'bjTurnoverDays25',width:100,align:'center'"
                            formatter="bjTurnoverDays25">北京25天周转天数
                        </th>
                        <th data-options="field:'bjCount25',width:200,align:'center'" formatter="bjCount25">
                            北京25天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 26}">
                        <th data-options="field:'bjSales26',width:100,align:'center'">北京26天销量</th>
                        <th data-options="field:'bjTurnoverDays26',width:100,align:'center'"
                            formatter="bjTurnoverDays26">北京26天周转天数
                        </th>
                        <th data-options="field:'bjCount26',width:200,align:'center'" formatter="bjCount26">
                            北京26天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 27}">
                        <th data-options="field:'bjSales27',width:100,align:'center'">北京27天销量</th>
                        <th data-options="field:'bjTurnoverDays27',width:100,align:'center'"
                            formatter="bjTurnoverDays27">北京27天周转天数
                        </th>
                        <th data-options="field:'bjCount27',width:200,align:'center'" formatter="bjCount27">
                            北京27天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 28}">
                        <th data-options="field:'bjSales28',width:100,align:'center'">北京28天销量</th>
                        <th data-options="field:'bjTurnoverDays28',width:100,align:'center'"
                            formatter="bjTurnoverDays28">北京28天周转天数
                        </th>
                        <th data-options="field:'bjCount28',width:200,align:'center'" formatter="bjCount28">
                            北京28天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 29}">
                        <th data-options="field:'bjSales29',width:100,align:'center'">北京29天销量</th>
                        <th data-options="field:'bjTurnoverDays29',width:100,align:'center'"
                            formatter="bjTurnoverDays29">北京29天周转天数
                        </th>
                        <th data-options="field:'bjCount29',width:200,align:'center'" formatter="bjCount29">
                            北京29天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 30}">
                        <th data-options="field:'bjSales30',width:100,align:'center'">北京30天销量</th>
                        <th data-options="field:'bjTurnoverDays30',width:100,align:'center'"
                            formatter="bjTurnoverDays30">北京30天周转天数
                        </th>
                        <th data-options="field:'bjCount30',width:200,align:'center'" formatter="bjCount30">
                            北京30天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 31}">
                        <th data-options="field:'bjSales31',width:100,align:'center'">北京31天销量</th>
                        <th data-options="field:'bjTurnoverDays31',width:100,align:'center'"
                            formatter="bjTurnoverDays31">北京31天周转天数
                        </th>
                        <th data-options="field:'bjCount31',width:200,align:'center'" formatter="bjCount31">
                            北京31天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 90}">
                        <th data-options="field:'bjSales90',width:100,align:'center'">北京90天销量</th>
                        <th data-options="field:'bjTurnoverDays90',width:100,align:'center'"
                            formatter="bjTurnoverDays90">北京90天周转天数
                        </th>
                        <th data-options="field:'bjCount90',width:200,align:'center'" formatter="bjCount90">
                            北京90天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                </c:forEach>

                <th data-options="field:'shStock',width:100,align:'center'">上海库存</th>
                <c:forEach items="${sessionScope.salesList}" var="mt">
                    <c:if test="${mt == 1}">
                        <th data-options="field:'shSales1',width:100,align:'center'">上海1天销量</th>
                        <th data-options="field:'shTurnoverDays1',width:100,align:'center'" formatter="shTurnoverDays1">
                            上海1天周转天数
                        </th>
                        <th data-options="field:'shCount1',width:200,align:'center'" formatter="shCount1">
                            上海1天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 2}">
                        <th data-options="field:'shSales2',width:100,align:'center'">上海2天销量</th>
                        <th data-options="field:'shTurnoverDays2',width:100,align:'center'" formatter="shTurnoverDays2">
                            上海2天周转天数
                        </th>
                        <th data-options="field:'shCount2',width:200,align:'center'" formatter="shCount2">
                            上海2天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 3}">
                        <th data-options="field:'shSales3',width:100,align:'center'">上海3天销量</th>
                        <th data-options="field:'shTurnoverDays3',width:100,align:'center'" formatter="shTurnoverDays3">
                            上海3天周转天数
                        </th>
                        <th data-options="field:'shCount3',width:200,align:'center'" formatter="shCount3">
                            上海3天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 4}">
                        <th data-options="field:'shSales4',width:100,align:'center'">上海4天销量</th>
                        <th data-options="field:'shTurnoverDays4',width:100,align:'center'" formatter="shTurnoverDays4">
                            上海4天周转天数
                        </th>
                        <th data-options="field:'shCount4',width:200,align:'center'" formatter="shCount4">
                            上海4天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 5}">
                        <th data-options="field:'shSales5',width:100,align:'center'">上海5天销量</th>
                        <th data-options="field:'shTurnoverDays5',width:100,align:'center'" formatter="shTurnoverDays5">
                            上海5天周转天数
                        </th>
                        <th data-options="field:'shCount5',width:200,align:'center'" formatter="shCount5">
                            上海5天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 6}">
                        <th data-options="field:'shSales6',width:100,align:'center'">上海6天销量</th>
                        <th data-options="field:'shTurnoverDays6',width:100,align:'center'" formatter="shTurnoverDays6">
                            上海6天周转天数
                        </th>
                        <th data-options="field:'shCount6',width:200,align:'center'" formatter="shCount6">
                            上海6天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 7}">
                        <th data-options="field:'shSales7',width:100,align:'center'">上海7天销量</th>
                        <th data-options="field:'shTurnoverDays7',width:100,align:'center'" formatter="shTurnoverDays7">
                            上海7天周转天数
                        </th>
                        <th data-options="field:'shCount7',width:200,align:'center'" formatter="shCount7">
                            上海7天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 8}">
                        <th data-options="field:'shSales8',width:100,align:'center'">上海8天销量</th>
                        <th data-options="field:'shTurnoverDays8',width:100,align:'center'" formatter="shTurnoverDays8">
                            上海8天周转天数
                        </th>
                        <th data-options="field:'shCount8',width:200,align:'center'" formatter="shCount8">
                            上海8天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 9}">
                        <th data-options="field:'shSales9',width:100,align:'center'">上海9天销量</th>
                        <th data-options="field:'shTurnoverDays9',width:100,align:'center'" formatter="shTurnoverDays9">
                            上海9天周转天数
                        </th>
                        <th data-options="field:'shCount9',width:200,align:'center'" formatter="shCount9">
                            上海9天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 10}">
                        <th data-options="field:'shSales10',width:100,align:'center'">上海10天销量</th>
                        <th data-options="field:'shTurnoverDays10',width:100,align:'center'"
                            formatter="shTurnoverDays10">上海10天周转天数
                        </th>
                        <th data-options="field:'shCount10',width:200,align:'center'" formatter="shCount10">
                            上海10天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 11}">
                        <th data-options="field:'shSales11',width:100,align:'center'">上海11天销量</th>
                        <th data-options="field:'shTurnoverDays11',width:100,align:'center'"
                            formatter="shTurnoverDays11">上海11天周转天数
                        </th>
                        <th data-options="field:'shCount11',width:200,align:'center'" formatter="shCount11">
                            上海11天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 12}">
                        <th data-options="field:'shSales12',width:100,align:'center'">上海12天销量</th>
                        <th data-options="field:'shTurnoverDays12',width:100,align:'center'"
                            formatter="shTurnoverDays12">上海12天周转天数
                        </th>
                        <th data-options="field:'shCount12',width:200,align:'center'" formatter="shCount12">
                            上海12天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 13}">
                        <th data-options="field:'shSales13',width:100,align:'center'">上海13天销量</th>
                        <th data-options="field:'shTurnoverDays13',width:100,align:'center'"
                            formatter="shTurnoverDays13">上海13天周转天数
                        </th>
                        <th data-options="field:'shCount13',width:200,align:'center'" formatter="shCount13">
                            上海13天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 14}">
                        <th data-options="field:'shSales14',width:100,align:'center'">上海14天销量</th>
                        <th data-options="field:'shTurnoverDays14',width:100,align:'center'"
                            formatter="shTurnoverDays14">上海14天周转天数
                        </th>
                        <th data-options="field:'shCount14',width:200,align:'center'" formatter="shCount14">
                            上海14天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 15}">
                        <th data-options="field:'shSales15',width:100,align:'center'">上海15天销量</th>
                        <th data-options="field:'shTurnoverDays15',width:100,align:'center'"
                            formatter="shTurnoverDays15">上海15天周转天数
                        </th>
                        <th data-options="field:'shCount15',width:200,align:'center'" formatter="shCount15">
                            上海15天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 16}">
                        <th data-options="field:'shSales16',width:100,align:'center'">上海16天销量</th>
                        <th data-options="field:'shTurnoverDays16',width:100,align:'center'"
                            formatter="shTurnoverDays16">上海16天周转天数
                        </th>
                        <th data-options="field:'shCount16',width:200,align:'center'" formatter="shCount16">
                            上海16天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 17}">
                        <th data-options="field:'shSales17',width:100,align:'center'">上海17天销量</th>
                        <th data-options="field:'shTurnoverDays17',width:100,align:'center'"
                            formatter="shTurnoverDays17">上海17天周转天数
                        </th>
                        <th data-options="field:'shCount17',width:200,align:'center'" formatter="shCount17">
                            上海17天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 18}">
                        <th data-options="field:'shSales18',width:100,align:'center'">上海18天销量</th>
                        <th data-options="field:'shTurnoverDays18',width:100,align:'center'"
                            formatter="shTurnoverDays18">上海18天周转天数
                        </th>
                        <th data-options="field:'shCount18',width:200,align:'center'" formatter="shCount18">
                            上海18天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 19}">
                        <th data-options="field:'shSales19',width:100,align:'center'">上海19天销量</th>
                        <th data-options="field:'shTurnoverDays19',width:100,align:'center'"
                            formatter="shTurnoverDays19">上海19天周转天数
                        </th>
                        <th data-options="field:'shCount19',width:200,align:'center'" formatter="shCount19">
                            上海19天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 20}">
                        <th data-options="field:'shSales20',width:100,align:'center'">上海20天销量</th>
                        <th data-options="field:'shTurnoverDays20',width:100,align:'center'"
                            formatter="shTurnoverDays20">上海20天周转天数
                        </th>
                        <th data-options="field:'shCount20',width:200,align:'center'" formatter="shCount20">
                            上海20天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 21}">
                        <th data-options="field:'shSales21',width:100,align:'center'">上海21天销量</th>
                        <th data-options="field:'shTurnoverDays21',width:100,align:'center'"
                            formatter="shTurnoverDays21">上海21天周转天数
                        </th>
                        <th data-options="field:'shCount21',width:200,align:'center'" formatter="shCount21">
                            上海21天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 22}">
                        <th data-options="field:'shSales22',width:100,align:'center'">上海22天销量</th>
                        <th data-options="field:'shTurnoverDays22',width:100,align:'center'"
                            formatter="shTurnoverDays22">上海22天周转天数
                        </th>
                        <th data-options="field:'shCount22',width:200,align:'center'" formatter="shCount22">
                            上海22天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 23}">
                        <th data-options="field:'shSales23',width:100,align:'center'">上海23天销量</th>
                        <th data-options="field:'shTurnoverDays23',width:100,align:'center'"
                            formatter="shTurnoverDays23">上海23天周转天数
                        </th>
                        <th data-options="field:'shCount23',width:200,align:'center'" formatter="shCount23">
                            上海23天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 24}">
                        <th data-options="field:'shSales24',width:100,align:'center'">上海24天销量</th>
                        <th data-options="field:'shTurnoverDays24',width:100,align:'center'"
                            formatter="shTurnoverDays24">上海24天周转天数
                        </th>
                        <th data-options="field:'shCount24',width:200,align:'center'" formatter="shCount24">
                            上海24天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 25}">
                        <th data-options="field:'shSales25',width:100,align:'center'">上海25天销量</th>
                        <th data-options="field:'shTurnoverDays25',width:100,align:'center'"
                            formatter="shTurnoverDays25">上海25天周转天数
                        </th>
                        <th data-options="field:'shCount25',width:200,align:'center'" formatter="shCount25">
                            上海25天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 26}">
                        <th data-options="field:'shSales26',width:100,align:'center'">上海26天销量</th>
                        <th data-options="field:'shTurnoverDays26',width:100,align:'center'"
                            formatter="shTurnoverDays26">上海26天周转天数
                        </th>
                        <th data-options="field:'shCount26',width:200,align:'center'" formatter="shCount26">
                            上海26天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 27}">
                        <th data-options="field:'shSales27',width:100,align:'center'">上海27天销量</th>
                        <th data-options="field:'shTurnoverDays27',width:100,align:'center'"
                            formatter="shTurnoverDays27">上海27天周转天数
                        </th>
                        <th data-options="field:'shCount27',width:200,align:'center'" formatter="shCount27">
                            上海27天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 28}">
                        <th data-options="field:'shSales28',width:100,align:'center'">上海28天销量</th>
                        <th data-options="field:'shTurnoverDays28',width:100,align:'center'"
                            formatter="shTurnoverDays28">上海28天周转天数
                        </th>
                        <th data-options="field:'shCount28',width:200,align:'center'" formatter="shCount28">
                            上海28天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 29}">
                        <th data-options="field:'shSales29',width:100,align:'center'">上海29天销量</th>
                        <th data-options="field:'shTurnoverDays29',width:100,align:'center'"
                            formatter="shTurnoverDays29">上海29天周转天数
                        </th>
                        <th data-options="field:'shCount29',width:200,align:'center'" formatter="shCount29">
                            上海29天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 30}">
                        <th data-options="field:'shSales30',width:100,align:'center'">上海30天销量</th>
                        <th data-options="field:'shTurnoverDays30',width:100,align:'center'"
                            formatter="shTurnoverDays30">上海30天周转天数
                        </th>
                        <th data-options="field:'shCount30',width:200,align:'center'" formatter="shCount30">
                            上海30天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 31}">
                        <th data-options="field:'shSales31',width:100,align:'center'">上海31天销量</th>
                        <th data-options="field:'shTurnoverDays31',width:100,align:'center'"
                            formatter="shTurnoverDays31">上海31天周转天数
                        </th>
                        <th data-options="field:'shCount31',width:200,align:'center'" formatter="shCount31">
                            上海31天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 90}">
                        <th data-options="field:'shSales90',width:100,align:'center'">上海90天销量</th>
                        <th data-options="field:'shTurnoverDays90',width:100,align:'center'"
                            formatter="shTurnoverDays90">上海90天周转天数
                        </th>
                        <th data-options="field:'shCount90',width:200,align:'center'" formatter="shCount90">
                            上海90天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                </c:forEach>

                <th data-options="field:'gzStock',width:100,align:'center'">广州库存</th>
                <c:forEach items="${sessionScope.salesList}" var="mt">
                    <c:if test="${mt == 1}">
                        <th data-options="field:'gzSales1',width:100,align:'center'">广州1天销量</th>
                        <th data-options="field:'gzTurnoverDays1',width:100,align:'center'" formatter="gzTurnoverDays1">
                            广州1天周转天数
                        </th>
                        <th data-options="field:'gzCount1',width:200,align:'center'" formatter="gzCount1">
                            广州1天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 2}">
                        <th data-options="field:'gzSales2',width:100,align:'center'">广州2天销量</th>
                        <th data-options="field:'gzTurnoverDays2',width:100,align:'center'" formatter="gzTurnoverDays2">
                            广州2天周转天数
                        </th>
                        <th data-options="field:'gzCount2',width:200,align:'center'" formatter="gzCount2">
                            广州2天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 3}">
                        <th data-options="field:'gzSales3',width:100,align:'center'">广州3天销量</th>
                        <th data-options="field:'gzTurnoverDays3',width:100,align:'center'" formatter="gzTurnoverDays3">
                            广州3天周转天数
                        </th>
                        <th data-options="field:'gzCount3',width:200,align:'center'" formatter="gzCount3">
                            广州3天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 4}">
                        <th data-options="field:'gzSales4',width:100,align:'center'">广州4天销量</th>
                        <th data-options="field:'gzTurnoverDays4',width:100,align:'center'" formatter="gzTurnoverDays4">
                            广州4天周转天数
                        </th>
                        <th data-options="field:'gzCount4',width:200,align:'center'" formatter="gzCount4">
                            广州4天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 5}">
                        <th data-options="field:'gzSales5',width:100,align:'center'">广州5天销量</th>
                        <th data-options="field:'gzTurnoverDays5',width:100,align:'center'" formatter="gzTurnoverDays5">
                            广州5天周转天数
                        </th>
                        <th data-options="field:'gzCount5',width:200,align:'center'" formatter="gzCount5">
                            广州5天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 6}">
                        <th data-options="field:'gzSales6',width:100,align:'center'">广州6天销量</th>
                        <th data-options="field:'gzTurnoverDays6',width:100,align:'center'" formatter="gzTurnoverDays6">
                            广州6天周转天数
                        </th>
                        <th data-options="field:'gzCount6',width:200,align:'center'" formatter="gzCount6">
                            广州6天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 7}">
                        <th data-options="field:'gzSales7',width:100,align:'center'">广州7天销量</th>
                        <th data-options="field:'gzTurnoverDays7',width:100,align:'center'" formatter="gzTurnoverDays7">
                            广州7天周转天数
                        </th>
                        <th data-options="field:'gzCount7',width:200,align:'center'" formatter="gzCount7">
                            广州7天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 8}">
                        <th data-options="field:'gzSales8',width:100,align:'center'">广州8天销量</th>
                        <th data-options="field:'gzTurnoverDays8',width:100,align:'center'" formatter="gzTurnoverDays8">
                            广州8天周转天数
                        </th>
                        <th data-options="field:'gzCount8',width:200,align:'center'" formatter="gzCount8">
                            广州8天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 9}">
                        <th data-options="field:'gzSales9',width:100,align:'center'">广州9天销量</th>
                        <th data-options="field:'gzTurnoverDays9',width:100,align:'center'" formatter="gzTurnoverDays9">
                            广州9天周转天数
                        </th>
                        <th data-options="field:'gzCount9',width:200,align:'center'" formatter="gzCount9">
                            广州9天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 10}">
                        <th data-options="field:'gzSales10',width:100,align:'center'">广州10天销量</th>
                        <th data-options="field:'gzTurnoverDays10',width:100,align:'center'"
                            formatter="gzTurnoverDays10">广州10天周转天数
                        </th>
                        <th data-options="field:'gzCount10',width:200,align:'center'" formatter="gzCount10">
                            广州10天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 11}">
                        <th data-options="field:'gzSales11',width:100,align:'center'">广州11天销量</th>
                        <th data-options="field:'gzTurnoverDays11',width:100,align:'center'"
                            formatter="gzTurnoverDays11">广州11天周转天数
                        </th>
                        <th data-options="field:'gzCount11',width:200,align:'center'" formatter="gzCount11">
                            广州11天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 12}">
                        <th data-options="field:'gzSales12',width:100,align:'center'">广州12天销量</th>
                        <th data-options="field:'gzTurnoverDays12',width:100,align:'center'"
                            formatter="gzTurnoverDays12">广州12天周转天数
                        </th>
                        <th data-options="field:'gzCount12',width:200,align:'center'" formatter="gzCount12">
                            广州12天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 13}">
                        <th data-options="field:'gzSales13',width:100,align:'center'">广州13天销量</th>
                        <th data-options="field:'gzTurnoverDays13',width:100,align:'center'"
                            formatter="gzTurnoverDays13">广州13天周转天数
                        </th>
                        <th data-options="field:'gzCount13',width:200,align:'center'" formatter="gzCount13">
                            广州13天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 14}">
                        <th data-options="field:'gzSales14',width:100,align:'center'">广州14天销量</th>
                        <th data-options="field:'gzTurnoverDays14',width:100,align:'center'"
                            formatter="gzTurnoverDays14">广州14天周转天数
                        </th>
                        <th data-options="field:'gzCount14',width:200,align:'center'" formatter="gzCount14">
                            广州14天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 15}">
                        <th data-options="field:'gzSales15',width:100,align:'center'">广州15天销量</th>
                        <th data-options="field:'gzTurnoverDays15',width:100,align:'center'"
                            formatter="gzTurnoverDays15">广州15天周转天数
                        </th>
                        <th data-options="field:'gzCount15',width:200,align:'center'" formatter="gzCount15">
                            广州15天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 16}">
                        <th data-options="field:'gzSales16',width:100,align:'center'">广州16天销量</th>
                        <th data-options="field:'gzTurnoverDays16',width:100,align:'center'"
                            formatter="gzTurnoverDays16">广州16天周转天数
                        </th>
                        <th data-options="field:'gzCount16',width:200,align:'center'" formatter="gzCount16">
                            广州16天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 17}">
                        <th data-options="field:'gzSales17',width:100,align:'center'">广州17天销量</th>
                        <th data-options="field:'gzTurnoverDays17',width:100,align:'center'"
                            formatter="gzTurnoverDays17">广州17天周转天数
                        </th>
                        <th data-options="field:'gzCount17',width:200,align:'center'" formatter="gzCount17">
                            广州17天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 18}">
                        <th data-options="field:'gzSales18',width:100,align:'center'">广州18天销量</th>
                        <th data-options="field:'gzTurnoverDays18',width:100,align:'center'"
                            formatter="gzTurnoverDays18">广州18天周转天数
                        </th>
                        <th data-options="field:'gzCount18',width:200,align:'center'" formatter="gzCount18">
                            广州18天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 19}">
                        <th data-options="field:'gzSales19',width:100,align:'center'">广州19天销量</th>
                        <th data-options="field:'gzTurnoverDays19',width:100,align:'center'"
                            formatter="gzTurnoverDays19">广州19天周转天数
                        </th>
                        <th data-options="field:'gzCount19',width:200,align:'center'" formatter="gzCount19">
                            广州19天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 20}">
                        <th data-options="field:'gzSales20',width:100,align:'center'">广州20天销量</th>
                        <th data-options="field:'gzTurnoverDays20',width:100,align:'center'"
                            formatter="gzTurnoverDays20">广州20天周转天数
                        </th>
                        <th data-options="field:'gzCount20',width:200,align:'center'" formatter="gzCount20">
                            广州20天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 21}">
                        <th data-options="field:'gzSales21',width:100,align:'center'">广州21天销量</th>
                        <th data-options="field:'gzTurnoverDays21',width:100,align:'center'"
                            formatter="gzTurnoverDays21">广州21天周转天数
                        </th>
                        <th data-options="field:'gzCount21',width:200,align:'center'" formatter="gzCount21">
                            广州21天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 22}">
                        <th data-options="field:'gzSales22',width:100,align:'center'">广州22天销量</th>
                        <th data-options="field:'gzTurnoverDays22',width:100,align:'center'"
                            formatter="gzTurnoverDays22">广州22天周转天数
                        </th>
                        <th data-options="field:'gzCount22',width:200,align:'center'" formatter="gzCount22">
                            广州22天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 23}">
                        <th data-options="field:'gzSales23',width:100,align:'center'">广州23天销量</th>
                        <th data-options="field:'gzTurnoverDays23',width:100,align:'center'"
                            formatter="gzTurnoverDays23">广州23天周转天数
                        </th>
                        <th data-options="field:'gzCount23',width:200,align:'center'" formatter="gzCount23">
                            广州23天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 24}">
                        <th data-options="field:'gzSales24',width:100,align:'center'">广州24天销量</th>
                        <th data-options="field:'gzTurnoverDays24',width:100,align:'center'"
                            formatter="gzTurnoverDays24">广州24天周转天数
                        </th>
                        <th data-options="field:'gzCount24',width:200,align:'center'" formatter="gzCount24">
                            广州24天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 25}">
                        <th data-options="field:'gzSales25',width:100,align:'center'">广州25天销量</th>
                        <th data-options="field:'gzTurnoverDays25',width:100,align:'center'"
                            formatter="gzTurnoverDays25">广州25天周转天数
                        </th>
                        <th data-options="field:'gzCount25',width:200,align:'center'" formatter="gzCount25">
                            广州25天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 26}">
                        <th data-options="field:'gzSales26',width:100,align:'center'">广州26天销量</th>
                        <th data-options="field:'gzTurnoverDays26',width:100,align:'center'"
                            formatter="gzTurnoverDays26">广州26天周转天数
                        </th>
                        <th data-options="field:'gzCount26',width:200,align:'center'" formatter="gzCount26">
                            广州26天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 27}">
                        <th data-options="field:'gzSales27',width:100,align:'center'">广州27天销量</th>
                        <th data-options="field:'gzTurnoverDays27',width:100,align:'center'"
                            formatter="gzTurnoverDays27">广州27天周转天数
                        </th>
                        <th data-options="field:'gzCount27',width:200,align:'center'" formatter="gzCount27">
                            广州27天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 28}">
                        <th data-options="field:'gzSales28',width:100,align:'center'">广州28天销量</th>
                        <th data-options="field:'gzTurnoverDays28',width:100,align:'center'"
                            formatter="gzTurnoverDays28">广州28天周转天数
                        </th>
                        <th data-options="field:'gzCount28',width:200,align:'center'" formatter="gzCount28">
                            广州28天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 29}">
                        <th data-options="field:'gzSales29',width:100,align:'center'">广州29天销量</th>
                        <th data-options="field:'gzTurnoverDays29',width:100,align:'center'"
                            formatter="gzTurnoverDays29">广州29天周转天数
                        </th>
                        <th data-options="field:'gzCount29',width:200,align:'center'" formatter="gzCount29">
                            广州29天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 30}">
                        <th data-options="field:'gzSales30',width:100,align:'center'">广州30天销量</th>
                        <th data-options="field:'gzTurnoverDays30',width:100,align:'center'"
                            formatter="gzTurnoverDays30">广州30天周转天数
                        </th>
                        <th data-options="field:'gzCount30',width:200,align:'center'" formatter="gzCount30">
                            广州30天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 31}">
                        <th data-options="field:'gzSales31',width:100,align:'center'">广州31天销量</th>
                        <th data-options="field:'gzTurnoverDays31',width:100,align:'center'"
                            formatter="gzTurnoverDays31">广州31天周转天数
                        </th>
                        <th data-options="field:'gzCount31',width:200,align:'center'" formatter="gzCount31">
                            广州31天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 90}">
                        <th data-options="field:'gzSales90',width:100,align:'center'">广州90天销量</th>
                        <th data-options="field:'gzTurnoverDays90',width:100,align:'center'"
                            formatter="gzTurnoverDays90">广州90天周转天数
                        </th>
                        <th data-options="field:'gzCount90',width:200,align:'center'" formatter="gzCount90">
                            广州90天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                </c:forEach>

                <th data-options="field:'cdStock',width:100,align:'center'">成都库存</th>
                <c:forEach items="${sessionScope.salesList}" var="mt">
                    <c:if test="${mt == 1}">
                        <th data-options="field:'cdSales1',width:100,align:'center'">成都1天销量</th>
                        <th data-options="field:'cdTurnoverDays1',width:100,align:'center'" formatter="cdTurnoverDays1">
                            成都1天周转天数
                        </th>
                        <th data-options="field:'cdCount1',width:200,align:'center'" formatter="cdCount1">
                            成都1天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 2}">
                        <th data-options="field:'cdSales2',width:100,align:'center'">成都2天销量</th>
                        <th data-options="field:'cdTurnoverDays2',width:100,align:'center'" formatter="cdTurnoverDays2">
                            成都2天周转天数
                        </th>
                        <th data-options="field:'cdCount2',width:200,align:'center'" formatter="cdCount2">
                            成都2天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 3}">
                        <th data-options="field:'cdSales3',width:100,align:'center'">成都3天销量</th>
                        <th data-options="field:'cdTurnoverDays3',width:100,align:'center'" formatter="cdTurnoverDays3">
                            成都3天周转天数
                        </th>
                        <th data-options="field:'cdCount3',width:200,align:'center'" formatter="cdCount3">
                            成都3天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 4}">
                        <th data-options="field:'cdSales4',width:100,align:'center'">成都4天销量</th>
                        <th data-options="field:'cdTurnoverDays4',width:100,align:'center'" formatter="cdTurnoverDays4">
                            成都4天周转天数
                        </th>
                        <th data-options="field:'cdCount4',width:200,align:'center'" formatter="cdCount4">
                            成都4天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 5}">
                        <th data-options="field:'cdSales5',width:100,align:'center'">成都5天销量</th>
                        <th data-options="field:'cdTurnoverDays5',width:100,align:'center'" formatter="cdTurnoverDays5">
                            成都5天周转天数
                        </th>
                        <th data-options="field:'cdCount5',width:200,align:'center'" formatter="cdCount5">
                            成都5天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 6}">
                        <th data-options="field:'cdSales6',width:100,align:'center'">成都6天销量</th>
                        <th data-options="field:'cdTurnoverDays6',width:100,align:'center'" formatter="cdTurnoverDays6">
                            成都6天周转天数
                        </th>
                        <th data-options="field:'cdCount6',width:200,align:'center'" formatter="cdCount6">
                            成都6天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 7}">
                        <th data-options="field:'cdSales7',width:100,align:'center'">成都7天销量</th>
                        <th data-options="field:'cdTurnoverDays7',width:100,align:'center'" formatter="cdTurnoverDays7">
                            成都7天周转天数
                        </th>
                        <th data-options="field:'cdCount7',width:200,align:'center'" formatter="cdCount7">
                            成都7天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 8}">
                        <th data-options="field:'cdSales8',width:100,align:'center'">成都8天销量</th>
                        <th data-options="field:'cdTurnoverDays8',width:100,align:'center'" formatter="cdTurnoverDays8">
                            成都8天周转天数
                        </th>
                        <th data-options="field:'cdCount8',width:200,align:'center'" formatter="cdCount8">
                            成都8天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 9}">
                        <th data-options="field:'cdSales9',width:100,align:'center'">成都9天销量</th>
                        <th data-options="field:'cdTurnoverDays9',width:100,align:'center'" formatter="cdTurnoverDays9">
                            成都9天周转天数
                        </th>
                        <th data-options="field:'cdCount9',width:200,align:'center'" formatter="cdCount9">
                            成都9天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 10}">
                        <th data-options="field:'cdSales10',width:100,align:'center'">成都10天销量</th>
                        <th data-options="field:'cdTurnoverDays10',width:100,align:'center'"
                            formatter="cdTurnoverDays10">成都10天周转天数
                        </th>
                        <th data-options="field:'cdCount10',width:200,align:'center'" formatter="cdCount10">
                            成都10天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 11}">
                        <th data-options="field:'cdSales11',width:100,align:'center'">成都11天销量</th>
                        <th data-options="field:'cdTurnoverDays11',width:100,align:'center'"
                            formatter="cdTurnoverDays11">成都11天周转天数
                        </th>
                        <th data-options="field:'cdCount11',width:200,align:'center'" formatter="cdCount11">
                            成都11天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 12}">
                        <th data-options="field:'cdSales12',width:100,align:'center'">成都12天销量</th>
                        <th data-options="field:'cdTurnoverDays12',width:100,align:'center'"
                            formatter="cdTurnoverDays12">成都12天周转天数
                        </th>
                        <th data-options="field:'cdCount12',width:200,align:'center'" formatter="cdCount12">
                            成都12天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 13}">
                        <th data-options="field:'cdSales13',width:100,align:'center'">成都13天销量</th>
                        <th data-options="field:'cdTurnoverDays13',width:100,align:'center'"
                            formatter="cdTurnoverDays13">成都13天周转天数
                        </th>
                        <th data-options="field:'cdCount13',width:200,align:'center'" formatter="cdCount13">
                            成都13天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 14}">
                        <th data-options="field:'cdSales14',width:100,align:'center'">成都14天销量</th>
                        <th data-options="field:'cdTurnoverDays14',width:100,align:'center'"
                            formatter="cdTurnoverDays14">成都14天周转天数
                        </th>
                        <th data-options="field:'cdCount14',width:200,align:'center'" formatter="cdCount14">
                            成都14天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 15}">
                        <th data-options="field:'cdSales15',width:100,align:'center'">成都15天销量</th>
                        <th data-options="field:'cdTurnoverDays15',width:100,align:'center'"
                            formatter="cdTurnoverDays15">成都15天周转天数
                        </th>
                        <th data-options="field:'cdCount15',width:200,align:'center'" formatter="cdCount15">
                            成都15天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 16}">
                        <th data-options="field:'cdSales16',width:100,align:'center'">成都16天销量</th>
                        <th data-options="field:'cdTurnoverDays16',width:100,align:'center'"
                            formatter="cdTurnoverDays16">成都16天周转天数
                        </th>
                        <th data-options="field:'cdCount16',width:200,align:'center'" formatter="cdCount16">
                            成都16天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 17}">
                        <th data-options="field:'cdSales17',width:100,align:'center'">成都17天销量</th>
                        <th data-options="field:'cdTurnoverDays17',width:100,align:'center'"
                            formatter="cdTurnoverDays17">成都17天周转天数
                        </th>
                        <th data-options="field:'cdCount17',width:200,align:'center'" formatter="cdCount17">
                            成都17天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 18}">
                        <th data-options="field:'cdSales18',width:100,align:'center'">成都18天销量</th>
                        <th data-options="field:'cdTurnoverDays18',width:100,align:'center'"
                            formatter="cdTurnoverDays18">成都18天周转天数
                        </th>
                        <th data-options="field:'cdCount18',width:200,align:'center'" formatter="cdCount18">
                            成都18天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 19}">
                        <th data-options="field:'cdSales19',width:100,align:'center'">成都19天销量</th>
                        <th data-options="field:'cdTurnoverDays19',width:100,align:'center'"
                            formatter="cdTurnoverDays19">成都19天周转天数
                        </th>
                        <th data-options="field:'cdCount19',width:200,align:'center'" formatter="cdCount19">
                            成都19天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 20}">
                        <th data-options="field:'cdSales20',width:100,align:'center'">成都20天销量</th>
                        <th data-options="field:'cdTurnoverDays20',width:100,align:'center'"
                            formatter="cdTurnoverDays20">成都20天周转天数
                        </th>
                        <th data-options="field:'cdCount20',width:200,align:'center'" formatter="cdCount20">
                            成都20天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 21}">
                        <th data-options="field:'cdSales21',width:100,align:'center'">成都21天销量</th>
                        <th data-options="field:'cdTurnoverDays21',width:100,align:'center'"
                            formatter="cdTurnoverDays21">成都21天周转天数
                        </th>
                        <th data-options="field:'cdCount21',width:200,align:'center'" formatter="cdCount21">
                            成都21天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 22}">
                        <th data-options="field:'cdSales22',width:100,align:'center'">成都22天销量</th>
                        <th data-options="field:'cdTurnoverDays22',width:100,align:'center'"
                            formatter="cdTurnoverDays22">成都22天周转天数
                        </th>
                        <th data-options="field:'cdCount22',width:200,align:'center'" formatter="cdCount22">
                            成都22天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 23}">
                        <th data-options="field:'cdSales23',width:100,align:'center'">成都23天销量</th>
                        <th data-options="field:'cdTurnoverDays23',width:100,align:'center'"
                            formatter="cdTurnoverDays23">成都23天周转天数
                        </th>
                        <th data-options="field:'cdCount23',width:200,align:'center'" formatter="cdCount23">
                            成都23天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 24}">
                        <th data-options="field:'cdSales24',width:100,align:'center'">成都24天销量</th>
                        <th data-options="field:'cdTurnoverDays24',width:100,align:'center'"
                            formatter="cdTurnoverDays24">成都24天周转天数
                        </th>
                        <th data-options="field:'cdCount24',width:200,align:'center'" formatter="cdCount24">
                            成都24天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 25}">
                        <th data-options="field:'cdSales25',width:100,align:'center'">成都25天销量</th>
                        <th data-options="field:'cdTurnoverDays25',width:100,align:'center'"
                            formatter="cdTurnoverDays25">成都25天周转天数
                        </th>
                        <th data-options="field:'cdCount25',width:200,align:'center'" formatter="cdCount25">
                            成都25天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 26}">
                        <th data-options="field:'cdSales26',width:100,align:'center'">成都26天销量</th>
                        <th data-options="field:'cdTurnoverDays26',width:100,align:'center'"
                            formatter="cdTurnoverDays26">成都26天周转天数
                        </th>
                        <th data-options="field:'cdCount26',width:200,align:'center'" formatter="cdCount26">
                            成都26天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 27}">
                        <th data-options="field:'cdSales27',width:100,align:'center'">成都27天销量</th>
                        <th data-options="field:'cdTurnoverDays27',width:100,align:'center'"
                            formatter="cdTurnoverDays27">成都27天周转天数
                        </th>
                        <th data-options="field:'cdCount27',width:200,align:'center'" formatter="cdCount27">
                            成都27天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 28}">
                        <th data-options="field:'cdSales28',width:100,align:'center'">成都28天销量</th>
                        <th data-options="field:'cdTurnoverDays28',width:100,align:'center'"
                            formatter="cdTurnoverDays28">成都28天周转天数
                        </th>
                        <th data-options="field:'cdCount28',width:200,align:'center'" formatter="cdCount28">
                            成都28天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 29}">
                        <th data-options="field:'cdSales29',width:100,align:'center'">成都29天销量</th>
                        <th data-options="field:'cdTurnoverDays29',width:100,align:'center'"
                            formatter="cdTurnoverDays29">成都29天周转天数
                        </th>
                        <th data-options="field:'cdCount29',width:200,align:'center'" formatter="cdCount29">
                            成都29天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 30}">
                        <th data-options="field:'cdSales30',width:100,align:'center'">成都30天销量</th>
                        <th data-options="field:'cdTurnoverDays30',width:100,align:'center'"
                            formatter="cdTurnoverDays30">成都30天周转天数
                        </th>
                        <th data-options="field:'cdCount30',width:200,align:'center'" formatter="cdCount30">
                            成都30天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 31}">
                        <th data-options="field:'cdSales31',width:100,align:'center'">成都31天销量</th>
                        <th data-options="field:'cdTurnoverDays31',width:100,align:'center'"
                            formatter="cdTurnoverDays31">成都31天周转天数
                        </th>
                        <th data-options="field:'cdCount31',width:200,align:'center'" formatter="cdCount31">
                            成都31天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 31}">
                        <th data-options="field:'cdSales31',width:100,align:'center'">成都31天销量</th>
                        <th data-options="field:'cdTurnoverDays31',width:100,align:'center'"
                            formatter="cdTurnoverDays31">成都31天周转天数
                        </th>
                        <th data-options="field:'cdCount31',width:200,align:'center'" formatter="cdCount31">
                            成都31天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                </c:forEach>

                <th data-options="field:'whStock',width:100,align:'center'">武汉库存</th>
                <c:forEach items="${sessionScope.salesList}" var="mt">
                    <c:if test="${mt == 1}">
                        <th data-options="field:'whSales1',width:100,align:'center'">武汉1天销量</th>
                        <th data-options="field:'whTurnoverDays1',width:100,align:'center'" formatter="whTurnoverDays1">
                            武汉1天周转天数
                        </th>
                        <th data-options="field:'whCount1',width:200,align:'center'" formatter="whCount1">
                            武汉1天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 2}">
                        <th data-options="field:'whSales2',width:100,align:'center'">武汉2天销量</th>
                        <th data-options="field:'whTurnoverDays2',width:100,align:'center'" formatter="whTurnoverDays2">
                            武汉2天周转天数
                        </th>
                        <th data-options="field:'whCount2',width:200,align:'center'" formatter="whCount2">
                            武汉2天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 3}">
                        <th data-options="field:'whSales3',width:100,align:'center'">武汉3天销量</th>
                        <th data-options="field:'whTurnoverDays3',width:100,align:'center'" formatter="whTurnoverDays3">
                            武汉3天周转天数
                        </th>
                        <th data-options="field:'whCount3',width:200,align:'center'" formatter="whCount3">
                            武汉3天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 4}">
                        <th data-options="field:'whSales4',width:100,align:'center'">武汉4天销量</th>
                        <th data-options="field:'whTurnoverDays4',width:100,align:'center'" formatter="whTurnoverDays4">
                            武汉4天周转天数
                        </th>
                        <th data-options="field:'whCount4',width:200,align:'center'" formatter="whCount4">
                            武汉4天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 5}">
                        <th data-options="field:'whSales5',width:100,align:'center'">武汉5天销量</th>
                        <th data-options="field:'whTurnoverDays5',width:100,align:'center'" formatter="whTurnoverDays5">
                            武汉5天周转天数
                        </th>
                        <th data-options="field:'whCount5',width:200,align:'center'" formatter="whCount5">
                            武汉5天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 6}">
                        <th data-options="field:'whSales6',width:100,align:'center'">武汉6天销量</th>
                        <th data-options="field:'whTurnoverDays6',width:100,align:'center'" formatter="whTurnoverDays6">
                            武汉6天周转天数
                        </th>
                        <th data-options="field:'whCount6',width:200,align:'center'" formatter="whCount6">
                            武汉6天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 7}">
                        <th data-options="field:'whSales7',width:100,align:'center'">武汉7天销量</th>
                        <th data-options="field:'whTurnoverDays7',width:100,align:'center'" formatter="whTurnoverDays7">
                            武汉7天周转天数
                        </th>
                        <th data-options="field:'whCount7',width:200,align:'center'" formatter="whCount7">
                            武汉7天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 8}">
                        <th data-options="field:'whSales8',width:100,align:'center'">武汉8天销量</th>
                        <th data-options="field:'whTurnoverDays8',width:100,align:'center'" formatter="whTurnoverDays8">
                            武汉8天周转天数
                        </th>
                        <th data-options="field:'whCount8',width:200,align:'center'" formatter="whCount8">
                            武汉8天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 9}">
                        <th data-options="field:'whSales9',width:100,align:'center'">武汉9天销量</th>
                        <th data-options="field:'whTurnoverDays9',width:100,align:'center'" formatter="whTurnoverDays9">
                            武汉9天周转天数
                        </th>
                        <th data-options="field:'whCount9',width:200,align:'center'" formatter="whCount9">
                            武汉9天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 10}">
                        <th data-options="field:'whSales10',width:100,align:'center'">武汉10天销量</th>
                        <th data-options="field:'whTurnoverDays10',width:100,align:'center'"
                            formatter="whTurnoverDays10">武汉10天周转天数
                        </th>
                        <th data-options="field:'whCount10',width:200,align:'center'" formatter="whCount10">
                            武汉10天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 11}">
                        <th data-options="field:'whSales11',width:100,align:'center'">武汉11天销量</th>
                        <th data-options="field:'whTurnoverDays11',width:100,align:'center'"
                            formatter="whTurnoverDays11">武汉11天周转天数
                        </th>
                        <th data-options="field:'whCount11',width:200,align:'center'" formatter="whCount11">
                            武汉11天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 12}">
                        <th data-options="field:'whSales12',width:100,align:'center'">武汉12天销量</th>
                        <th data-options="field:'whTurnoverDays12',width:100,align:'center'"
                            formatter="whTurnoverDays12">武汉12天周转天数
                        </th>
                        <th data-options="field:'whCount12',width:200,align:'center'" formatter="whCount12">
                            武汉12天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 13}">
                        <th data-options="field:'whSales13',width:100,align:'center'">武汉13天销量</th>
                        <th data-options="field:'whTurnoverDays13',width:100,align:'center'"
                            formatter="whTurnoverDays13">武汉13天周转天数
                        </th>
                        <th data-options="field:'whCount13',width:200,align:'center'" formatter="whCount13">
                            武汉13天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 14}">
                        <th data-options="field:'whSales14',width:100,align:'center'">武汉14天销量</th>
                        <th data-options="field:'whTurnoverDays14',width:100,align:'center'"
                            formatter="whTurnoverDays14">武汉14天周转天数
                        </th>
                        <th data-options="field:'whCount14',width:200,align:'center'" formatter="whCount14">
                            武汉14天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 15}">
                        <th data-options="field:'whSales15',width:100,align:'center'">武汉15天销量</th>
                        <th data-options="field:'whTurnoverDays15',width:100,align:'center'"
                            formatter="whTurnoverDays15">武汉15天周转天数
                        </th>
                        <th data-options="field:'whCount15',width:200,align:'center'" formatter="whCount15">
                            武汉15天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 16}">
                        <th data-options="field:'whSales16',width:100,align:'center'">武汉16天销量</th>
                        <th data-options="field:'whTurnoverDays16',width:100,align:'center'"
                            formatter="whTurnoverDays16">武汉16天周转天数
                        </th>
                        <th data-options="field:'whCount16',width:200,align:'center'" formatter="whCount16">
                            武汉16天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 17}">
                        <th data-options="field:'whSales17',width:100,align:'center'">武汉17天销量</th>
                        <th data-options="field:'whTurnoverDays17',width:100,align:'center'"
                            formatter="whTurnoverDays17">武汉17天周转天数
                        </th>
                        <th data-options="field:'whCount17',width:200,align:'center'" formatter="whCount17">
                            武汉17天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 18}">
                        <th data-options="field:'whSales18',width:100,align:'center'">武汉18天销量</th>
                        <th data-options="field:'whTurnoverDays18',width:100,align:'center'"
                            formatter="whTurnoverDays18">武汉18天周转天数
                        </th>
                        <th data-options="field:'whCount18',width:200,align:'center'" formatter="whCount18">
                            武汉18天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 19}">
                        <th data-options="field:'whSales19',width:100,align:'center'">武汉19天销量</th>
                        <th data-options="field:'whTurnoverDays19',width:100,align:'center'"
                            formatter="whTurnoverDays19">武汉19天周转天数
                        </th>
                        <th data-options="field:'whCount19',width:200,align:'center'" formatter="whCount19">
                            武汉19天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 20}">
                        <th data-options="field:'whSales20',width:100,align:'center'">武汉20天销量</th>
                        <th data-options="field:'whTurnoverDays20',width:100,align:'center'"
                            formatter="whTurnoverDays20">武汉20天周转天数
                        </th>
                        <th data-options="field:'whCount20',width:200,align:'center'" formatter="whCount20">
                            武汉20天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 21}">
                        <th data-options="field:'whSales21',width:100,align:'center'">武汉21天销量</th>
                        <th data-options="field:'whTurnoverDays21',width:100,align:'center'"
                            formatter="whTurnoverDays21">武汉21天周转天数
                        </th>
                        <th data-options="field:'whCount21',width:200,align:'center'" formatter="whCount21">
                            武汉21天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 22}">
                        <th data-options="field:'whSales22',width:100,align:'center'">武汉22天销量</th>
                        <th data-options="field:'whTurnoverDays22',width:100,align:'center'"
                            formatter="whTurnoverDays22">武汉22天周转天数
                        </th>
                        <th data-options="field:'whCount22',width:200,align:'center'" formatter="whCount22">
                            武汉22天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 23}">
                        <th data-options="field:'whSales23',width:100,align:'center'">武汉23天销量</th>
                        <th data-options="field:'whTurnoverDays23',width:100,align:'center'"
                            formatter="whTurnoverDays23">武汉23天周转天数
                        </th>
                        <th data-options="field:'whCount23',width:200,align:'center'" formatter="whCount23">
                            武汉23天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 24}">
                        <th data-options="field:'whSales24',width:100,align:'center'">武汉24天销量</th>
                        <th data-options="field:'whTurnoverDays24',width:100,align:'center'"
                            formatter="whTurnoverDays24">武汉24天周转天数
                        </th>
                        <th data-options="field:'whCount24',width:200,align:'center'" formatter="whCount24">
                            武汉24天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 25}">
                        <th data-options="field:'whSales25',width:100,align:'center'">武汉25天销量</th>
                        <th data-options="field:'whTurnoverDays25',width:100,align:'center'"
                            formatter="whTurnoverDays25">武汉25天周转天数
                        </th>
                        <th data-options="field:'whCount25',width:200,align:'center'" formatter="whCount25">
                            武汉25天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 26}">
                        <th data-options="field:'whSales26',width:100,align:'center'">武汉26天销量</th>
                        <th data-options="field:'whTurnoverDays26',width:100,align:'center'"
                            formatter="whTurnoverDays26">武汉26天周转天数
                        </th>
                        <th data-options="field:'whCount26',width:200,align:'center'" formatter="whCount26">
                            武汉26天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 27}">
                        <th data-options="field:'whSales27',width:100,align:'center'">武汉27天销量</th>
                        <th data-options="field:'whTurnoverDays27',width:100,align:'center'"
                            formatter="whTurnoverDays27">武汉27天周转天数
                        </th>
                        <th data-options="field:'whCount27',width:200,align:'center'" formatter="whCount27">
                            武汉27天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 28}">
                        <th data-options="field:'whSales28',width:100,align:'center'">武汉28天销量</th>
                        <th data-options="field:'whTurnoverDays28',width:100,align:'center'"
                            formatter="whTurnoverDays28">武汉28天周转天数
                        </th>
                        <th data-options="field:'whCount28',width:200,align:'center'" formatter="whCount28">
                            武汉28天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 29}">
                        <th data-options="field:'whSales29',width:100,align:'center'">武汉29天销量</th>
                        <th data-options="field:'whTurnoverDays29',width:100,align:'center'"
                            formatter="whTurnoverDays29">武汉29天周转天数
                        </th>
                        <th data-options="field:'whCount29',width:200,align:'center'" formatter="whCount29">
                            武汉29天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 30}">
                        <th data-options="field:'whSales30',width:100,align:'center'">武汉30天销量</th>
                        <th data-options="field:'whTurnoverDays30',width:100,align:'center'"
                            formatter="whTurnoverDays30">武汉30天周转天数
                        </th>
                        <th data-options="field:'whCount30',width:200,align:'center'" formatter="whCount30">
                            武汉30天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 90}">
                        <th data-options="field:'whSales90',width:100,align:'center'">武汉90天销量</th>
                        <th data-options="field:'whTurnoverDays90',width:100,align:'center'"
                            formatter="whTurnoverDays90">武汉90天周转天数
                        </th>
                        <th data-options="field:'whCount90',width:200,align:'center'" formatter="whCount90">
                            武汉90天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                </c:forEach>

                <th data-options="field:'syStock',width:100,align:'center'">沈阳库存</th>
                <c:forEach items="${sessionScope.salesList}" var="mt">
                    <c:if test="${mt == 1}">
                        <th data-options="field:'sySales1',width:100,align:'center'">沈阳1天销量</th>
                        <th data-options="field:'syTurnoverDays1',width:100,align:'center'" formatter="syTurnoverDays1">
                            沈阳1天周转天数
                        </th>
                        <th data-options="field:'syCount1',width:200,align:'center'" formatter="syCount1">
                            沈阳1天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 2}">
                        <th data-options="field:'sySales2',width:100,align:'center'">沈阳2天销量</th>
                        <th data-options="field:'syTurnoverDays2',width:100,align:'center'" formatter="syTurnoverDays2">
                            沈阳2天周转天数
                        </th>
                        <th data-options="field:'syCount2',width:200,align:'center'" formatter="syCount2">
                            沈阳2天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 3}">
                        <th data-options="field:'sySales3',width:100,align:'center'">沈阳3天销量</th>
                        <th data-options="field:'syTurnoverDays3',width:100,align:'center'" formatter="syTurnoverDays3">
                            沈阳3天周转天数
                        </th>
                        <th data-options="field:'syCount3',width:200,align:'center'" formatter="syCount3">
                            沈阳3天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 4}">
                        <th data-options="field:'sySales4',width:100,align:'center'">沈阳4天销量</th>
                        <th data-options="field:'syTurnoverDays4',width:100,align:'center'" formatter="syTurnoverDays4">
                            沈阳4天周转天数
                        </th>
                        <th data-options="field:'syCount4',width:200,align:'center'" formatter="syCount4">
                            沈阳4天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 5}">
                        <th data-options="field:'sySales5',width:100,align:'center'">沈阳5天销量</th>
                        <th data-options="field:'syTurnoverDays5',width:100,align:'center'" formatter="syTurnoverDays5">
                            沈阳5天周转天数
                        </th>
                        <th data-options="field:'syCount5',width:200,align:'center'" formatter="syCount5">
                            沈阳5天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 6}">
                        <th data-options="field:'sySales6',width:100,align:'center'">沈阳6天销量</th>
                        <th data-options="field:'syTurnoverDays6',width:100,align:'center'" formatter="syTurnoverDays6">
                            沈阳6天周转天数
                        </th>
                        <th data-options="field:'syCount6',width:200,align:'center'" formatter="syCount6">
                            沈阳6天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 7}">
                        <th data-options="field:'sySales7',width:100,align:'center'">沈阳7天销量</th>
                        <th data-options="field:'syTurnoverDays7',width:100,align:'center'" formatter="syTurnoverDays7">
                            沈阳7天周转天数
                        </th>
                        <th data-options="field:'syCount7',width:200,align:'center'" formatter="syCount7">
                            沈阳7天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 8}">
                        <th data-options="field:'sySales8',width:100,align:'center'">沈阳8天销量</th>
                        <th data-options="field:'syTurnoverDays8',width:100,align:'center'" formatter="syTurnoverDays8">
                            沈阳8天周转天数
                        </th>
                        <th data-options="field:'syCount8',width:200,align:'center'" formatter="syCount8">
                            沈阳8天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 9}">
                        <th data-options="field:'sySales9',width:100,align:'center'">沈阳9天销量</th>
                        <th data-options="field:'syTurnoverDays9',width:100,align:'center'" formatter="syTurnoverDays9">
                            沈阳9天周转天数
                        </th>
                        <th data-options="field:'syCount9',width:200,align:'center'" formatter="syCount9">
                            沈阳9天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 10}">
                        <th data-options="field:'sySales10',width:100,align:'center'">沈阳10天销量</th>
                        <th data-options="field:'syTurnoverDays10',width:100,align:'center'"
                            formatter="syTurnoverDays10">沈阳10天周转天数
                        </th>
                        <th data-options="field:'syCount10',width:200,align:'center'" formatter="syCount10">
                            沈阳10天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 11}">
                        <th data-options="field:'sySales11',width:100,align:'center'">沈阳11天销量</th>
                        <th data-options="field:'syTurnoverDays11',width:100,align:'center'"
                            formatter="syTurnoverDays11">沈阳11天周转天数
                        </th>
                        <th data-options="field:'syCount11',width:200,align:'center'" formatter="syCount11">
                            沈阳11天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 12}">
                        <th data-options="field:'sySales12',width:100,align:'center'">沈阳12天销量</th>
                        <th data-options="field:'syTurnoverDays12',width:100,align:'center'"
                            formatter="syTurnoverDays12">沈阳12天周转天数
                        </th>
                        <th data-options="field:'syCount12',width:200,align:'center'" formatter="syCount12">
                            沈阳12天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 13}">
                        <th data-options="field:'sySales13',width:100,align:'center'">沈阳13天销量</th>
                        <th data-options="field:'syTurnoverDays13',width:100,align:'center'"
                            formatter="syTurnoverDays13">沈阳13天周转天数
                        </th>
                        <th data-options="field:'syCount13',width:200,align:'center'" formatter="syCount13">
                            沈阳13天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 14}">
                        <th data-options="field:'sySales14',width:100,align:'center'">沈阳14天销量</th>
                        <th data-options="field:'syTurnoverDays14',width:100,align:'center'"
                            formatter="syTurnoverDays14">沈阳14天周转天数
                        </th>
                        <th data-options="field:'syCount14',width:200,align:'center'" formatter="syCount14">
                            沈阳14天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 15}">
                        <th data-options="field:'sySales15',width:100,align:'center'">沈阳15天销量</th>
                        <th data-options="field:'syTurnoverDays15',width:100,align:'center'"
                            formatter="syTurnoverDays15">沈阳15天周转天数
                        </th>
                        <th data-options="field:'syCount15',width:200,align:'center'" formatter="syCount15">
                            沈阳15天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 16}">
                        <th data-options="field:'sySales16',width:100,align:'center'">沈阳16天销量</th>
                        <th data-options="field:'syTurnoverDays16',width:100,align:'center'"
                            formatter="syTurnoverDays16">沈阳16天周转天数
                        </th>
                        <th data-options="field:'syCount16',width:200,align:'center'" formatter="syCount16">
                            沈阳16天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 17}">
                        <th data-options="field:'sySales17',width:100,align:'center'">沈阳17天销量</th>
                        <th data-options="field:'syTurnoverDays17',width:100,align:'center'"
                            formatter="syTurnoverDays17">沈阳17天周转天数
                        </th>
                        <th data-options="field:'syCount17',width:200,align:'center'" formatter="syCount17">
                            沈阳17天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 18}">
                        <th data-options="field:'sySales18',width:100,align:'center'">沈阳18天销量</th>
                        <th data-options="field:'syTurnoverDays18',width:100,align:'center'"
                            formatter="syTurnoverDays18">沈阳18天周转天数
                        </th>
                        <th data-options="field:'syCount18',width:200,align:'center'" formatter="syCount18">
                            沈阳18天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 19}">
                        <th data-options="field:'sySales19',width:100,align:'center'">沈阳19天销量</th>
                        <th data-options="field:'syTurnoverDays19',width:100,align:'center'"
                            formatter="syTurnoverDays19">沈阳19天周转天数
                        </th>
                        <th data-options="field:'syCount19',width:200,align:'center'" formatter="syCount19">
                            沈阳19天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 20}">
                        <th data-options="field:'sySales20',width:100,align:'center'">沈阳20天销量</th>
                        <th data-options="field:'syTurnoverDays20',width:100,align:'center'"
                            formatter="syTurnoverDays20">沈阳20天周转天数
                        </th>
                        <th data-options="field:'syCount20',width:200,align:'center'" formatter="syCount20">
                            沈阳20天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 21}">
                        <th data-options="field:'sySales21',width:100,align:'center'">沈阳21天销量</th>
                        <th data-options="field:'syTurnoverDays21',width:100,align:'center'"
                            formatter="syTurnoverDays21">沈阳21天周转天数
                        </th>
                        <th data-options="field:'syCount21',width:200,align:'center'" formatter="syCount21">
                            沈阳21天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 22}">
                        <th data-options="field:'sySales22',width:100,align:'center'">沈阳22天销量</th>
                        <th data-options="field:'syTurnoverDays22',width:100,align:'center'"
                            formatter="syTurnoverDays22">沈阳22天周转天数
                        </th>
                        <th data-options="field:'syCount22',width:200,align:'center'" formatter="syCount22">
                            沈阳22天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 23}">
                        <th data-options="field:'sySales23',width:100,align:'center'">沈阳23天销量</th>
                        <th data-options="field:'syTurnoverDays23',width:100,align:'center'"
                            formatter="syTurnoverDays23">沈阳23天周转天数
                        </th>
                        <th data-options="field:'syCount23',width:200,align:'center'" formatter="syCount23">
                            沈阳23天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 24}">
                        <th data-options="field:'sySales24',width:100,align:'center'">沈阳24天销量</th>
                        <th data-options="field:'syTurnoverDays24',width:100,align:'center'"
                            formatter="syTurnoverDays24">沈阳24天周转天数
                        </th>
                        <th data-options="field:'syCount24',width:200,align:'center'" formatter="syCount24">
                            沈阳24天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 25}">
                        <th data-options="field:'sySales25',width:100,align:'center'">沈阳25天销量</th>
                        <th data-options="field:'syTurnoverDays25',width:100,align:'center'"
                            formatter="syTurnoverDays25">沈阳25天周转天数
                        </th>
                        <th data-options="field:'syCount25',width:200,align:'center'" formatter="syCount25">
                            沈阳25天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 26}">
                        <th data-options="field:'sySales26',width:100,align:'center'">沈阳26天销量</th>
                        <th data-options="field:'syTurnoverDays26',width:100,align:'center'"
                            formatter="syTurnoverDays26">沈阳26天周转天数
                        </th>
                        <th data-options="field:'syCount26',width:200,align:'center'" formatter="syCount26">
                            沈阳26天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 27}">
                        <th data-options="field:'sySales27',width:100,align:'center'">沈阳27天销量</th>
                        <th data-options="field:'syTurnoverDays27',width:100,align:'center'"
                            formatter="syTurnoverDays27">沈阳27天周转天数
                        </th>
                        <th data-options="field:'syCount27',width:200,align:'center'" formatter="syCount27">
                            沈阳27天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 28}">
                        <th data-options="field:'sySales28',width:100,align:'center'">沈阳28天销量</th>
                        <th data-options="field:'syTurnoverDays28',width:100,align:'center'"
                            formatter="syTurnoverDays28">沈阳28天周转天数
                        </th>
                        <th data-options="field:'syCount28',width:200,align:'center'" formatter="syCount28">
                            沈阳28天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 29}">
                        <th data-options="field:'sySales29',width:100,align:'center'">沈阳29天销量</th>
                        <th data-options="field:'syTurnoverDays29',width:100,align:'center'"
                            formatter="syTurnoverDays29">沈阳29天周转天数
                        </th>
                        <th data-options="field:'syCount29',width:200,align:'center'" formatter="syCount29">
                            沈阳29天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 30}">
                        <th data-options="field:'sySales30',width:100,align:'center'">沈阳30天销量</th>
                        <th data-options="field:'syTurnoverDays30',width:100,align:'center'"
                            formatter="syTurnoverDays30">沈阳30天周转天数
                        </th>
                        <th data-options="field:'syCount30',width:200,align:'center'" formatter="syCount30">
                            沈阳30天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 31}">
                        <th data-options="field:'sySales31',width:100,align:'center'">沈阳31天销量</th>
                        <th data-options="field:'syTurnoverDays31',width:100,align:'center'"
                            formatter="syTurnoverDays31">沈阳31天周转天数
                        </th>
                        <th data-options="field:'syCount31',width:200,align:'center'" formatter="syCount31">
                            沈阳31天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 90}">
                        <th data-options="field:'sySales90',width:100,align:'center'">沈阳90天销量</th>
                        <th data-options="field:'syTurnoverDays90',width:100,align:'center'"
                            formatter="syTurnoverDays90">沈阳90天周转天数
                        </th>
                        <th data-options="field:'syCount90',width:200,align:'center'" formatter="syCount90">
                            沈阳90天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                </c:forEach>

                <th data-options="field:'xaStock',width:100,align:'center'">西安库存</th>
                <c:forEach items="${sessionScope.salesList}" var="mt">
                    <c:if test="${mt == 1}">
                        <th data-options="field:'xaSales1',width:100,align:'center'">西安1天销量</th>
                        <th data-options="field:'xaTurnoverDays1',width:100,align:'center'" formatter="xaTurnoverDays1">
                            西安1天周转天数
                        </th>
                        <th data-options="field:'xaCount1',width:200,align:'center'" formatter="xaCount1">
                            西安1天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 2}">
                        <th data-options="field:'xaSales2',width:100,align:'center'">西安2天销量</th>
                        <th data-options="field:'xaTurnoverDays2',width:100,align:'center'" formatter="xaTurnoverDays2">
                            西安2天周转天数
                        </th>
                        <th data-options="field:'xaCount2',width:200,align:'center'" formatter="xaCount2">
                            西安2天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 3}">
                        <th data-options="field:'xaSales3',width:100,align:'center'">西安3天销量</th>
                        <th data-options="field:'xaTurnoverDays3',width:100,align:'center'" formatter="xaTurnoverDays3">
                            西安3天周转天数
                        </th>
                        <th data-options="field:'xaCount3',width:200,align:'center'" formatter="xaCount3">
                            西安3天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 4}">
                        <th data-options="field:'xaSales4',width:100,align:'center'">西安4天销量</th>
                        <th data-options="field:'xaTurnoverDays4',width:100,align:'center'" formatter="xaTurnoverDays4">
                            西安4天周转天数
                        </th>
                        <th data-options="field:'xaCount4',width:200,align:'center'" formatter="xaCount4">
                            西安4天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 5}">
                        <th data-options="field:'xaSales5',width:100,align:'center'">西安5天销量</th>
                        <th data-options="field:'xaTurnoverDays5',width:100,align:'center'" formatter="xaTurnoverDays5">
                            西安5天周转天数
                        </th>
                        <th data-options="field:'xaCount5',width:200,align:'center'" formatter="xaCount5">
                            西安5天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 6}">
                        <th data-options="field:'xaSales6',width:100,align:'center'">西安6天销量</th>
                        <th data-options="field:'xaTurnoverDays6',width:100,align:'center'" formatter="xaTurnoverDays6">
                            西安6天周转天数
                        </th>
                        <th data-options="field:'xaCount6',width:200,align:'center'" formatter="xaCount6">
                            西安6天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 7}">
                        <th data-options="field:'xaSales7',width:100,align:'center'">西安7天销量</th>
                        <th data-options="field:'xaTurnoverDays7',width:100,align:'center'" formatter="xaTurnoverDays7">
                            西安7天周转天数
                        </th>
                        <th data-options="field:'xaCount7',width:200,align:'center'" formatter="xaCount7">
                            西安7天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 8}">
                        <th data-options="field:'xaSales8',width:100,align:'center'">西安8天销量</th>
                        <th data-options="field:'xaTurnoverDays8',width:100,align:'center'" formatter="xaTurnoverDays8">
                            西安8天周转天数
                        </th>
                        <th data-options="field:'xaCount8',width:200,align:'center'" formatter="xaCount8">
                            西安8天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 9}">
                        <th data-options="field:'xaSales9',width:100,align:'center'">西安9天销量</th>
                        <th data-options="field:'xaTurnoverDays9',width:100,align:'center'" formatter="xaTurnoverDays9">
                            西安9天周转天数
                        </th>
                        <th data-options="field:'xaCount9',width:200,align:'center'" formatter="xaCount9">
                            西安9天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 10}">
                        <th data-options="field:'xaSales10',width:100,align:'center'">西安10天销量</th>
                        <th data-options="field:'xaTurnoverDays10',width:100,align:'center'"
                            formatter="xaTurnoverDays10">西安10天周转天数
                        </th>
                        <th data-options="field:'xaCount10',width:200,align:'center'" formatter="xaCount10">
                            西安10天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 11}">
                        <th data-options="field:'xaSales11',width:100,align:'center'">西安11天销量</th>
                        <th data-options="field:'xaTurnoverDays11',width:100,align:'center'"
                            formatter="xaTurnoverDays11">西安11天周转天数
                        </th>
                        <th data-options="field:'xaCount11',width:200,align:'center'" formatter="xaCount11">
                            西安11天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 12}">
                        <th data-options="field:'xaSales12',width:100,align:'center'">西安12天销量</th>
                        <th data-options="field:'xaTurnoverDays12',width:100,align:'center'"
                            formatter="xaTurnoverDays12">西安12天周转天数
                        </th>
                        <th data-options="field:'xaCount12',width:200,align:'center'" formatter="xaCount12">
                            西安12天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 13}">
                        <th data-options="field:'xaSales13',width:100,align:'center'">西安13天销量</th>
                        <th data-options="field:'xaTurnoverDays13',width:100,align:'center'"
                            formatter="xaTurnoverDays13">西安13天周转天数
                        </th>
                        <th data-options="field:'xaCount13',width:200,align:'center'" formatter="xaCount13">
                            西安13天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 14}">
                        <th data-options="field:'xaSales14',width:100,align:'center'">西安14天销量</th>
                        <th data-options="field:'xaTurnoverDays14',width:100,align:'center'"
                            formatter="xaTurnoverDays14">西安14天周转天数
                        </th>
                        <th data-options="field:'xaCount14',width:200,align:'center'" formatter="xaCount14">
                            西安14天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 15}">
                        <th data-options="field:'xaSales15',width:100,align:'center'">西安15天销量</th>
                        <th data-options="field:'xaTurnoverDays15',width:100,align:'center'"
                            formatter="xaTurnoverDays15">西安15天周转天数
                        </th>
                        <th data-options="field:'xaCount15',width:200,align:'center'" formatter="xaCount15">
                            西安15天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 16}">
                        <th data-options="field:'xaSales16',width:100,align:'center'">西安16天销量</th>
                        <th data-options="field:'xaTurnoverDays16',width:100,align:'center'"
                            formatter="xaTurnoverDays16">西安16天周转天数
                        </th>
                        <th data-options="field:'xaCount16',width:200,align:'center'" formatter="xaCount16">
                            西安16天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 17}">
                        <th data-options="field:'xaSales17',width:100,align:'center'">西安17天销量</th>
                        <th data-options="field:'xaTurnoverDays17',width:100,align:'center'"
                            formatter="xaTurnoverDays17">西安17天周转天数
                        </th>
                        <th data-options="field:'xaCount17',width:200,align:'center'" formatter="xaCount17">
                            西安17天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 18}">
                        <th data-options="field:'xaSales18',width:100,align:'center'">西安18天销量</th>
                        <th data-options="field:'xaTurnoverDays18',width:100,align:'center'"
                            formatter="xaTurnoverDays18">西安18天周转天数
                        </th>
                        <th data-options="field:'xaCount18',width:200,align:'center'" formatter="xaCount18">
                            西安18天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 19}">
                        <th data-options="field:'xaSales19',width:100,align:'center'">西安19天销量</th>
                        <th data-options="field:'xaTurnoverDays19',width:100,align:'center'"
                            formatter="xaTurnoverDays19">西安19天周转天数
                        </th>
                        <th data-options="field:'xaCount19',width:200,align:'center'" formatter="xaCount19">
                            西安19天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 20}">
                        <th data-options="field:'xaSales20',width:100,align:'center'">西安20天销量</th>
                        <th data-options="field:'xaTurnoverDays20',width:100,align:'center'"
                            formatter="xaTurnoverDays20">西安20天周转天数
                        </th>
                        <th data-options="field:'xaCount20',width:200,align:'center'" formatter="xaCount20">
                            西安20天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 21}">
                        <th data-options="field:'xaSales21',width:100,align:'center'">西安21天销量</th>
                        <th data-options="field:'xaTurnoverDays21',width:100,align:'center'"
                            formatter="xaTurnoverDays21">西安21天周转天数
                        </th>
                        <th data-options="field:'xaCount21',width:200,align:'center'" formatter="xaCount21">
                            西安21天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 22}">
                        <th data-options="field:'xaSales22',width:100,align:'center'">西安22天销量</th>
                        <th data-options="field:'xaTurnoverDays22',width:100,align:'center'"
                            formatter="xaTurnoverDays22">西安22天周转天数
                        </th>
                        <th data-options="field:'xaCount22',width:200,align:'center'" formatter="xaCount22">
                            西安22天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 23}">
                        <th data-options="field:'xaSales23',width:100,align:'center'">西安23天销量</th>
                        <th data-options="field:'xaTurnoverDays23',width:100,align:'center'"
                            formatter="xaTurnoverDays23">西安23天周转天数
                        </th>
                        <th data-options="field:'xaCount23',width:200,align:'center'" formatter="xaCount23">
                            西安23天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 24}">
                        <th data-options="field:'xaSales24',width:100,align:'center'">西安24天销量</th>
                        <th data-options="field:'xaTurnoverDays24',width:100,align:'center'"
                            formatter="xaTurnoverDays24">西安24天周转天数
                        </th>
                        <th data-options="field:'xaCount24',width:200,align:'center'" formatter="xaCount24">
                            西安24天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 25}">
                        <th data-options="field:'xaSales25',width:100,align:'center'">西安25天销量</th>
                        <th data-options="field:'xaTurnoverDays25',width:100,align:'center'"
                            formatter="xaTurnoverDays25">西安25天周转天数
                        </th>
                        <th data-options="field:'xaCount25',width:200,align:'center'" formatter="xaCount25">
                            西安25天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 26}">
                        <th data-options="field:'xaSales26',width:100,align:'center'">西安26天销量</th>
                        <th data-options="field:'xaTurnoverDays26',width:100,align:'center'"
                            formatter="xaTurnoverDays26">西安26天周转天数
                        </th>
                        <th data-options="field:'xaCount26',width:200,align:'center'" formatter="xaCount26">
                            西安26天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 27}">
                        <th data-options="field:'xaSales27',width:100,align:'center'">西安27天销量</th>
                        <th data-options="field:'xaTurnoverDays27',width:100,align:'center'"
                            formatter="xaTurnoverDays27">西安27天周转天数
                        </th>
                        <th data-options="field:'xaCount27',width:200,align:'center'" formatter="xaCount27">
                            西安27天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 28}">
                        <th data-options="field:'xaSales28',width:100,align:'center'">西安28天销量</th>
                        <th data-options="field:'xaTurnoverDays28',width:100,align:'center'"
                            formatter="xaTurnoverDays28">西安28天周转天数
                        </th>
                        <th data-options="field:'xaCount28',width:200,align:'center'" formatter="xaCount28">
                            西安28天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 29}">
                        <th data-options="field:'xaSales29',width:100,align:'center'">西安29天销量</th>
                        <th data-options="field:'xaTurnoverDays29',width:100,align:'center'"
                            formatter="xaTurnoverDays29">西安29天周转天数
                        </th>
                        <th data-options="field:'xaCount29',width:200,align:'center'" formatter="xaCount29">
                            西安29天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 30}">
                        <th data-options="field:'xaSales30',width:100,align:'center'">西安30天销量</th>
                        <th data-options="field:'xaTurnoverDays30',width:100,align:'center'"
                            formatter="xaTurnoverDays30">西安30天周转天数
                        </th>
                        <th data-options="field:'xaCount30',width:200,align:'center'" formatter="xaCount30">
                            西安30天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 31}">
                        <th data-options="field:'xaSales31',width:100,align:'center'">西安31天销量</th>
                        <th data-options="field:'xaTurnoverDays31',width:100,align:'center'"
                            formatter="xaTurnoverDays31">西安31天周转天数
                        </th>
                        <th data-options="field:'xaCount31',width:200,align:'center'" formatter="xaCount31">
                            西安31天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 90}">
                        <th data-options="field:'xaSales90',width:100,align:'center'">西安90天销量</th>
                        <th data-options="field:'xaTurnoverDays90',width:100,align:'center'"
                            formatter="xaTurnoverDays90">西安90天周转天数
                        </th>
                        <th data-options="field:'xaCount90',width:200,align:'center'" formatter="xaCount90">
                            西安90天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                </c:forEach>

                <th data-options="field:'gaStock',width:100,align:'center'">固安库存</th>
                <c:forEach items="${sessionScope.salesList}" var="mt">
                    <c:if test="${mt == 1}">
                        <th data-options="field:'gaSales1',width:100,align:'center'">固安1天销量</th>
                        <th data-options="field:'gaTurnoverDays1',width:100,align:'center'" formatter="gaTurnoverDays1">
                            固安1天周转天数
                        </th>
                        <th data-options="field:'gaCount1',width:200,align:'center'" formatter="gaCount1">
                            固安1天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 2}">
                        <th data-options="field:'gaSales2',width:100,align:'center'">固安2天销量</th>
                        <th data-options="field:'gaTurnoverDays2',width:100,align:'center'" formatter="gaTurnoverDays2">
                            固安2天周转天数
                        </th>
                        <th data-options="field:'gaCount2',width:200,align:'center'" formatter="gaCount2">
                            固安2天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 3}">
                        <th data-options="field:'gaSales3',width:100,align:'center'">固安3天销量</th>
                        <th data-options="field:'gaTurnoverDays3',width:100,align:'center'" formatter="gaTurnoverDays3">
                            固安3天周转天数
                        </th>
                        <th data-options="field:'gaCount3',width:200,align:'center'" formatter="gaCount3">
                            固安3天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 4}">
                        <th data-options="field:'gaSales4',width:100,align:'center'">固安4天销量</th>
                        <th data-options="field:'gaTurnoverDays4',width:100,align:'center'" formatter="gaTurnoverDays4">
                            固安4天周转天数
                        </th>
                        <th data-options="field:'gaCount4',width:200,align:'center'" formatter="gaCount4">
                            固安4天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 5}">
                        <th data-options="field:'gaSales5',width:100,align:'center'">固安5天销量</th>
                        <th data-options="field:'gaTurnoverDays5',width:100,align:'center'" formatter="gaTurnoverDays5">
                            固安5天周转天数
                        </th>
                        <th data-options="field:'gaCount5',width:200,align:'center'" formatter="gaCount5">
                            固安5天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 6}">
                        <th data-options="field:'gaSales6',width:100,align:'center'">固安6天销量</th>
                        <th data-options="field:'gaTurnoverDays6',width:100,align:'center'" formatter="gaTurnoverDays6">
                            固安6天周转天数
                        </th>
                        <th data-options="field:'gaCount6',width:200,align:'center'" formatter="gaCount6">
                            固安6天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 7}">
                        <th data-options="field:'gaSales7',width:100,align:'center'">固安7天销量</th>
                        <th data-options="field:'gaTurnoverDays7',width:100,align:'center'" formatter="gaTurnoverDays7">
                            固安7天周转天数
                        </th>
                        <th data-options="field:'gaCount7',width:200,align:'center'" formatter="gaCount7">
                            固安7天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 8}">
                        <th data-options="field:'gaSales8',width:100,align:'center'">固安8天销量</th>
                        <th data-options="field:'gaTurnoverDays8',width:100,align:'center'" formatter="gaTurnoverDays8">
                            固安8天周转天数
                        </th>
                        <th data-options="field:'gaCount8',width:200,align:'center'" formatter="gaCount8">
                            固安8天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 9}">
                        <th data-options="field:'gaSales9',width:100,align:'center'">固安9天销量</th>
                        <th data-options="field:'gaTurnoverDays9',width:100,align:'center'" formatter="gaTurnoverDays9">
                            固安9天周转天数
                        </th>
                        <th data-options="field:'gaCount9',width:200,align:'center'" formatter="gaCount9">
                            固安9天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 10}">
                        <th data-options="field:'gaSales10',width:100,align:'center'">固安10天销量</th>
                        <th data-options="field:'gaTurnoverDays10',width:100,align:'center'"
                            formatter="gaTurnoverDays10">固安10天周转天数
                        </th>
                        <th data-options="field:'gaCount10',width:200,align:'center'" formatter="gaCount10">
                            固安10天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 11}">
                        <th data-options="field:'gaSales11',width:100,align:'center'">固安11天销量</th>
                        <th data-options="field:'gaTurnoverDays11',width:100,align:'center'"
                            formatter="gaTurnoverDays11">固安11天周转天数
                        </th>
                        <th data-options="field:'gaCount11',width:200,align:'center'" formatter="gaCount11">
                            固安11天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 12}">
                        <th data-options="field:'gaSales12',width:100,align:'center'">固安12天销量</th>
                        <th data-options="field:'gaTurnoverDays12',width:100,align:'center'"
                            formatter="gaTurnoverDays12">固安12天周转天数
                        </th>
                        <th data-options="field:'gaCount12',width:200,align:'center'" formatter="gaCount12">
                            固安12天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 13}">
                        <th data-options="field:'gaSales13',width:100,align:'center'">固安13天销量</th>
                        <th data-options="field:'gaTurnoverDays13',width:100,align:'center'"
                            formatter="gaTurnoverDays13">固安13天周转天数
                        </th>
                        <th data-options="field:'gaCount13',width:200,align:'center'" formatter="gaCount13">
                            固安13天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 14}">
                        <th data-options="field:'gaSales14',width:100,align:'center'">固安14天销量</th>
                        <th data-options="field:'gaTurnoverDays14',width:100,align:'center'"
                            formatter="gaTurnoverDays14">固安14天周转天数
                        </th>
                        <th data-options="field:'gaCount14',width:200,align:'center'" formatter="gaCount14">
                            固安14天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 15}">
                        <th data-options="field:'gaSales15',width:100,align:'center'">固安15天销量</th>
                        <th data-options="field:'gaTurnoverDays15',width:100,align:'center'"
                            formatter="gaTurnoverDays15">固安15天周转天数
                        </th>
                        <th data-options="field:'gaCount15',width:200,align:'center'" formatter="gaCount15">
                            固安15天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 16}">
                        <th data-options="field:'gaSales16',width:100,align:'center'">固安16天销量</th>
                        <th data-options="field:'gaTurnoverDays16',width:100,align:'center'"
                            formatter="gaTurnoverDays16">固安16天周转天数
                        </th>
                        <th data-options="field:'gaCount16',width:200,align:'center'" formatter="gaCount16">
                            固安16天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 17}">
                        <th data-options="field:'gaSales17',width:100,align:'center'">固安17天销量</th>
                        <th data-options="field:'gaTurnoverDays17',width:100,align:'center'"
                            formatter="gaTurnoverDays17">固安17天周转天数
                        </th>
                        <th data-options="field:'gaCount17',width:200,align:'center'" formatter="gaCount17">
                            固安17天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 18}">
                        <th data-options="field:'gaSales18',width:100,align:'center'">固安18天销量</th>
                        <th data-options="field:'gaTurnoverDays18',width:100,align:'center'"
                            formatter="gaTurnoverDays18">固安18天周转天数
                        </th>
                        <th data-options="field:'gaCount18',width:200,align:'center'" formatter="gaCount18">
                            固安18天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 19}">
                        <th data-options="field:'gaSales19',width:100,align:'center'">固安19天销量</th>
                        <th data-options="field:'gaTurnoverDays19',width:100,align:'center'"
                            formatter="gaTurnoverDays19">固安19天周转天数
                        </th>
                        <th data-options="field:'gaCount19',width:200,align:'center'" formatter="gaCount19">
                            固安19天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 20}">
                        <th data-options="field:'gaSales20',width:100,align:'center'">固安20天销量</th>
                        <th data-options="field:'gaTurnoverDays20',width:100,align:'center'"
                            formatter="gaTurnoverDays20">固安20天周转天数
                        </th>
                        <th data-options="field:'gaCount20',width:200,align:'center'" formatter="gaCount20">
                            固安20天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 21}">
                        <th data-options="field:'gaSales21',width:100,align:'center'">固安21天销量</th>
                        <th data-options="field:'gaTurnoverDays21',width:100,align:'center'"
                            formatter="gaTurnoverDays21">固安21天周转天数
                        </th>
                        <th data-options="field:'gaCount21',width:200,align:'center'" formatter="gaCount21">
                            固安21天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 22}">
                        <th data-options="field:'gaSales22',width:100,align:'center'">固安22天销量</th>
                        <th data-options="field:'gaTurnoverDays22',width:100,align:'center'"
                            formatter="gaTurnoverDays22">固安22天周转天数
                        </th>
                        <th data-options="field:'gaCount22',width:200,align:'center'" formatter="gaCount22">
                            固安22天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 23}">
                        <th data-options="field:'gaSales23',width:100,align:'center'">固安23天销量</th>
                        <th data-options="field:'gaTurnoverDays23',width:100,align:'center'"
                            formatter="gaTurnoverDays23">固安23天周转天数
                        </th>
                        <th data-options="field:'gaCount23',width:200,align:'center'" formatter="gaCount23">
                            固安23天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 24}">
                        <th data-options="field:'gaSales24',width:100,align:'center'">固安24天销量</th>
                        <th data-options="field:'gaTurnoverDays24',width:100,align:'center'"
                            formatter="gaTurnoverDays24">固安24天周转天数
                        </th>
                        <th data-options="field:'gaCount24',width:200,align:'center'" formatter="gaCount24">
                            固安24天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 25}">
                        <th data-options="field:'gaSales25',width:100,align:'center'">固安25天销量</th>
                        <th data-options="field:'gaTurnoverDays25',width:100,align:'center'"
                            formatter="gaTurnoverDays25">固安25天周转天数
                        </th>
                        <th data-options="field:'gaCount25',width:200,align:'center'" formatter="gaCount25">
                            固安25天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 26}">
                        <th data-options="field:'gaSales26',width:100,align:'center'">固安26天销量</th>
                        <th data-options="field:'gaTurnoverDays26',width:100,align:'center'"
                            formatter="gaTurnoverDays26">固安26天周转天数
                        </th>
                        <th data-options="field:'gaCount26',width:200,align:'center'" formatter="gaCount26">
                            固安26天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 27}">
                        <th data-options="field:'gaSales27',width:100,align:'center'">固安27天销量</th>
                        <th data-options="field:'gaTurnoverDays27',width:100,align:'center'"
                            formatter="gaTurnoverDays27">固安27天周转天数
                        </th>
                        <th data-options="field:'gaCount27',width:200,align:'center'" formatter="gaCount27">
                            固安27天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 28}">
                        <th data-options="field:'gaSales28',width:100,align:'center'">固安28天销量</th>
                        <th data-options="field:'gaTurnoverDays28',width:100,align:'center'"
                            formatter="gaTurnoverDays28">固安28天周转天数
                        </th>
                        <th data-options="field:'gaCount28',width:200,align:'center'" formatter="gaCount28">
                            固安28天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 29}">
                        <th data-options="field:'gaSales29',width:100,align:'center'">固安29天销量</th>
                        <th data-options="field:'gaTurnoverDays29',width:100,align:'center'"
                            formatter="gaTurnoverDays29">固安29天周转天数
                        </th>
                        <th data-options="field:'gaCount29',width:200,align:'center'" formatter="gaCount29">
                            固安29天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 30}">
                        <th data-options="field:'gaSales30',width:100,align:'center'">固安30天销量</th>
                        <th data-options="field:'gaTurnoverDays30',width:100,align:'center'"
                            formatter="gaTurnoverDays30">固安30天周转天数
                        </th>
                        <th data-options="field:'gaCount30',width:200,align:'center'" formatter="gaCount30">
                            固安30天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 31}">
                        <th data-options="field:'gaSales31',width:100,align:'center'">固安31天销量</th>
                        <th data-options="field:'gaTurnoverDays31',width:100,align:'center'"
                            formatter="gaTurnoverDays31">固安31天周转天数
                        </th>
                        <th data-options="field:'gaCount31',width:200,align:'center'" formatter="gaCount31">
                            固安31天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                    <c:if test="${mt == 90}">
                        <th data-options="field:'gaSales90',width:100,align:'center'">固安90天销量</th>
                        <th data-options="field:'gaTurnoverDays90',width:100,align:'center'"
                            formatter="gaTurnoverDays90">固安90天周转天数
                        </th>
                        <th data-options="field:'gaCount90',width:200,align:'center'" formatter="gaCount90">
                            固安90天补货数【补${sessionScope.days}天】
                        </th>
                    </c:if>
                </c:forEach>

            </c:otherwise>
        </c:choose>


    </tr>
    </thead>
</table>
<div id="tb" style="padding:5px;height:auto">
    <div style="margin-bottom:5px">
        <label>选择周期：</label>
        <select class="easyui-combobox" data-options="editable:false" id="cycle" style="width:100px;">
            <option></option>
            <c:forEach items="${sessionScope.salesList}" var="mt">
                <option value="${mt}">${mt}天</option>
            </c:forEach>
        </select>
        <label>到</label>
        <select class="easyui-combobox" data-options="editable:false" id="cycle1" style="width:100px;">
            <option></option>
            <c:forEach items="${sessionScope.salesList}" var="mt">
                <option value="${mt}">${mt}天</option>
            </c:forEach>
        </select>
        <a href="javascript:;" onclick="contrast()"
           class="easyui-linkbutton" iconCls="icon-search">比对增长率</a>
    </div>
</div>


<div style="text-align: right; margin-right: 50px;"><a href="<%=path %>/home.jsp">返回首页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
        href="<%=path %>/look.jsp">查看文档</a></div>

<script>
    $(function() {
        setPagination("list");
    });

    function contrast() {
        var rows = $("#list").datagrid("getSelections"); // 获取所有选中的数据
        var length = rows.length;
        if (length == 1) {
            var cycle = $("#cycle").combobox('getValue');
            var cycle1 = $("#cycle1").combobox('getValue');
            if (cycle != null && cycle != "" && cycle1 != null && cycle1 != "") {

                var city = '${sessionScope.city}';
                var salesMin;
                var salesMax;
                var growthRate
                if (city == "all") {
                    if (cycle == 1) {
                        salesMin = rows[0].bjSales1;
                    } else if (cycle == 2) {
                        salesMin = rows[0].bjSales2;
                    } else if (cycle == 3) {
                        salesMin = rows[0].bjSales3;
                    } else if (cycle == 4) {
                        salesMin = rows[0].bjSales4;
                    } else if (cycle == 5) {
                        salesMin = rows[0].bjSales5;
                    } else if (cycle == 6) {
                        salesMin = rows[0].bjSales6;
                    } else if (cycle == 7) {
                        salesMin = rows[0].bjSales7;
                    } else if (cycle == 8) {
                        salesMin = rows[0].bjSales8;
                    } else if (cycle == 9) {
                        salesMin = rows[0].bjSales9;
                    } else if (cycle == 10) {
                        salesMin = rows[0].bjSales10;
                    } else if (cycle == 11) {
                        salesMin = rows[0].bjSales11;
                    } else if (cycle == 12) {
                        salesMin = rows[0].bjSales12;
                    } else if (cycle == 13) {
                        salesMin = rows[0].bjSales13;
                    } else if (cycle == 14) {
                        salesMin = rows[0].bjSales14;
                    } else if (cycle == 15) {
                        salesMin = rows[0].bjSales15;
                    } else if (cycle == 16) {
                        salesMin = rows[0].bjSales16;
                    } else if (cycle == 17) {
                        salesMin = rows[0].bjSales17;
                    } else if (cycle == 18) {
                        salesMin = rows[0].bjSales18;
                    } else if (cycle == 19) {
                        salesMin = rows[0].bjSales19;
                    } else if (cycle == 20) {
                        salesMin = rows[0].bjSales20;
                    } else if (cycle == 21) {
                        salesMin = rows[0].bjSales21;
                    } else if (cycle == 22) {
                        salesMin = rows[0].bjSales22;
                    } else if (cycle == 23) {
                        salesMin = rows[0].bjSales23;
                    } else if (cycle == 24) {
                        salesMin = rows[0].bjSales24;
                    } else if (cycle == 25) {
                        salesMin = rows[0].bjSales25;
                    } else if (cycle == 26) {
                        salesMin = rows[0].bjSales26;
                    } else if (cycle == 27) {
                        salesMin = rows[0].bjSales27;
                    } else if (cycle == 28) {
                        salesMin = rows[0].bjSales28;
                    } else if (cycle == 29) {
                        salesMin = rows[0].bjSales29;
                    } else if (cycle == 30) {
                        salesMin = rows[0].bjSales30;
                    } else if (cycle == 31) {
                        salesMin = rows[0].bjSales31;
                    }

                    if (cycle1 == 1) {
                        salesMax = rows[0].bjSales1;
                    } else if (cycle1 == 2) {
                        salesMax = rows[0].bjSales2;
                    } else if (cycle1 == 3) {
                        salesMax = rows[0].bjSales3;
                    } else if (cycle1 == 4) {
                        salesMax = rows[0].bjSales4;
                    } else if (cycle1 == 5) {
                        salesMax = rows[0].bjSales5;
                    } else if (cycle1 == 6) {
                        salesMax = rows[0].bjSales6;
                    } else if (cycle1 == 7) {
                        salesMax = rows[0].bjSales7;
                    } else if (cycle1 == 8) {
                        salesMax = rows[0].bjSales8;
                    } else if (cycle1 == 9) {
                        salesMax = rows[0].bjSales9;
                    } else if (cycle1 == 10) {
                        salesMax = rows[0].bjSales10;
                    } else if (cycle1 == 11) {
                        salesMax = rows[0].bjSales11;
                    } else if (cycle1 == 12) {
                        salesMax = rows[0].bjSales12;
                    } else if (cycle1 == 13) {
                        salesMax = rows[0].bjSales13;
                    } else if (cycle1 == 14) {
                        salesMax = rows[0].bjSales14;
                    } else if (cycle1 == 15) {
                        salesMax = rows[0].bjSales15;
                    } else if (cycle1 == 16) {
                        salesMax = rows[0].bjSales16;
                    } else if (cycle1 == 17) {
                        salesMax = rows[0].bjSales17;
                    } else if (cycle1 == 18) {
                        salesMax = rows[0].bjSales18;
                    } else if (cycle1 == 19) {
                        salesMax = rows[0].bjSales19;
                    } else if (cycle1 == 20) {
                        salesMax = rows[0].bjSales20;
                    } else if (cycle1 == 21) {
                        salesMax = rows[0].bjSales21;
                    } else if (cycle1 == 22) {
                        salesMax = rows[0].bjSales22;
                    } else if (cycle1 == 23) {
                        salesMax = rows[0].bjSales23;
                    } else if (cycle1 == 24) {
                        salesMax = rows[0].bjSales24;
                    } else if (cycle1 == 25) {
                        salesMax = rows[0].bjSales25;
                    } else if (cycle1 == 26) {
                        salesMax = rows[0].bjSales26;
                    } else if (cycle1 == 27) {
                        salesMax = rows[0].bjSales27;
                    } else if (cycle1 == 28) {
                        salesMax = rows[0].bjSales28;
                    } else if (cycle1 == 29) {
                        salesMax = rows[0].bjSales29;
                    } else if (cycle1 == 30) {
                        salesMax = rows[0].bjSales30;
                    } else if (cycle1 == 31) {
                        salesMax = rows[0].bjSales31;
                    }
                    var bj = calcGrowthRate(salesMin, salesMax);

                    if (cycle == 1) {
                        salesMin = rows[0].shSales1;
                    }else if (cycle == 2) {
                        salesMin = rows[0].shSales2;
                    }else if (cycle == 3) {
                        salesMin = rows[0].shSales3;
                    }else if (cycle == 4) {
                        salesMin = rows[0].shSales4;
                    }else if (cycle == 5) {
                        salesMin = rows[0].shSales5;
                    }else if (cycle == 6) {
                        salesMin = rows[0].shSales6;
                    }else if (cycle == 7) {
                        salesMin = rows[0].shSales7;
                    }else if (cycle == 8) {
                        salesMin = rows[0].shSales8;
                    }else if (cycle == 9) {
                        salesMin = rows[0].shSales9;
                    }else if (cycle == 10) {
                        salesMin = rows[0].shSales10;
                    }else if (cycle == 11) {
                        salesMin = rows[0].shSales11;
                    }else if (cycle == 12) {
                        salesMin = rows[0].shSales12;
                    }else if (cycle == 13) {
                        salesMin = rows[0].shSales13;
                    }else if (cycle == 14) {
                        salesMin = rows[0].shSales14;
                    }else if (cycle == 15) {
                        salesMin = rows[0].shSales15;
                    }else if (cycle == 16) {
                        salesMin = rows[0].shSales16;
                    }else if (cycle == 17) {
                        salesMin = rows[0].shSales17;
                    }else if (cycle == 18) {
                        salesMin = rows[0].shSales18;
                    }else if (cycle == 19) {
                        salesMin = rows[0].shSales19;
                    }else if (cycle == 20) {
                        salesMin = rows[0].shSales20;
                    }else if (cycle == 21) {
                        salesMin = rows[0].shSales21;
                    }else if (cycle == 22) {
                        salesMin = rows[0].shSales22;
                    }else if (cycle == 23) {
                        salesMin = rows[0].shSales23;
                    }else if (cycle == 24) {
                        salesMin = rows[0].shSales24;
                    }else if (cycle == 25) {
                        salesMin = rows[0].shSales25;
                    }else if (cycle == 26) {
                        salesMin = rows[0].shSales26;
                    }else if (cycle == 27) {
                        salesMin = rows[0].shSales27;
                    }else if (cycle == 28) {
                        salesMin = rows[0].shSales28;
                    }else if (cycle == 29) {
                        salesMin = rows[0].shSales29;
                    }else if (cycle == 30) {
                        salesMin = rows[0].shSales30;
                    }else if (cycle == 31) {
                        salesMin = rows[0].shSales31;
                    }else if (cycle1 == 1) {
                        salesMax = rows[0].shSales1;
                    }

                    if (cycle1 == 2) {
                        salesMax = rows[0].shSales2;
                    }else if (cycle1 == 3) {
                        salesMax = rows[0].shSales3;
                    }else if (cycle1 == 4) {
                        salesMax = rows[0].shSales4;
                    }else if (cycle1 == 5) {
                        salesMax = rows[0].shSales5;
                    }else if (cycle1 == 6) {
                        salesMax = rows[0].shSales6;
                    }else if (cycle1 == 7) {
                        salesMax = rows[0].shSales7;
                    }else if (cycle1 == 8) {
                        salesMax = rows[0].shSales8;
                    }else if (cycle1 == 9) {
                        salesMax = rows[0].shSales9;
                    }else if (cycle1 == 10) {
                        salesMax = rows[0].shSales10;
                    }else if (cycle1 == 11) {
                        salesMax = rows[0].shSales11;
                    }else if (cycle1 == 12) {
                        salesMax = rows[0].shSales12;
                    }else if (cycle1 == 13) {
                        salesMax = rows[0].shSales13;
                    }else if (cycle1 == 14) {
                        salesMax = rows[0].shSales14;
                    }else if (cycle1 == 15) {
                        salesMax = rows[0].shSales15;
                    }else if (cycle1 == 16) {
                        salesMax = rows[0].shSales16;
                    }else if (cycle1 == 17) {
                        salesMax = rows[0].shSales17;
                    }else if (cycle1 == 18) {
                        salesMax = rows[0].shSales18;
                    }else if (cycle1 == 19) {
                        salesMax = rows[0].shSales19;
                    }else if (cycle1 == 20) {
                        salesMax = rows[0].shSales20;
                    }else if (cycle1 == 21) {
                        salesMax = rows[0].shSales21;
                    }else if (cycle1 == 22) {
                        salesMax = rows[0].shSales22;
                    }else if (cycle1 == 23) {
                        salesMax = rows[0].shSales23;
                    }else if (cycle1 == 24) {
                        salesMax = rows[0].shSales24;
                    }else if (cycle1 == 25) {
                        salesMax = rows[0].shSales25;
                    }else if (cycle1 == 26) {
                        salesMax = rows[0].shSales26;
                    }else if (cycle1 == 27) {
                        salesMax = rows[0].shSales27;
                    }else if (cycle1 == 28) {
                        salesMax = rows[0].shSales28;
                    }else if (cycle1 == 29) {
                        salesMax = rows[0].shSales29;
                    }else if (cycle1 == 30) {
                        salesMax = rows[0].shSales30;
                    }else if (cycle1 == 31) {
                        salesMax = rows[0].shSales31;
                    }
                    var sh = calcGrowthRate(salesMin, salesMax);

                    if (cycle == 1) {
                        salesMin = rows[0].gzSales1;
                    }else if (cycle == 2) {
                        salesMin = rows[0].gzSales2;
                    }else if (cycle == 3) {
                        salesMin = rows[0].gzSales3;
                    }else if (cycle == 4) {
                        salesMin = rows[0].gzSales4;
                    }else if (cycle == 5) {
                        salesMin = rows[0].gzSales5;
                    }else if (cycle == 6) {
                        salesMin = rows[0].gzSales6;
                    }else if (cycle == 7) {
                        salesMin = rows[0].gzSales7;
                    }else if (cycle == 8) {
                        salesMin = rows[0].gzSales8;
                    }else if (cycle == 9) {
                        salesMin = rows[0].gzSales9;
                    }else if (cycle == 10) {
                        salesMin = rows[0].gzSales10;
                    }else if (cycle == 11) {
                        salesMin = rows[0].gzSales11;
                    }else if (cycle == 12) {
                        salesMin = rows[0].gzSales12;
                    }else if (cycle == 13) {
                        salesMin = rows[0].gzSales13;
                    }else if (cycle == 14) {
                        salesMin = rows[0].gzSales14;
                    }else if (cycle == 15) {
                        salesMin = rows[0].gzSales15;
                    }else if (cycle == 16) {
                        salesMin = rows[0].gzSales16;
                    }else if (cycle == 17) {
                        salesMin = rows[0].gzSales17;
                    }else if (cycle == 18) {
                        salesMin = rows[0].gzSales18;
                    }else if (cycle == 19) {
                        salesMin = rows[0].gzSales19;
                    }else if (cycle == 20) {
                        salesMin = rows[0].gzSales20;
                    }else if (cycle == 21) {
                        salesMin = rows[0].gzSales21;
                    }else if (cycle == 22) {
                        salesMin = rows[0].gzSales22;
                    }else if (cycle == 23) {
                        salesMin = rows[0].gzSales23;
                    }else if (cycle == 24) {
                        salesMin = rows[0].gzSales24;
                    }else if (cycle == 25) {
                        salesMin = rows[0].gzSales25;
                    }else if (cycle == 26) {
                        salesMin = rows[0].gzSales26;
                    }else if (cycle == 27) {
                        salesMin = rows[0].gzSales27;
                    }else if (cycle == 28) {
                        salesMin = rows[0].gzSales28;
                    }else if (cycle == 29) {
                        salesMin = rows[0].gzSales29;
                    }else if (cycle == 30) {
                        salesMin = rows[0].gzSales30;
                    }else if (cycle == 31) {
                        salesMin = rows[0].gzSales31;
                    }

                    if (cycle1 == 1) {
                        salesMax = rows[0].gzSales1;
                    }else if (cycle1 == 2) {
                        salesMax = rows[0].gzSales2;
                    }else if (cycle1 == 3) {
                        salesMax = rows[0].gzSales3;
                    }else if (cycle1 == 4) {
                        salesMax = rows[0].gzSales4;
                    }else if (cycle1 == 5) {
                        salesMax = rows[0].gzSales5;
                    }else if (cycle1 == 6) {
                        salesMax = rows[0].gzSales6;
                    }else if (cycle1 == 7) {
                        salesMax = rows[0].gzSales7;
                    }else if (cycle1 == 8) {
                        salesMax = rows[0].gzSales8;
                    }else if (cycle1 == 9) {
                        salesMax = rows[0].gzSales9;
                    }else if (cycle1 == 10) {
                        salesMax = rows[0].gzSales10;
                    }else if (cycle1 == 11) {
                        salesMax = rows[0].gzSales11;
                    }else if (cycle1 == 12) {
                        salesMax = rows[0].gzSales12;
                    }else if (cycle1 == 13) {
                        salesMax = rows[0].gzSales13;
                    }else if (cycle1 == 14) {
                        salesMax = rows[0].gzSales14;
                    }else if (cycle1 == 15) {
                        salesMax = rows[0].gzSales15;
                    }else if (cycle1 == 16) {
                        salesMax = rows[0].gzSales16;
                    }else if (cycle1 == 17) {
                        salesMax = rows[0].gzSales17;
                    }else if (cycle1 == 18) {
                        salesMax = rows[0].gzSales18;
                    }else if (cycle1 == 19) {
                        salesMax = rows[0].gzSales19;
                    }else if (cycle1 == 20) {
                        salesMax = rows[0].gzSales20;
                    }else if (cycle1 == 21) {
                        salesMax = rows[0].gzSales21;
                    }else if (cycle1 == 22) {
                        salesMax = rows[0].gzSales22;
                    }else if (cycle1 == 23) {
                        salesMax = rows[0].gzSales23;
                    }else if (cycle1 == 24) {
                        salesMax = rows[0].gzSales24;
                    }else if (cycle1 == 25) {
                        salesMax = rows[0].gzSales25;
                    }else if (cycle1 == 26) {
                        salesMax = rows[0].gzSales26;
                    }else if (cycle1 == 27) {
                        salesMax = rows[0].gzSales27;
                    }else if (cycle1 == 28) {
                        salesMax = rows[0].gzSales28;
                    }else if (cycle1 == 29) {
                        salesMax = rows[0].gzSales29;
                    }else if (cycle1 == 30) {
                        salesMax = rows[0].gzSales30;
                    }else if (cycle1 == 31) {
                        salesMax = rows[0].gzSales31;
                    }
                    var gz = calcGrowthRate(salesMin, salesMax);

                    if (cycle1 == 1) {
                        salesMax = rows[0].cdSales1;
                    }else if (cycle1 == 2) {
                        salesMax = rows[0].cdSales2;
                    }else if (cycle1 == 3) {
                        salesMax = rows[0].cdSales3;
                    }else if (cycle1 == 4) {
                        salesMax = rows[0].cdSales4;
                    }else if (cycle1 == 5) {
                        salesMax = rows[0].cdSales5;
                    }else if (cycle1 == 6) {
                        salesMax = rows[0].cdSales6;
                    }else if (cycle1 == 7) {
                        salesMax = rows[0].cdSales7;
                    }else if (cycle1 == 8) {
                        salesMax = rows[0].cdSales8;
                    }else if (cycle1 == 9) {
                        salesMax = rows[0].cdSales9;
                    }else if (cycle1 == 10) {
                        salesMax = rows[0].cdSales10;
                    }else if (cycle1 == 11) {
                        salesMax = rows[0].cdSales11;
                    }else if (cycle1 == 12) {
                        salesMax = rows[0].cdSales12;
                    }else if (cycle1 == 13) {
                        salesMax = rows[0].cdSales13;
                    }else if (cycle1 == 14) {
                        salesMax = rows[0].cdSales14;
                    }else if (cycle1 == 15) {
                        salesMax = rows[0].cdSales15;
                    }else if (cycle1 == 16) {
                        salesMax = rows[0].cdSales16;
                    }else if (cycle1 == 17) {
                        salesMax = rows[0].cdSales17;
                    }else if (cycle1 == 18) {
                        salesMax = rows[0].cdSales18;
                    }else if (cycle1 == 19) {
                        salesMax = rows[0].cdSales19;
                    }else if (cycle1 == 20) {
                        salesMax = rows[0].cdSales20;
                    }else if (cycle1 == 21) {
                        salesMax = rows[0].cdSales21;
                    }else if (cycle1 == 22) {
                        salesMax = rows[0].cdSales22;
                    }else if (cycle1 == 23) {
                        salesMax = rows[0].cdSales23;
                    }else if (cycle1 == 24) {
                        salesMax = rows[0].cdSales24;
                    }else if (cycle1 == 25) {
                        salesMax = rows[0].cdSales25;
                    }else if (cycle1 == 26) {
                        salesMax = rows[0].cdSales26;
                    }else if (cycle1 == 27) {
                        salesMax = rows[0].cdSales27;
                    }else if (cycle1 == 28) {
                        salesMax = rows[0].cdSales28;
                    }else if (cycle1 == 29) {
                        salesMax = rows[0].cdSales29;
                    }else if (cycle1 == 30) {
                        salesMax = rows[0].cdSales30;
                    }else if (cycle1 == 31) {
                        salesMax = rows[0].cdSales31;
                    }

                    if (cycle == 1) {
                        salesMin = rows[0].cdSales1;
                    }else if (cycle == 2) {
                        salesMin = rows[0].cdSales2;
                    }else if (cycle == 3) {
                        salesMin = rows[0].cdSales3;
                    }else if (cycle == 4) {
                        salesMin = rows[0].cdSales4;
                    }else if (cycle == 5) {
                        salesMin = rows[0].cdSales5;
                    }else if (cycle == 6) {
                        salesMin = rows[0].cdSales6;
                    }else if (cycle == 7) {
                        salesMin = rows[0].cdSales7;
                    }else if (cycle == 8) {
                        salesMin = rows[0].cdSales8;
                    }else if (cycle == 9) {
                        salesMin = rows[0].cdSales9;
                    }else if (cycle == 10) {
                        salesMin = rows[0].cdSales10;
                    }else if (cycle == 11) {
                        salesMin = rows[0].cdSales11;
                    }else if (cycle == 12) {
                        salesMin = rows[0].cdSales12;
                    }else if (cycle == 13) {
                        salesMin = rows[0].cdSales13;
                    }else if (cycle == 14) {
                        salesMin = rows[0].cdSales14;
                    }else if (cycle == 15) {
                        salesMin = rows[0].cdSales15;
                    }else if (cycle == 16) {
                        salesMin = rows[0].cdSales16;
                    }else if (cycle == 17) {
                        salesMin = rows[0].cdSales17;
                    }else if (cycle == 18) {
                        salesMin = rows[0].cdSales18;
                    }else if (cycle == 19) {
                        salesMin = rows[0].cdSales19;
                    }else if (cycle == 20) {
                        salesMin = rows[0].cdSales20;
                    }else if (cycle == 21) {
                        salesMin = rows[0].cdSales21;
                    }else if (cycle == 22) {
                        salesMin = rows[0].cdSales22;
                    }else if (cycle == 23) {
                        salesMin = rows[0].cdSales23;
                    }else if (cycle == 24) {
                        salesMin = rows[0].cdSales24;
                    }else if (cycle == 25) {
                        salesMin = rows[0].cdSales25;
                    }else if (cycle == 26) {
                        salesMin = rows[0].cdSales26;
                    }else if (cycle == 27) {
                        salesMin = rows[0].cdSales27;
                    }else if (cycle == 28) {
                        salesMin = rows[0].cdSales28;
                    }else if (cycle == 29) {
                        salesMin = rows[0].cdSales29;
                    }else if (cycle == 30) {
                        salesMin = rows[0].cdSales30;
                    }else if (cycle == 31) {
                        salesMin = rows[0].cdSales31;
                    }
                    var cd = calcGrowthRate(salesMin, salesMax);

                    if (cycle == 1) {
                        salesMin = rows[0].whSales1;
                    }else if (cycle == 2) {
                        salesMin = rows[0].whSales2;
                    }else if (cycle == 3) {
                        salesMin = rows[0].whSales3;
                    }else if (cycle == 4) {
                        salesMin = rows[0].whSales4;
                    }else if (cycle == 5) {
                        salesMin = rows[0].whSales5;
                    }else if (cycle == 6) {
                        salesMin = rows[0].whSales6;
                    }else if (cycle == 7) {
                        salesMin = rows[0].whSales7;
                    }else if (cycle == 8) {
                        salesMin = rows[0].whSales8;
                    }else if (cycle == 9) {
                        salesMin = rows[0].whSales9;
                    }else if (cycle == 10) {
                        salesMin = rows[0].whSales10;
                    }else if (cycle == 11) {
                        salesMin = rows[0].whSales11;
                    }else if (cycle == 12) {
                        salesMin = rows[0].whSales12;
                    }else if (cycle == 13) {
                        salesMin = rows[0].whSales13;
                    }else if (cycle == 14) {
                        salesMin = rows[0].whSales14;
                    }else if (cycle == 15) {
                        salesMin = rows[0].whSales15;
                    }else if (cycle == 16) {
                        salesMin = rows[0].whSales16;
                    }else if (cycle == 17) {
                        salesMin = rows[0].whSales17;
                    }else if (cycle == 18) {
                        salesMin = rows[0].whSales18;
                    }else if (cycle == 19) {
                        salesMin = rows[0].whSales19;
                    }else if (cycle == 20) {
                        salesMin = rows[0].whSales20;
                    }else if (cycle == 21) {
                        salesMin = rows[0].whSales21;
                    }else if (cycle == 22) {
                        salesMin = rows[0].whSales22;
                    }else if (cycle == 23) {
                        salesMin = rows[0].whSales23;
                    }else if (cycle == 24) {
                        salesMin = rows[0].whSales24;
                    }else if (cycle == 25) {
                        salesMin = rows[0].whSales25;
                    }else if (cycle == 26) {
                        salesMin = rows[0].whSales26;
                    }else if (cycle == 27) {
                        salesMin = rows[0].whSales27;
                    }else if (cycle == 28) {
                        salesMin = rows[0].whSales28;
                    }else if (cycle == 29) {
                        salesMin = rows[0].whSales29;
                    }else if (cycle == 30) {
                        salesMin = rows[0].whSales30;
                    }else if (cycle == 31) {
                        salesMin = rows[0].whSales31;
                    }

                    if (cycle1 == 1) {
                        salesMax = rows[0].whSales1;
                    }else if (cycle1 == 2) {
                        salesMax = rows[0].whSales2;
                    }else if (cycle1 == 3) {
                        salesMax = rows[0].whSales3;
                    }else if (cycle1 == 4) {
                        salesMax = rows[0].whSales4;
                    }else if (cycle1 == 5) {
                        salesMax = rows[0].whSales5;
                    }else if (cycle1 == 6) {
                        salesMax = rows[0].whSales6;
                    }else if (cycle1 == 7) {
                        salesMax = rows[0].whSales7;
                    }else if (cycle1 == 8) {
                        salesMax = rows[0].whSales8;
                    }else if (cycle1 == 9) {
                        salesMax = rows[0].whSales9;
                    }else if (cycle1 == 10) {
                        salesMax = rows[0].whSales10;
                    }else if (cycle1 == 11) {
                        salesMax = rows[0].whSales11;
                    }else if (cycle1 == 12) {
                        salesMax = rows[0].whSales12;
                    }else if (cycle1 == 13) {
                        salesMax = rows[0].whSales13;
                    }else if (cycle1 == 14) {
                        salesMax = rows[0].whSales14;
                    }else if (cycle1 == 15) {
                        salesMax = rows[0].whSales15;
                    }else if (cycle1 == 16) {
                        salesMax = rows[0].whSales16;
                    }else if (cycle1 == 17) {
                        salesMax = rows[0].whSales17;
                    }else if (cycle1 == 18) {
                        salesMax = rows[0].whSales18;
                    }else if (cycle1 == 19) {
                        salesMax = rows[0].whSales19;
                    }else if (cycle1 == 20) {
                        salesMax = rows[0].whSales20;
                    }else if (cycle1 == 21) {
                        salesMax = rows[0].whSales21;
                    }else if (cycle1 == 22) {
                        salesMax = rows[0].whSales22;
                    }else if (cycle1 == 23) {
                        salesMax = rows[0].whSales23;
                    }else if (cycle1 == 24) {
                        salesMax = rows[0].whSales24;
                    }else if (cycle1 == 25) {
                        salesMax = rows[0].whSales25;
                    }else if (cycle1 == 26) {
                        salesMax = rows[0].whSales26;
                    }else if (cycle1 == 27) {
                        salesMax = rows[0].whSales27;
                    }else if (cycle1 == 28) {
                        salesMax = rows[0].whSales28;
                    }else if (cycle1 == 29) {
                        salesMax = rows[0].whSales29;
                    }else if (cycle1 == 30) {
                        salesMax = rows[0].whSales30;
                    }else if (cycle1 == 31) {
                        salesMax = rows[0].whSales31;
                    }
                    var wh = calcGrowthRate(salesMin, salesMax);

                    if (cycle == 1) {
                        salesMin = rows[0].sySales1;
                    }else if (cycle == 2) {
                        salesMin = rows[0].sySales2;
                    }else if (cycle == 3) {
                        salesMin = rows[0].sySales3;
                    }else if (cycle == 4) {
                        salesMin = rows[0].sySales4;
                    }else if (cycle == 5) {
                        salesMin = rows[0].sySales5;
                    }else if (cycle == 6) {
                        salesMin = rows[0].sySales6;
                    }else if (cycle == 7) {
                        salesMin = rows[0].sySales7;
                    }else if (cycle == 8) {
                        salesMin = rows[0].sySales8;
                    }else if (cycle == 9) {
                        salesMin = rows[0].sySales9;
                    }else if (cycle == 10) {
                        salesMin = rows[0].sySales10;
                    }else if (cycle == 11) {
                        salesMin = rows[0].sySales11;
                    }else if (cycle == 12) {
                        salesMin = rows[0].sySales12;
                    }else if (cycle == 13) {
                        salesMin = rows[0].sySales13;
                    }else if (cycle == 14) {
                        salesMin = rows[0].sySales14;
                    }else if (cycle == 15) {
                        salesMin = rows[0].sySales15;
                    }else if (cycle == 16) {
                        salesMin = rows[0].sySales16;
                    }else if (cycle == 17) {
                        salesMin = rows[0].sySales17;
                    }else if (cycle == 18) {
                        salesMin = rows[0].sySales18;
                    }else if (cycle == 19) {
                        salesMin = rows[0].sySales19;
                    }else if (cycle == 20) {
                        salesMin = rows[0].sySales20;
                    }else if (cycle == 21) {
                        salesMin = rows[0].sySales21;
                    }else if (cycle == 22) {
                        salesMin = rows[0].sySales22;
                    }else if (cycle == 23) {
                        salesMin = rows[0].sySales23;
                    }else if (cycle == 24) {
                        salesMin = rows[0].sySales24;
                    }else if (cycle == 25) {
                        salesMin = rows[0].sySales25;
                    }else if (cycle == 26) {
                        salesMin = rows[0].sySales26;
                    }else if (cycle == 27) {
                        salesMin = rows[0].sySales27;
                    }else if (cycle == 28) {
                        salesMin = rows[0].sySales28;
                    }else if (cycle == 29) {
                        salesMin = rows[0].sySales29;
                    }else if (cycle == 30) {
                        salesMin = rows[0].sySales30;
                    }else if (cycle == 31) {
                        salesMin = rows[0].sySales31;
                    }

                    if (cycle1 == 1) {
                        salesMax = rows[0].sySales1;
                    }else if (cycle1 == 2) {
                        salesMax = rows[0].sySales2;
                    }else if (cycle1 == 3) {
                        salesMax = rows[0].sySales3;
                    }else if (cycle1 == 4) {
                        salesMax = rows[0].sySales4;
                    }else if (cycle1 == 5) {
                        salesMax = rows[0].sySales5;
                    }else if (cycle1 == 6) {
                        salesMax = rows[0].sySales6;
                    }else if (cycle1 == 7) {
                        salesMax = rows[0].sySales7;
                    }else if (cycle1 == 8) {
                        salesMax = rows[0].sySales8;
                    }else if (cycle1 == 9) {
                        salesMax = rows[0].sySales9;
                    }else if (cycle1 == 10) {
                        salesMax = rows[0].sySales10;
                    }else if (cycle1 == 11) {
                        salesMax = rows[0].sySales11;
                    }else if (cycle1 == 12) {
                        salesMax = rows[0].sySales12;
                    }else if (cycle1 == 13) {
                        salesMax = rows[0].sySales13;
                    }else if (cycle1 == 14) {
                        salesMax = rows[0].sySales14;
                    }else if (cycle1 == 15) {
                        salesMax = rows[0].sySales15;
                    }else if (cycle1 == 16) {
                        salesMax = rows[0].sySales16;
                    }else if (cycle1 == 17) {
                        salesMax = rows[0].sySales17;
                    }else if (cycle1 == 18) {
                        salesMax = rows[0].sySales18;
                    }else if (cycle1 == 19) {
                        salesMax = rows[0].sySales19;
                    }else if (cycle1 == 20) {
                        salesMax = rows[0].sySales20;
                    }else if (cycle1 == 21) {
                        salesMax = rows[0].sySales21;
                    }else if (cycle1 == 22) {
                        salesMax = rows[0].sySales22;
                    }else if (cycle1 == 23) {
                        salesMax = rows[0].sySales23;
                    }else if (cycle1 == 24) {
                        salesMax = rows[0].sySales24;
                    }else if (cycle1 == 25) {
                        salesMax = rows[0].sySales25;
                    }else if (cycle1 == 26) {
                        salesMax = rows[0].sySales26;
                    }else if (cycle1 == 27) {
                        salesMax = rows[0].sySales27;
                    }else if (cycle1 == 28) {
                        salesMax = rows[0].sySales28;
                    }else if (cycle1 == 29) {
                        salesMax = rows[0].sySales29;
                    }else if (cycle1 == 30) {
                        salesMax = rows[0].sySales30;
                    }else if (cycle1 == 31) {
                        salesMax = rows[0].sySales31;
                    }
                    var sy = calcGrowthRate(salesMin, salesMax);

                    if (cycle == 1) {
                        salesMin = rows[0].xaSales1;
                    }else if (cycle == 2) {
                        salesMin = rows[0].xaSales2;
                    }else if (cycle == 3) {
                        salesMin = rows[0].xaSales3;
                    }else if (cycle == 4) {
                        salesMin = rows[0].xaSales4;
                    }else if (cycle == 5) {
                        salesMin = rows[0].xaSales5;
                    }else if (cycle == 6) {
                        salesMin = rows[0].xaSales6;
                    }else if (cycle == 7) {
                        salesMin = rows[0].xaSales7;
                    }else if (cycle == 8) {
                        salesMin = rows[0].xaSales8;
                    }else if (cycle == 9) {
                        salesMin = rows[0].xaSales9;
                    }else if (cycle == 10) {
                        salesMin = rows[0].xaSales10;
                    }else if (cycle == 11) {
                        salesMin = rows[0].xaSales11;
                    }else if (cycle == 12) {
                        salesMin = rows[0].xaSales12;
                    }else if (cycle == 13) {
                        salesMin = rows[0].xaSales13;
                    }else if (cycle == 14) {
                        salesMin = rows[0].xaSales14;
                    }else if (cycle == 15) {
                        salesMin = rows[0].xaSales15;
                    }else if (cycle == 16) {
                        salesMin = rows[0].xaSales16;
                    }else if (cycle == 17) {
                        salesMin = rows[0].xaSales17;
                    }else if (cycle == 18) {
                        salesMin = rows[0].xaSales18;
                    }else if (cycle == 19) {
                        salesMin = rows[0].xaSales19;
                    }else if (cycle == 20) {
                        salesMin = rows[0].xaSales20;
                    }else if (cycle == 21) {
                        salesMin = rows[0].xaSales21;
                    }else if (cycle == 22) {
                        salesMin = rows[0].xaSales22;
                    }else if (cycle == 23) {
                        salesMin = rows[0].xaSales23;
                    }else if (cycle == 24) {
                        salesMin = rows[0].xaSales24;
                    }else if (cycle == 25) {
                        salesMin = rows[0].xaSales25;
                    }else if (cycle == 26) {
                        salesMin = rows[0].xaSales26;
                    }else if (cycle == 27) {
                        salesMin = rows[0].xaSales27;
                    }else if (cycle == 28) {
                        salesMin = rows[0].xaSales28;
                    }else if (cycle == 29) {
                        salesMin = rows[0].xaSales29;
                    }else if (cycle == 30) {
                        salesMin = rows[0].xaSales30;
                    }else if (cycle == 31) {
                        salesMin = rows[0].xaSales31;
                    }

                    if (cycle1 == 1) {
                        salesMax = rows[0].xaSales1;
                    }else if (cycle1 == 2) {
                        salesMax = rows[0].xaSales2;
                    }else if (cycle1 == 3) {
                        salesMax = rows[0].xaSales3;
                    }else if (cycle1 == 4) {
                        salesMax = rows[0].xaSales4;
                    }else if (cycle1 == 5) {
                        salesMax = rows[0].xaSales5;
                    }else if (cycle1 == 6) {
                        salesMax = rows[0].xaSales6;
                    }else if (cycle1 == 7) {
                        salesMax = rows[0].xaSales7;
                    }else if (cycle1 == 8) {
                        salesMax = rows[0].xaSales8;
                    }else if (cycle1 == 9) {
                        salesMax = rows[0].xaSales9;
                    }else if (cycle1 == 10) {
                        salesMax = rows[0].xaSales10;
                    }else if (cycle1 == 11) {
                        salesMax = rows[0].xaSales11;
                    }else if (cycle1 == 12) {
                        salesMax = rows[0].xaSales12;
                    }else if (cycle1 == 13) {
                        salesMax = rows[0].xaSales13;
                    }else if (cycle1 == 14) {
                        salesMax = rows[0].xaSales14;
                    }else if (cycle1 == 15) {
                        salesMax = rows[0].xaSales15;
                    }else if (cycle1 == 16) {
                        salesMax = rows[0].xaSales16;
                    }else if (cycle1 == 17) {
                        salesMax = rows[0].xaSales17;
                    }else if (cycle1 == 18) {
                        salesMax = rows[0].xaSales18;
                    }else if (cycle1 == 19) {
                        salesMax = rows[0].xaSales19;
                    }else if (cycle1 == 20) {
                        salesMax = rows[0].xaSales20;
                    }else if (cycle1 == 21) {
                        salesMax = rows[0].xaSales21;
                    }else if (cycle1 == 22) {
                        salesMax = rows[0].xaSales22;
                    }else if (cycle1 == 23) {
                        salesMax = rows[0].xaSales23;
                    }else if (cycle1 == 24) {
                        salesMax = rows[0].xaSales24;
                    }else if (cycle1 == 25) {
                        salesMax = rows[0].xaSales25;
                    }else if (cycle1 == 26) {
                        salesMax = rows[0].xaSales26;
                    }else if (cycle1 == 27) {
                        salesMax = rows[0].xaSales27;
                    }else if (cycle1 == 28) {
                        salesMax = rows[0].xaSales28;
                    }else if (cycle1 == 29) {
                        salesMax = rows[0].xaSales29;
                    }else if (cycle1 == 30) {
                        salesMax = rows[0].xaSales30;
                    }else if (cycle1 == 31) {
                        salesMax = rows[0].xaSales31;
                    }
                    var xa = calcGrowthRate(salesMin, salesMax);

                    if (cycle == 1) {
                        salesMin = rows[0].gaSales1;
                    }else if (cycle == 2) {
                        salesMin = rows[0].gaSales2;
                    }else if (cycle == 3) {
                        salesMin = rows[0].gaSales3;
                    }else if (cycle == 4) {
                        salesMin = rows[0].gaSales4;
                    }else if (cycle == 5) {
                        salesMin = rows[0].gaSales5;
                    }else if (cycle == 6) {
                        salesMin = rows[0].gaSales6;
                    }else if (cycle == 7) {
                        salesMin = rows[0].gaSales7;
                    }else if (cycle == 8) {
                        salesMin = rows[0].gaSales8;
                    }else if (cycle == 9) {
                        salesMin = rows[0].gaSales9;
                    }else if (cycle == 10) {
                        salesMin = rows[0].gaSales10;
                    }else if (cycle == 11) {
                        salesMin = rows[0].gaSales11;
                    }else if (cycle == 12) {
                        salesMin = rows[0].gaSales12;
                    }else if (cycle == 13) {
                        salesMin = rows[0].gaSales13;
                    }else if (cycle == 14) {
                        salesMin = rows[0].gaSales14;
                    }else if (cycle == 15) {
                        salesMin = rows[0].gaSales15;
                    }else if (cycle == 16) {
                        salesMin = rows[0].gaSales16;
                    }else if (cycle == 17) {
                        salesMin = rows[0].gaSales17;
                    }else if (cycle == 18) {
                        salesMin = rows[0].gaSales18;
                    }else if (cycle == 19) {
                        salesMin = rows[0].gaSales19;
                    }else if (cycle == 20) {
                        salesMin = rows[0].gaSales20;
                    }else if (cycle == 21) {
                        salesMin = rows[0].gaSales21;
                    }else if (cycle == 22) {
                        salesMin = rows[0].gaSales22;
                    }else if (cycle == 23) {
                        salesMin = rows[0].gaSales23;
                    }else if (cycle == 24) {
                        salesMin = rows[0].gaSales24;
                    }else if (cycle == 25) {
                        salesMin = rows[0].gaSales25;
                    }else if (cycle == 26) {
                        salesMin = rows[0].gaSales26;
                    }else if (cycle == 27) {
                        salesMin = rows[0].gaSales27;
                    }else if (cycle == 28) {
                        salesMin = rows[0].gaSales28;
                    }else if (cycle == 29) {
                        salesMin = rows[0].gaSales29;
                    }else if (cycle == 30) {
                        salesMin = rows[0].gaSales30;
                    }else if (cycle == 31) {
                        salesMin = rows[0].gaSales31;
                    }

                    if (cycle1 == 1) {
                        salesMax = rows[0].gaSales1;
                    }else if (cycle1 == 2) {
                        salesMax = rows[0].gaSales2;
                    }else if (cycle1 == 3) {
                        salesMax = rows[0].gaSales3;
                    }else if (cycle1 == 4) {
                        salesMax = rows[0].gaSales4;
                    }else if (cycle1 == 5) {
                        salesMax = rows[0].gaSales5;
                    }else if (cycle1 == 6) {
                        salesMax = rows[0].gaSales6;
                    }else if (cycle1 == 7) {
                        salesMax = rows[0].gaSales7;
                    }else if (cycle1 == 8) {
                        salesMax = rows[0].gaSales8;
                    }else if (cycle1 == 9) {
                        salesMax = rows[0].gaSales9;
                    }else if (cycle1 == 10) {
                        salesMax = rows[0].gaSales10;
                    }else if (cycle1 == 11) {
                        salesMax = rows[0].gaSales11;
                    }else if (cycle1 == 12) {
                        salesMax = rows[0].gaSales12;
                    }else if (cycle1 == 13) {
                        salesMax = rows[0].gaSales13;
                    }else if (cycle1 == 14) {
                        salesMax = rows[0].gaSales14;
                    }else if (cycle1 == 15) {
                        salesMax = rows[0].gaSales15;
                    }else if (cycle1 == 16) {
                        salesMax = rows[0].gaSales16;
                    }else if (cycle1 == 17) {
                        salesMax = rows[0].gaSales17;
                    }else if (cycle1 == 18) {
                        salesMax = rows[0].gaSales18;
                    }else if (cycle1 == 19) {
                        salesMax = rows[0].gaSales19;
                    }else if (cycle1 == 20) {
                        salesMax = rows[0].gaSales20;
                    }else if (cycle1 == 21) {
                        salesMax = rows[0].gaSales21;
                    }else if (cycle1 == 22) {
                        salesMax = rows[0].gaSales22;
                    }else if (cycle1 == 23) {
                        salesMax = rows[0].gaSales23;
                    }else if (cycle1 == 24) {
                        salesMax = rows[0].gaSales24;
                    }else if (cycle1 == 25) {
                        salesMax = rows[0].gaSales25;
                    }else if (cycle1 == 26) {
                        salesMax = rows[0].gaSales26;
                    }else if (cycle1 == 27) {
                        salesMax = rows[0].gaSales27;
                    }else if (cycle1 == 28) {
                        salesMax = rows[0].gaSales28;
                    }else if (cycle1 == 29) {
                        salesMax = rows[0].gaSales29;
                    }else if (cycle1 == 30) {
                        salesMax = rows[0].gaSales30;
                    }else if (cycle1 == 31) {
                        salesMax = rows[0].gaSales31;
                    }
                    var ga = calcGrowthRate(salesMin, salesMax);

                    $.messager.alert("提示",
                            "北京" + cycle + "/" + cycle1 + "天的增长率是：" + bj +"<br />"
                            + "上海" + cycle + "/" + cycle1 + "天的增长率是：" + sh +"<br />"
                            + "广州" + cycle + "/" + cycle1 + "天的增长率是：" + gz +"<br />"
                            + "成都" + cycle + "/" + cycle1 + "天的增长率是：" + cd +"<br />"
                            + "武汉" + cycle + "/" + cycle1 + "天的增长率是：" + wh +"<br />"
                            + "沈阳" + cycle + "/" + cycle1 + "天的增长率是：" + sy +"<br />"
                            + "西安" + cycle + "/" + cycle1 + "天的增长率是：" + xa +"<br />"
                            + "固安" + cycle + "/" + cycle1 + "天的增长率是：" + ga +"<br />"
                            , "");
                } else if (city == "bj") {
                    if (cycle == 1) {
                        salesMin = rows[0].bjSales1;
                    } else if (cycle == 2) {
                        salesMin = rows[0].bjSales2;
                    } else if (cycle == 3) {
                        salesMin = rows[0].bjSales3;
                    } else if (cycle == 4) {
                        salesMin = rows[0].bjSales4;
                    } else if (cycle == 5) {
                        salesMin = rows[0].bjSales5;
                    } else if (cycle == 6) {
                        salesMin = rows[0].bjSales6;
                    } else if (cycle == 7) {
                        salesMin = rows[0].bjSales7;
                    } else if (cycle == 8) {
                        salesMin = rows[0].bjSales8;
                    } else if (cycle == 9) {
                        salesMin = rows[0].bjSales9;
                    } else if (cycle == 10) {
                        salesMin = rows[0].bjSales10;
                    } else if (cycle == 11) {
                        salesMin = rows[0].bjSales11;
                    } else if (cycle == 12) {
                        salesMin = rows[0].bjSales12;
                    } else if (cycle == 13) {
                        salesMin = rows[0].bjSales13;
                    } else if (cycle == 14) {
                        salesMin = rows[0].bjSales14;
                    } else if (cycle == 15) {
                        salesMin = rows[0].bjSales15;
                    } else if (cycle == 16) {
                        salesMin = rows[0].bjSales16;
                    } else if (cycle == 17) {
                        salesMin = rows[0].bjSales17;
                    } else if (cycle == 18) {
                        salesMin = rows[0].bjSales18;
                    } else if (cycle == 19) {
                        salesMin = rows[0].bjSales19;
                    } else if (cycle == 20) {
                        salesMin = rows[0].bjSales20;
                    } else if (cycle == 21) {
                        salesMin = rows[0].bjSales21;
                    } else if (cycle == 22) {
                        salesMin = rows[0].bjSales22;
                    } else if (cycle == 23) {
                        salesMin = rows[0].bjSales23;
                    } else if (cycle == 24) {
                        salesMin = rows[0].bjSales24;
                    } else if (cycle == 25) {
                        salesMin = rows[0].bjSales25;
                    } else if (cycle == 26) {
                        salesMin = rows[0].bjSales26;
                    } else if (cycle == 27) {
                        salesMin = rows[0].bjSales27;
                    } else if (cycle == 28) {
                        salesMin = rows[0].bjSales28;
                    } else if (cycle == 29) {
                        salesMin = rows[0].bjSales29;
                    } else if (cycle == 30) {
                        salesMin = rows[0].bjSales30;
                    } else if (cycle == 31) {
                        salesMin = rows[0].bjSales31;
                    }

                    if (cycle1 == 1) {
                        salesMax = rows[0].bjSales1;
                    } else if (cycle1 == 2) {
                        salesMax = rows[0].bjSales2;
                    } else if (cycle1 == 3) {
                        salesMax = rows[0].bjSales3;
                    } else if (cycle1 == 4) {
                        salesMax = rows[0].bjSales4;
                    } else if (cycle1 == 5) {
                        salesMax = rows[0].bjSales5;
                    } else if (cycle1 == 6) {
                        salesMax = rows[0].bjSales6;
                    } else if (cycle1 == 7) {
                        salesMax = rows[0].bjSales7;
                    } else if (cycle1 == 8) {
                        salesMax = rows[0].bjSales8;
                    } else if (cycle1 == 9) {
                        salesMax = rows[0].bjSales9;
                    } else if (cycle1 == 10) {
                        salesMax = rows[0].bjSales10;
                    } else if (cycle1 == 11) {
                        salesMax = rows[0].bjSales11;
                    } else if (cycle1 == 12) {
                        salesMax = rows[0].bjSales12;
                    } else if (cycle1 == 13) {
                        salesMax = rows[0].bjSales13;
                    } else if (cycle1 == 14) {
                        salesMax = rows[0].bjSales14;
                    } else if (cycle1 == 15) {
                        salesMax = rows[0].bjSales15;
                    } else if (cycle1 == 16) {
                        salesMax = rows[0].bjSales16;
                    } else if (cycle1 == 17) {
                        salesMax = rows[0].bjSales17;
                    } else if (cycle1 == 18) {
                        salesMax = rows[0].bjSales18;
                    } else if (cycle1 == 19) {
                        salesMax = rows[0].bjSales19;
                    } else if (cycle1 == 20) {
                        salesMax = rows[0].bjSales20;
                    } else if (cycle1 == 21) {
                        salesMax = rows[0].bjSales21;
                    } else if (cycle1 == 22) {
                        salesMax = rows[0].bjSales22;
                    } else if (cycle1 == 23) {
                        salesMax = rows[0].bjSales23;
                    } else if (cycle1 == 24) {
                        salesMax = rows[0].bjSales24;
                    } else if (cycle1 == 25) {
                        salesMax = rows[0].bjSales25;
                    } else if (cycle1 == 26) {
                        salesMax = rows[0].bjSales26;
                    } else if (cycle1 == 27) {
                        salesMax = rows[0].bjSales27;
                    } else if (cycle1 == 28) {
                        salesMax = rows[0].bjSales28;
                    } else if (cycle1 == 29) {
                        salesMax = rows[0].bjSales29;
                    } else if (cycle1 == 30) {
                        salesMax = rows[0].bjSales30;
                    } else if (cycle1 == 31) {
                        salesMax = rows[0].bjSales31;
                    }

                    city = "北京";
                } else if (city == "sh") {
                    if (cycle == 1) {
                        salesMin = rows[0].shSales1;
                    }else if (cycle == 2) {
                        salesMin = rows[0].shSales2;
                    }else if (cycle == 3) {
                        salesMin = rows[0].shSales3;
                    }else if (cycle == 4) {
                        salesMin = rows[0].shSales4;
                    }else if (cycle == 5) {
                        salesMin = rows[0].shSales5;
                    }else if (cycle == 6) {
                        salesMin = rows[0].shSales6;
                    }else if (cycle == 7) {
                        salesMin = rows[0].shSales7;
                    }else if (cycle == 8) {
                        salesMin = rows[0].shSales8;
                    }else if (cycle == 9) {
                        salesMin = rows[0].shSales9;
                    }else if (cycle == 10) {
                        salesMin = rows[0].shSales10;
                    }else if (cycle == 11) {
                        salesMin = rows[0].shSales11;
                    }else if (cycle == 12) {
                        salesMin = rows[0].shSales12;
                    }else if (cycle == 13) {
                        salesMin = rows[0].shSales13;
                    }else if (cycle == 14) {
                        salesMin = rows[0].shSales14;
                    }else if (cycle == 15) {
                        salesMin = rows[0].shSales15;
                    }else if (cycle == 16) {
                        salesMin = rows[0].shSales16;
                    }else if (cycle == 17) {
                        salesMin = rows[0].shSales17;
                    }else if (cycle == 18) {
                        salesMin = rows[0].shSales18;
                    }else if (cycle == 19) {
                        salesMin = rows[0].shSales19;
                    }else if (cycle == 20) {
                        salesMin = rows[0].shSales20;
                    }else if (cycle == 21) {
                        salesMin = rows[0].shSales21;
                    }else if (cycle == 22) {
                        salesMin = rows[0].shSales22;
                    }else if (cycle == 23) {
                        salesMin = rows[0].shSales23;
                    }else if (cycle == 24) {
                        salesMin = rows[0].shSales24;
                    }else if (cycle == 25) {
                        salesMin = rows[0].shSales25;
                    }else if (cycle == 26) {
                        salesMin = rows[0].shSales26;
                    }else if (cycle == 27) {
                        salesMin = rows[0].shSales27;
                    }else if (cycle == 28) {
                        salesMin = rows[0].shSales28;
                    }else if (cycle == 29) {
                        salesMin = rows[0].shSales29;
                    }else if (cycle == 30) {
                        salesMin = rows[0].shSales30;
                    }else if (cycle == 31) {
                        salesMin = rows[0].shSales31;
                    }

                    if (cycle1 == 1) {
                        salesMax = rows[0].shSales1;
                    }else if (cycle1 == 2) {
                        salesMax = rows[0].shSales2;
                    }else if (cycle1 == 3) {
                        salesMax = rows[0].shSales3;
                    }else if (cycle1 == 4) {
                        salesMax = rows[0].shSales4;
                    }else if (cycle1 == 5) {
                        salesMax = rows[0].shSales5;
                    }else if (cycle1 == 6) {
                        salesMax = rows[0].shSales6;
                    }else if (cycle1 == 7) {
                        salesMax = rows[0].shSales7;
                    }else if (cycle1 == 8) {
                        salesMax = rows[0].shSales8;
                    }else if (cycle1 == 9) {
                        salesMax = rows[0].shSales9;
                    }else if (cycle1 == 10) {
                        salesMax = rows[0].shSales10;
                    }else if (cycle1 == 11) {
                        salesMax = rows[0].shSales11;
                    }else if (cycle1 == 12) {
                        salesMax = rows[0].shSales12;
                    }else if (cycle1 == 13) {
                        salesMax = rows[0].shSales13;
                    }else if (cycle1 == 14) {
                        salesMax = rows[0].shSales14;
                    }else if (cycle1 == 15) {
                        salesMax = rows[0].shSales15;
                    }else if (cycle1 == 16) {
                        salesMax = rows[0].shSales16;
                    }else if (cycle1 == 17) {
                        salesMax = rows[0].shSales17;
                    }else if (cycle1 == 18) {
                        salesMax = rows[0].shSales18;
                    }else if (cycle1 == 19) {
                        salesMax = rows[0].shSales19;
                    }else if (cycle1 == 20) {
                        salesMax = rows[0].shSales20;
                    }else if (cycle1 == 21) {
                        salesMax = rows[0].shSales21;
                    }else if (cycle1 == 22) {
                        salesMax = rows[0].shSales22;
                    }else if (cycle1 == 23) {
                        salesMax = rows[0].shSales23;
                    }else if (cycle1 == 24) {
                        salesMax = rows[0].shSales24;
                    }else if (cycle1 == 25) {
                        salesMax = rows[0].shSales25;
                    }else if (cycle1 == 26) {
                        salesMax = rows[0].shSales26;
                    }else if (cycle1 == 27) {
                        salesMax = rows[0].shSales27;
                    }else if (cycle1 == 28) {
                        salesMax = rows[0].shSales28;
                    }else if (cycle1 == 29) {
                        salesMax = rows[0].shSales29;
                    }else if (cycle1 == 30) {
                        salesMax = rows[0].shSales30;
                    }else if (cycle1 == 31) {
                        salesMax = rows[0].shSales31;
                    }

                    city = "上海";
                } else if (city == "gz") {
                    if (cycle == 1) {
                        salesMin = rows[0].gzSales1;
                    }else if (cycle == 2) {
                        salesMin = rows[0].gzSales2;
                    }else if (cycle == 3) {
                        salesMin = rows[0].gzSales3;
                    }else if (cycle == 4) {
                        salesMin = rows[0].gzSales4;
                    }else if (cycle == 5) {
                        salesMin = rows[0].gzSales5;
                    }else if (cycle == 6) {
                        salesMin = rows[0].gzSales6;
                    }else if (cycle == 7) {
                        salesMin = rows[0].gzSales7;
                    }else if (cycle == 8) {
                        salesMin = rows[0].gzSales8;
                    }else if (cycle == 9) {
                        salesMin = rows[0].gzSales9;
                    }else if (cycle == 10) {
                        salesMin = rows[0].gzSales10;
                    }else if (cycle == 11) {
                        salesMin = rows[0].gzSales11;
                    }else if (cycle == 12) {
                        salesMin = rows[0].gzSales12;
                    }else if (cycle == 13) {
                        salesMin = rows[0].gzSales13;
                    }else if (cycle == 14) {
                        salesMin = rows[0].gzSales14;
                    }else if (cycle == 15) {
                        salesMin = rows[0].gzSales15;
                    }else if (cycle == 16) {
                        salesMin = rows[0].gzSales16;
                    }else if (cycle == 17) {
                        salesMin = rows[0].gzSales17;
                    }else if (cycle == 18) {
                        salesMin = rows[0].gzSales18;
                    }else if (cycle == 19) {
                        salesMin = rows[0].gzSales19;
                    }else if (cycle == 20) {
                        salesMin = rows[0].gzSales20;
                    }else if (cycle == 21) {
                        salesMin = rows[0].gzSales21;
                    }else if (cycle == 22) {
                        salesMin = rows[0].gzSales22;
                    }else if (cycle == 23) {
                        salesMin = rows[0].gzSales23;
                    }else if (cycle == 24) {
                        salesMin = rows[0].gzSales24;
                    }else if (cycle == 25) {
                        salesMin = rows[0].gzSales25;
                    }else if (cycle == 26) {
                        salesMin = rows[0].gzSales26;
                    }else if (cycle == 27) {
                        salesMin = rows[0].gzSales27;
                    }else if (cycle == 28) {
                        salesMin = rows[0].gzSales28;
                    }else if (cycle == 29) {
                        salesMin = rows[0].gzSales29;
                    }else if (cycle == 30) {
                        salesMin = rows[0].gzSales30;
                    }else if (cycle == 31) {
                        salesMin = rows[0].gzSales31;
                    }

                    if (cycle1 == 1) {
                        salesMax = rows[0].gzSales1;
                    }else if (cycle1 == 2) {
                        salesMax = rows[0].gzSales2;
                    }else if (cycle1 == 3) {
                        salesMax = rows[0].gzSales3;
                    }else if (cycle1 == 4) {
                        salesMax = rows[0].gzSales4;
                    }else if (cycle1 == 5) {
                        salesMax = rows[0].gzSales5;
                    }else if (cycle1 == 6) {
                        salesMax = rows[0].gzSales6;
                    }else if (cycle1 == 7) {
                        salesMax = rows[0].gzSales7;
                    }else if (cycle1 == 8) {
                        salesMax = rows[0].gzSales8;
                    }else if (cycle1 == 9) {
                        salesMax = rows[0].gzSales9;
                    }else if (cycle1 == 10) {
                        salesMax = rows[0].gzSales10;
                    }else if (cycle1 == 11) {
                        salesMax = rows[0].gzSales11;
                    }else if (cycle1 == 12) {
                        salesMax = rows[0].gzSales12;
                    }else if (cycle1 == 13) {
                        salesMax = rows[0].gzSales13;
                    }else if (cycle1 == 14) {
                        salesMax = rows[0].gzSales14;
                    }else if (cycle1 == 15) {
                        salesMax = rows[0].gzSales15;
                    }else if (cycle1 == 16) {
                        salesMax = rows[0].gzSales16;
                    }else if (cycle1 == 17) {
                        salesMax = rows[0].gzSales17;
                    }else if (cycle1 == 18) {
                        salesMax = rows[0].gzSales18;
                    }else if (cycle1 == 19) {
                        salesMax = rows[0].gzSales19;
                    }else if (cycle1 == 20) {
                        salesMax = rows[0].gzSales20;
                    }else if (cycle1 == 21) {
                        salesMax = rows[0].gzSales21;
                    }else if (cycle1 == 22) {
                        salesMax = rows[0].gzSales22;
                    }else if (cycle1 == 23) {
                        salesMax = rows[0].gzSales23;
                    }else if (cycle1 == 24) {
                        salesMax = rows[0].gzSales24;
                    }else if (cycle1 == 25) {
                        salesMax = rows[0].gzSales25;
                    }else if (cycle1 == 26) {
                        salesMax = rows[0].gzSales26;
                    }else if (cycle1 == 27) {
                        salesMax = rows[0].gzSales27;
                    }else if (cycle1 == 28) {
                        salesMax = rows[0].gzSales28;
                    }else if (cycle1 == 29) {
                        salesMax = rows[0].gzSales29;
                    }else if (cycle1 == 30) {
                        salesMax = rows[0].gzSales30;
                    }else if (cycle1 == 31) {
                        salesMax = rows[0].gzSales31;
                    }

                    city = "广州";
                } else if (city == "cd") {
                    if (cycle1 == 1) {
                        salesMax = rows[0].cdSales1;
                    }else if (cycle1 == 2) {
                        salesMax = rows[0].cdSales2;
                    }else if (cycle1 == 3) {
                        salesMax = rows[0].cdSales3;
                    }else if (cycle1 == 4) {
                        salesMax = rows[0].cdSales4;
                    }else if (cycle1 == 5) {
                        salesMax = rows[0].cdSales5;
                    }else if (cycle1 == 6) {
                        salesMax = rows[0].cdSales6;
                    }else if (cycle1 == 7) {
                        salesMax = rows[0].cdSales7;
                    }else if (cycle1 == 8) {
                        salesMax = rows[0].cdSales8;
                    }else if (cycle1 == 9) {
                        salesMax = rows[0].cdSales9;
                    }else if (cycle1 == 10) {
                        salesMax = rows[0].cdSales10;
                    }else if (cycle1 == 11) {
                        salesMax = rows[0].cdSales11;
                    }else if (cycle1 == 12) {
                        salesMax = rows[0].cdSales12;
                    }else if (cycle1 == 13) {
                        salesMax = rows[0].cdSales13;
                    }else if (cycle1 == 14) {
                        salesMax = rows[0].cdSales14;
                    }else if (cycle1 == 15) {
                        salesMax = rows[0].cdSales15;
                    }else if (cycle1 == 16) {
                        salesMax = rows[0].cdSales16;
                    }else if (cycle1 == 17) {
                        salesMax = rows[0].cdSales17;
                    }else if (cycle1 == 18) {
                        salesMax = rows[0].cdSales18;
                    }else if (cycle1 == 19) {
                        salesMax = rows[0].cdSales19;
                    }else if (cycle1 == 20) {
                        salesMax = rows[0].cdSales20;
                    }else if (cycle1 == 21) {
                        salesMax = rows[0].cdSales21;
                    }else if (cycle1 == 22) {
                        salesMax = rows[0].cdSales22;
                    }else if (cycle1 == 23) {
                        salesMax = rows[0].cdSales23;
                    }else if (cycle1 == 24) {
                        salesMax = rows[0].cdSales24;
                    }else if (cycle1 == 25) {
                        salesMax = rows[0].cdSales25;
                    }else if (cycle1 == 26) {
                        salesMax = rows[0].cdSales26;
                    }else if (cycle1 == 27) {
                        salesMax = rows[0].cdSales27;
                    }else if (cycle1 == 28) {
                        salesMax = rows[0].cdSales28;
                    }else if (cycle1 == 29) {
                        salesMax = rows[0].cdSales29;
                    }else if (cycle1 == 30) {
                        salesMax = rows[0].cdSales30;
                    }else if (cycle1 == 31) {
                        salesMax = rows[0].cdSales31;
                    }

                    if (cycle == 1) {
                        salesMin = rows[0].cdSales1;
                    }else if (cycle == 2) {
                        salesMin = rows[0].cdSales2;
                    }else if (cycle == 3) {
                        salesMin = rows[0].cdSales3;
                    }else if (cycle == 4) {
                        salesMin = rows[0].cdSales4;
                    }else if (cycle == 5) {
                        salesMin = rows[0].cdSales5;
                    }else if (cycle == 6) {
                        salesMin = rows[0].cdSales6;
                    }else if (cycle == 7) {
                        salesMin = rows[0].cdSales7;
                    }else if (cycle == 8) {
                        salesMin = rows[0].cdSales8;
                    }else if (cycle == 9) {
                        salesMin = rows[0].cdSales9;
                    }else if (cycle == 10) {
                        salesMin = rows[0].cdSales10;
                    }else if (cycle == 11) {
                        salesMin = rows[0].cdSales11;
                    }else if (cycle == 12) {
                        salesMin = rows[0].cdSales12;
                    }else if (cycle == 13) {
                        salesMin = rows[0].cdSales13;
                    }else if (cycle == 14) {
                        salesMin = rows[0].cdSales14;
                    }else if (cycle == 15) {
                        salesMin = rows[0].cdSales15;
                    }else if (cycle == 16) {
                        salesMin = rows[0].cdSales16;
                    }else if (cycle == 17) {
                        salesMin = rows[0].cdSales17;
                    }else if (cycle == 18) {
                        salesMin = rows[0].cdSales18;
                    }else if (cycle == 19) {
                        salesMin = rows[0].cdSales19;
                    }else if (cycle == 20) {
                        salesMin = rows[0].cdSales20;
                    }else if (cycle == 21) {
                        salesMin = rows[0].cdSales21;
                    }else if (cycle == 22) {
                        salesMin = rows[0].cdSales22;
                    }else if (cycle == 23) {
                        salesMin = rows[0].cdSales23;
                    }else if (cycle == 24) {
                        salesMin = rows[0].cdSales24;
                    }else if (cycle == 25) {
                        salesMin = rows[0].cdSales25;
                    }else if (cycle == 26) {
                        salesMin = rows[0].cdSales26;
                    }else if (cycle == 27) {
                        salesMin = rows[0].cdSales27;
                    }else if (cycle == 28) {
                        salesMin = rows[0].cdSales28;
                    }else if (cycle == 29) {
                        salesMin = rows[0].cdSales29;
                    }else if (cycle == 30) {
                        salesMin = rows[0].cdSales30;
                    }else if (cycle == 31) {
                        salesMin = rows[0].cdSales31;
                    }

                    city = "成都";
                } else if (city == "wh") {
                    if (cycle == 1) {
                        salesMin = rows[0].whSales1;
                    }else if (cycle == 2) {
                        salesMin = rows[0].whSales2;
                    }else if (cycle == 3) {
                        salesMin = rows[0].whSales3;
                    }else if (cycle == 4) {
                        salesMin = rows[0].whSales4;
                    }else if (cycle == 5) {
                        salesMin = rows[0].whSales5;
                    }else if (cycle == 6) {
                        salesMin = rows[0].whSales6;
                    }else if (cycle == 7) {
                        salesMin = rows[0].whSales7;
                    }else if (cycle == 8) {
                        salesMin = rows[0].whSales8;
                    }else if (cycle == 9) {
                        salesMin = rows[0].whSales9;
                    }else if (cycle == 10) {
                        salesMin = rows[0].whSales10;
                    }else if (cycle == 11) {
                        salesMin = rows[0].whSales11;
                    }else if (cycle == 12) {
                        salesMin = rows[0].whSales12;
                    }else if (cycle == 13) {
                        salesMin = rows[0].whSales13;
                    }else if (cycle == 14) {
                        salesMin = rows[0].whSales14;
                    }else if (cycle == 15) {
                        salesMin = rows[0].whSales15;
                    }else if (cycle == 16) {
                        salesMin = rows[0].whSales16;
                    }else if (cycle == 17) {
                        salesMin = rows[0].whSales17;
                    }else if (cycle == 18) {
                        salesMin = rows[0].whSales18;
                    }else if (cycle == 19) {
                        salesMin = rows[0].whSales19;
                    }else if (cycle == 20) {
                        salesMin = rows[0].whSales20;
                    }else if (cycle == 21) {
                        salesMin = rows[0].whSales21;
                    }else if (cycle == 22) {
                        salesMin = rows[0].whSales22;
                    }else if (cycle == 23) {
                        salesMin = rows[0].whSales23;
                    }else if (cycle == 24) {
                        salesMin = rows[0].whSales24;
                    }else if (cycle == 25) {
                        salesMin = rows[0].whSales25;
                    }else if (cycle == 26) {
                        salesMin = rows[0].whSales26;
                    }else if (cycle == 27) {
                        salesMin = rows[0].whSales27;
                    }else if (cycle == 28) {
                        salesMin = rows[0].whSales28;
                    }else if (cycle == 29) {
                        salesMin = rows[0].whSales29;
                    }else if (cycle == 30) {
                        salesMin = rows[0].whSales30;
                    }else if (cycle == 31) {
                        salesMin = rows[0].whSales31;
                    }

                    if (cycle1 == 1) {
                        salesMax = rows[0].whSales1;
                    }else if (cycle1 == 2) {
                        salesMax = rows[0].whSales2;
                    }else if (cycle1 == 3) {
                        salesMax = rows[0].whSales3;
                    }else if (cycle1 == 4) {
                        salesMax = rows[0].whSales4;
                    }else if (cycle1 == 5) {
                        salesMax = rows[0].whSales5;
                    }else if (cycle1 == 6) {
                        salesMax = rows[0].whSales6;
                    }else if (cycle1 == 7) {
                        salesMax = rows[0].whSales7;
                    }else if (cycle1 == 8) {
                        salesMax = rows[0].whSales8;
                    }else if (cycle1 == 9) {
                        salesMax = rows[0].whSales9;
                    }else if (cycle1 == 10) {
                        salesMax = rows[0].whSales10;
                    }else if (cycle1 == 11) {
                        salesMax = rows[0].whSales11;
                    }else if (cycle1 == 12) {
                        salesMax = rows[0].whSales12;
                    }else if (cycle1 == 13) {
                        salesMax = rows[0].whSales13;
                    }else if (cycle1 == 14) {
                        salesMax = rows[0].whSales14;
                    }else if (cycle1 == 15) {
                        salesMax = rows[0].whSales15;
                    }else if (cycle1 == 16) {
                        salesMax = rows[0].whSales16;
                    }else if (cycle1 == 17) {
                        salesMax = rows[0].whSales17;
                    }else if (cycle1 == 18) {
                        salesMax = rows[0].whSales18;
                    }else if (cycle1 == 19) {
                        salesMax = rows[0].whSales19;
                    }else if (cycle1 == 20) {
                        salesMax = rows[0].whSales20;
                    }else if (cycle1 == 21) {
                        salesMax = rows[0].whSales21;
                    }else if (cycle1 == 22) {
                        salesMax = rows[0].whSales22;
                    }else if (cycle1 == 23) {
                        salesMax = rows[0].whSales23;
                    }else if (cycle1 == 24) {
                        salesMax = rows[0].whSales24;
                    }else if (cycle1 == 25) {
                        salesMax = rows[0].whSales25;
                    }else if (cycle1 == 26) {
                        salesMax = rows[0].whSales26;
                    }else if (cycle1 == 27) {
                        salesMax = rows[0].whSales27;
                    }else if (cycle1 == 28) {
                        salesMax = rows[0].whSales28;
                    }else if (cycle1 == 29) {
                        salesMax = rows[0].whSales29;
                    }else if (cycle1 == 30) {
                        salesMax = rows[0].whSales30;
                    }else if (cycle1 == 31) {
                        salesMax = rows[0].whSales31;
                    }
                    city = "武汉";
                } else if (city == "sy") {
                    if (cycle == 1) {
                        salesMin = rows[0].sySales1;
                    }else if (cycle == 2) {
                        salesMin = rows[0].sySales2;
                    }else if (cycle == 3) {
                        salesMin = rows[0].sySales3;
                    }else if (cycle == 4) {
                        salesMin = rows[0].sySales4;
                    }else if (cycle == 5) {
                        salesMin = rows[0].sySales5;
                    }else if (cycle == 6) {
                        salesMin = rows[0].sySales6;
                    }else if (cycle == 7) {
                        salesMin = rows[0].sySales7;
                    }else if (cycle == 8) {
                        salesMin = rows[0].sySales8;
                    }else if (cycle == 9) {
                        salesMin = rows[0].sySales9;
                    }else if (cycle == 10) {
                        salesMin = rows[0].sySales10;
                    }else if (cycle == 11) {
                        salesMin = rows[0].sySales11;
                    }else if (cycle == 12) {
                        salesMin = rows[0].sySales12;
                    }else if (cycle == 13) {
                        salesMin = rows[0].sySales13;
                    }else if (cycle == 14) {
                        salesMin = rows[0].sySales14;
                    }else if (cycle == 15) {
                        salesMin = rows[0].sySales15;
                    }else if (cycle == 16) {
                        salesMin = rows[0].sySales16;
                    }else if (cycle == 17) {
                        salesMin = rows[0].sySales17;
                    }else if (cycle == 18) {
                        salesMin = rows[0].sySales18;
                    }else if (cycle == 19) {
                        salesMin = rows[0].sySales19;
                    }else if (cycle == 20) {
                        salesMin = rows[0].sySales20;
                    }else if (cycle == 21) {
                        salesMin = rows[0].sySales21;
                    }else if (cycle == 22) {
                        salesMin = rows[0].sySales22;
                    }else if (cycle == 23) {
                        salesMin = rows[0].sySales23;
                    }else if (cycle == 24) {
                        salesMin = rows[0].sySales24;
                    }else if (cycle == 25) {
                        salesMin = rows[0].sySales25;
                    }else if (cycle == 26) {
                        salesMin = rows[0].sySales26;
                    }else if (cycle == 27) {
                        salesMin = rows[0].sySales27;
                    }else if (cycle == 28) {
                        salesMin = rows[0].sySales28;
                    }else if (cycle == 29) {
                        salesMin = rows[0].sySales29;
                    }else if (cycle == 30) {
                        salesMin = rows[0].sySales30;
                    }else if (cycle == 31) {
                        salesMin = rows[0].sySales31;
                    }

                    if (cycle1 == 1) {
                        salesMax = rows[0].sySales1;
                    }else if (cycle1 == 2) {
                        salesMax = rows[0].sySales2;
                    }else if (cycle1 == 3) {
                        salesMax = rows[0].sySales3;
                    }else if (cycle1 == 4) {
                        salesMax = rows[0].sySales4;
                    }else if (cycle1 == 5) {
                        salesMax = rows[0].sySales5;
                    }else if (cycle1 == 6) {
                        salesMax = rows[0].sySales6;
                    }else if (cycle1 == 7) {
                        salesMax = rows[0].sySales7;
                    }else if (cycle1 == 8) {
                        salesMax = rows[0].sySales8;
                    }else if (cycle1 == 9) {
                        salesMax = rows[0].sySales9;
                    }else if (cycle1 == 10) {
                        salesMax = rows[0].sySales10;
                    }else if (cycle1 == 11) {
                        salesMax = rows[0].sySales11;
                    }else if (cycle1 == 12) {
                        salesMax = rows[0].sySales12;
                    }else if (cycle1 == 13) {
                        salesMax = rows[0].sySales13;
                    }else if (cycle1 == 14) {
                        salesMax = rows[0].sySales14;
                    }else if (cycle1 == 15) {
                        salesMax = rows[0].sySales15;
                    }else if (cycle1 == 16) {
                        salesMax = rows[0].sySales16;
                    }else if (cycle1 == 17) {
                        salesMax = rows[0].sySales17;
                    }else if (cycle1 == 18) {
                        salesMax = rows[0].sySales18;
                    }else if (cycle1 == 19) {
                        salesMax = rows[0].sySales19;
                    }else if (cycle1 == 20) {
                        salesMax = rows[0].sySales20;
                    }else if (cycle1 == 21) {
                        salesMax = rows[0].sySales21;
                    }else if (cycle1 == 22) {
                        salesMax = rows[0].sySales22;
                    }else if (cycle1 == 23) {
                        salesMax = rows[0].sySales23;
                    }else if (cycle1 == 24) {
                        salesMax = rows[0].sySales24;
                    }else if (cycle1 == 25) {
                        salesMax = rows[0].sySales25;
                    }else if (cycle1 == 26) {
                        salesMax = rows[0].sySales26;
                    }else if (cycle1 == 27) {
                        salesMax = rows[0].sySales27;
                    }else if (cycle1 == 28) {
                        salesMax = rows[0].sySales28;
                    }else if (cycle1 == 29) {
                        salesMax = rows[0].sySales29;
                    }else if (cycle1 == 30) {
                        salesMax = rows[0].sySales30;
                    }else if (cycle1 == 31) {
                        salesMax = rows[0].sySales31;
                    }

                    city = "沈阳";
                } else if (city == "xa") {
                    if (cycle == 1) {
                        salesMin = rows[0].xaSales1;
                    }else if (cycle == 2) {
                        salesMin = rows[0].xaSales2;
                    }else if (cycle == 3) {
                        salesMin = rows[0].xaSales3;
                    }else if (cycle == 4) {
                        salesMin = rows[0].xaSales4;
                    }else if (cycle == 5) {
                        salesMin = rows[0].xaSales5;
                    }else if (cycle == 6) {
                        salesMin = rows[0].xaSales6;
                    }else if (cycle == 7) {
                        salesMin = rows[0].xaSales7;
                    }else if (cycle == 8) {
                        salesMin = rows[0].xaSales8;
                    }else if (cycle == 9) {
                        salesMin = rows[0].xaSales9;
                    }else if (cycle == 10) {
                        salesMin = rows[0].xaSales10;
                    }else if (cycle == 11) {
                        salesMin = rows[0].xaSales11;
                    }else if (cycle == 12) {
                        salesMin = rows[0].xaSales12;
                    }else if (cycle == 13) {
                        salesMin = rows[0].xaSales13;
                    }else if (cycle == 14) {
                        salesMin = rows[0].xaSales14;
                    }else if (cycle == 15) {
                        salesMin = rows[0].xaSales15;
                    }else if (cycle == 16) {
                        salesMin = rows[0].xaSales16;
                    }else if (cycle == 17) {
                        salesMin = rows[0].xaSales17;
                    }else if (cycle == 18) {
                        salesMin = rows[0].xaSales18;
                    }else if (cycle == 19) {
                        salesMin = rows[0].xaSales19;
                    }else if (cycle == 20) {
                        salesMin = rows[0].xaSales20;
                    }else if (cycle == 21) {
                        salesMin = rows[0].xaSales21;
                    }else if (cycle == 22) {
                        salesMin = rows[0].xaSales22;
                    }else if (cycle == 23) {
                        salesMin = rows[0].xaSales23;
                    }else if (cycle == 24) {
                        salesMin = rows[0].xaSales24;
                    }else if (cycle == 25) {
                        salesMin = rows[0].xaSales25;
                    }else if (cycle == 26) {
                        salesMin = rows[0].xaSales26;
                    }else if (cycle == 27) {
                        salesMin = rows[0].xaSales27;
                    }else if (cycle == 28) {
                        salesMin = rows[0].xaSales28;
                    }else if (cycle == 29) {
                        salesMin = rows[0].xaSales29;
                    }else if (cycle == 30) {
                        salesMin = rows[0].xaSales30;
                    }else if (cycle == 31) {
                        salesMin = rows[0].xaSales31;
                    }

                    if (cycle1 == 1) {
                        salesMax = rows[0].xaSales1;
                    }else if (cycle1 == 2) {
                        salesMax = rows[0].xaSales2;
                    }else if (cycle1 == 3) {
                        salesMax = rows[0].xaSales3;
                    }else if (cycle1 == 4) {
                        salesMax = rows[0].xaSales4;
                    }else if (cycle1 == 5) {
                        salesMax = rows[0].xaSales5;
                    }else if (cycle1 == 6) {
                        salesMax = rows[0].xaSales6;
                    }else if (cycle1 == 7) {
                        salesMax = rows[0].xaSales7;
                    }else if (cycle1 == 8) {
                        salesMax = rows[0].xaSales8;
                    }else if (cycle1 == 9) {
                        salesMax = rows[0].xaSales9;
                    }else if (cycle1 == 10) {
                        salesMax = rows[0].xaSales10;
                    }else if (cycle1 == 11) {
                        salesMax = rows[0].xaSales11;
                    }else if (cycle1 == 12) {
                        salesMax = rows[0].xaSales12;
                    }else if (cycle1 == 13) {
                        salesMax = rows[0].xaSales13;
                    }else if (cycle1 == 14) {
                        salesMax = rows[0].xaSales14;
                    }else if (cycle1 == 15) {
                        salesMax = rows[0].xaSales15;
                    }else if (cycle1 == 16) {
                        salesMax = rows[0].xaSales16;
                    }else if (cycle1 == 17) {
                        salesMax = rows[0].xaSales17;
                    }else if (cycle1 == 18) {
                        salesMax = rows[0].xaSales18;
                    }else if (cycle1 == 19) {
                        salesMax = rows[0].xaSales19;
                    }else if (cycle1 == 20) {
                        salesMax = rows[0].xaSales20;
                    }else if (cycle1 == 21) {
                        salesMax = rows[0].xaSales21;
                    }else if (cycle1 == 22) {
                        salesMax = rows[0].xaSales22;
                    }else if (cycle1 == 23) {
                        salesMax = rows[0].xaSales23;
                    }else if (cycle1 == 24) {
                        salesMax = rows[0].xaSales24;
                    }else if (cycle1 == 25) {
                        salesMax = rows[0].xaSales25;
                    }else if (cycle1 == 26) {
                        salesMax = rows[0].xaSales26;
                    }else if (cycle1 == 27) {
                        salesMax = rows[0].xaSales27;
                    }else if (cycle1 == 28) {
                        salesMax = rows[0].xaSales28;
                    }else if (cycle1 == 29) {
                        salesMax = rows[0].xaSales29;
                    }else if (cycle1 == 30) {
                        salesMax = rows[0].xaSales30;
                    }else if (cycle1 == 31) {
                        salesMax = rows[0].xaSales31;
                    }
                    city = "西安";
                } else if (city == "ga") {
                    if (cycle == 1) {
                        salesMin = rows[0].gaSales1;
                    }else if (cycle == 2) {
                        salesMin = rows[0].gaSales2;
                    }else if (cycle == 3) {
                        salesMin = rows[0].gaSales3;
                    }else if (cycle == 4) {
                        salesMin = rows[0].gaSales4;
                    }else if (cycle == 5) {
                        salesMin = rows[0].gaSales5;
                    }else if (cycle == 6) {
                        salesMin = rows[0].gaSales6;
                    }else if (cycle == 7) {
                        salesMin = rows[0].gaSales7;
                    }else if (cycle == 8) {
                        salesMin = rows[0].gaSales8;
                    }else if (cycle == 9) {
                        salesMin = rows[0].gaSales9;
                    }else if (cycle == 10) {
                        salesMin = rows[0].gaSales10;
                    }else if (cycle == 11) {
                        salesMin = rows[0].gaSales11;
                    }else if (cycle == 12) {
                        salesMin = rows[0].gaSales12;
                    }else if (cycle == 13) {
                        salesMin = rows[0].gaSales13;
                    }else if (cycle == 14) {
                        salesMin = rows[0].gaSales14;
                    }else if (cycle == 15) {
                        salesMin = rows[0].gaSales15;
                    }else if (cycle == 16) {
                        salesMin = rows[0].gaSales16;
                    }else if (cycle == 17) {
                        salesMin = rows[0].gaSales17;
                    }else if (cycle == 18) {
                        salesMin = rows[0].gaSales18;
                    }else if (cycle == 19) {
                        salesMin = rows[0].gaSales19;
                    }else if (cycle == 20) {
                        salesMin = rows[0].gaSales20;
                    }else if (cycle == 21) {
                        salesMin = rows[0].gaSales21;
                    }else if (cycle == 22) {
                        salesMin = rows[0].gaSales22;
                    }else if (cycle == 23) {
                        salesMin = rows[0].gaSales23;
                    }else if (cycle == 24) {
                        salesMin = rows[0].gaSales24;
                    }else if (cycle == 25) {
                        salesMin = rows[0].gaSales25;
                    }else if (cycle == 26) {
                        salesMin = rows[0].gaSales26;
                    }else if (cycle == 27) {
                        salesMin = rows[0].gaSales27;
                    }else if (cycle == 28) {
                        salesMin = rows[0].gaSales28;
                    }else if (cycle == 29) {
                        salesMin = rows[0].gaSales29;
                    }else if (cycle == 30) {
                        salesMin = rows[0].gaSales30;
                    }else if (cycle == 31) {
                        salesMin = rows[0].gaSales31;
                    }

                    if (cycle1 == 1) {
                        salesMax = rows[0].gaSales1;
                    }else if (cycle1 == 2) {
                        salesMax = rows[0].gaSales2;
                    }else if (cycle1 == 3) {
                        salesMax = rows[0].gaSales3;
                    }else if (cycle1 == 4) {
                        salesMax = rows[0].gaSales4;
                    }else if (cycle1 == 5) {
                        salesMax = rows[0].gaSales5;
                    }else if (cycle1 == 6) {
                        salesMax = rows[0].gaSales6;
                    }else if (cycle1 == 7) {
                        salesMax = rows[0].gaSales7;
                    }else if (cycle1 == 8) {
                        salesMax = rows[0].gaSales8;
                    }else if (cycle1 == 9) {
                        salesMax = rows[0].gaSales9;
                    }else if (cycle1 == 10) {
                        salesMax = rows[0].gaSales10;
                    }else if (cycle1 == 11) {
                        salesMax = rows[0].gaSales11;
                    }else if (cycle1 == 12) {
                        salesMax = rows[0].gaSales12;
                    }else if (cycle1 == 13) {
                        salesMax = rows[0].gaSales13;
                    }else if (cycle1 == 14) {
                        salesMax = rows[0].gaSales14;
                    }else if (cycle1 == 15) {
                        salesMax = rows[0].gaSales15;
                    }else if (cycle1 == 16) {
                        salesMax = rows[0].gaSales16;
                    }else if (cycle1 == 17) {
                        salesMax = rows[0].gaSales17;
                    }else if (cycle1 == 18) {
                        salesMax = rows[0].gaSales18;
                    }else if (cycle1 == 19) {
                        salesMax = rows[0].gaSales19;
                    }else if (cycle1 == 20) {
                        salesMax = rows[0].gaSales20;
                    }else if (cycle1 == 21) {
                        salesMax = rows[0].gaSales21;
                    }else if (cycle1 == 22) {
                        salesMax = rows[0].gaSales22;
                    }else if (cycle1 == 23) {
                        salesMax = rows[0].gaSales23;
                    }else if (cycle1 == 24) {
                        salesMax = rows[0].gaSales24;
                    }else if (cycle1 == 25) {
                        salesMax = rows[0].gaSales25;
                    }else if (cycle1 == 26) {
                        salesMax = rows[0].gaSales26;
                    }else if (cycle1 == 27) {
                        salesMax = rows[0].gaSales27;
                    }else if (cycle1 == 28) {
                        salesMax = rows[0].gaSales28;
                    }else if (cycle1 == 29) {
                        salesMax = rows[0].gaSales29;
                    }else if (cycle1 == 30) {
                        salesMax = rows[0].gaSales30;
                    }else if (cycle1 == 31) {
                        salesMax = rows[0].gaSales31;
                    }
                    city = "固安";
                }
                if (city != "all") {
                    growthRate = calcGrowthRate(salesMin, salesMax);
                    $.messager.alert("提示", city + cycle + "/" + cycle1 + "天的增长率是：" + growthRate, "info");
                }

            } else {
                $.messager.alert("提示", "请选择你要对比的周期", "error");
            }
        } else {
            $.messager.alert("提示", "请选择一条数据", "error");
        }
    }

    // 计算7天和15的周转天数
    function calcTurnoverDays(stock, sales, days) {
        var temp = 0
        if (parseInt(sales) != 0 && days != 0) {
            temp = (parseInt(stock) / (parseInt(sales) / parseInt(days))).toFixed(2);
        }
        return temp > 0 ? temp : 0;
    }
    // 计算7天和15的补货数
    function calcCount(sales, stock, day) {
        var temp = (parseInt(sales) / day * '${sessionScope.days}' - parseInt(stock)).toFixed(0);
        return temp > 0 ? temp : 0;
    }
    // 计算7到15或15到30的增长率
    function calcGrowthRate(salesMin, salesMax) {
        var a = salesMax - salesMin;
        var temp = 0;
        if (a != 0) {
            temp = (salesMin / a) * 100;
        }

        return temp > 0 ? temp.toFixed(2) + "%" : 0 + "%";
    }

    function totalStockCount(value, row, index) {
        return parseInt(row.price) * parseInt(row.totalStock);
    }
    // 北京calcCount(row.bjSales1, row.bjStock, 1)
    function bjTurnoverDays1(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales1, 1);
    }
    function bjCount1(value, row, index) {
        var count = calcCount(row.bjSales1, row.bjStock, 1);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays2(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales2, 2);
    }
    function bjCount2(value, row, index) {
        var count = calcCount(row.bjSales2, row.bjStock, 2);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays3(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales3, 3);
    }
    function bjCount3(value, row, index) {
        var count = calcCount(row.bjSales3, row.bjStock, 3);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays4(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales4, 4);
    }
    function bjCount4(value, row, index) {
        var count = calcCount(row.bjSales4, row.bjStock, 4);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays5(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales5, 5);
    }
    function bjCount5(value, row, index) {
        var count = calcCount(row.bjSales5, row.bjStock, 5);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays6(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales6, 6);
    }
    function bjCount6(value, row, index) {
        var count = calcCount(row.bjSales6, row.bjStock, 6);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays7(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales7, 7);
    }
    function bjCount7(value, row, index) {
        var count = calcCount(row.bjSales7, row.bjStock, 7);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays8(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales8, 8);
    }
    function bjCount8(value, row, index) {
        var count = calcCount(row.bjSales8, row.bjStock, 8);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays9(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales9, 9);
    }
    function bjCount9(value, row, index) {
        var count = calcCount(row.bjSales9, row.bjStock, 9);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays10(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales10,10);
    }
    function bjCount10(value, row, index) {
        var count = calcCount(row.bjSales10, row.bjStock, 10);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays11(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales11,11);
    }
    function bjCount11(value, row, index) {
        var count = calcCount(row.bjSales11, row.bjStock, 11);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays12(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales12,12);
    }
    function bjCount12(value, row, index) {
        var count = calcCount(row.bjSales12, row.bjStock, 12);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays13(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales13,13);
    }
    function bjCount13(value, row, index) {
        var count = calcCount(row.bjSales13, row.bjStock, 13);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays14(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales14,14);
    }
    function bjCount14(value, row, index) {
        var count = calcCount(row.bjSales14, row.bjStock, 14);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays15(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales15,15);
    }
    function bjCount15(value, row, index) {
        var count = calcCount(row.bjSales15, row.bjStock, 15);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays16(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales16,16);
    }
    function bjCount16(value, row, index) {
        var count = calcCount(row.bjSales16, row.bjStock, 16);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays17(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales17,17);
    }
    function bjCount17(value, row, index) {
        var count = calcCount(row.bjSales17, row.bjStock, 17);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays18(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales18,18);
    }
    function bjCount18(value, row, index) {
        var count = calcCount(row.bjSales18, row.bjStock, 18);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays19(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales19,19);
    }
    function bjCount19(value, row, index) {
        var count = calcCount(row.bjSales19, row.bjStock, 19);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays20(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales20,20);
    }
    function bjCount20(value, row, index) {
        var coun = calcCount(row.bjSales20, row.bjStock, 20);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays21(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales21,21);
    }
    function bjCount21(value, row, index) {
        var count = calcCount(row.bjSales21, row.bjStock, 21);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays22(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales22,22);
    }
    function bjCount22(value, row, index) {
        var count = calcCount(row.bjSales22, row.bjStock, 22);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays23(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales23,23);
    }
    function bjCount23(value, row, index) {
        var count = calcCount(row.bjSales23, row.bjStock, 23);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays24(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales24,24);
    }
    function bjCount24(value, row, index) {
        var count = calcCount(row.bjSales24, row.bjStock, 24);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays25(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales25,25);
    }
    function bjCount25(value, row, index) {
        var count = calcCount(row.bjSales25, row.bjStock, 25);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays26(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales26,26);
    }
    function bjCount26(value, row, index) {
        var count = calcCount(row.bjSales26, row.bjStock, 26);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays27(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales27,27);
    }
    function bjCount27(value, row, index) {
        var count = calcCount(row.bjSales27, row.bjStock, 27);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays28(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales28,28);
    }
    function bjCount28(value, row, index) {
        var count = calcCount(row.bjSales28, row.bjStock, 28);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays29(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales29,29);
    }
    function bjCount29(value, row, index) {
        var count = calcCount(row.bjSales29, row.bjStock, 29);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays30(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales30,30);
    }
    function bjCount30(value, row, index) {
        var count = calcCount(row.bjSales30, row.bjStock, 30);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays31(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales31,31);
    }
    function bjCount31(value, row, index) {
        var count = calcCount(row.bjSales31, row.bjStock, 31);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function bjTurnoverDays90(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales90,90);
    }
    function bjCount90(value, row, index) {
        var count = calcCount(row.bjSales90, row.bjStock, 90);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }

    // 上海
    function shTurnoverDays1(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales1, 1);
    }
    function shCount1(value, row, index) {
        var count = calcCount(row.shSales1, row.shStock, 1);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays2(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales2, 2);
    }
    function shCount2(value, row, index) {
        var count = calcCount(row.shSales2, row.shStock, 2);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays3(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales3, 3);
    }
    function shCount3(value, row, index) {
        var count = calcCount(row.shSales3, row.shStock, 3);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays4(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales4, 4);
    }
    function shCount4(value, row, index) {
        var count = calcCount(row.shSales4, row.shStock, 4);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays5(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales5, 5);
    }
    function shCount5(value, row, index) {
        var count = calcCount(row.shSales5, row.shStock, 5);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays6(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales6, 6);
    }
    function shCount6(value, row, index) {
        var count = calcCount(row.shSales6, row.shStock, 6);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays7(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales7, 7);
    }
    function shCount7(value, row, index) {
        var count = calcCount(row.shSales7, row.shStock, 7);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays8(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales8, 8);
    }
    function shCount8(value, row, index) {
        var count = calcCount(row.shSales8, row.shStock, 8);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays9(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales9, 9);
    }
    function shCount9(value, row, index) {
        var count = calcCount(row.shSales9, row.shStock, 9);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays10(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales10,10);
    }
    function shCount10(value, row, index) {
        var count = calcCount(row.shSales10, row.shStock, 10);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays11(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales11,11);
    }
    function shCount11(value, row, index) {
        var count = calcCount(row.shSales11, row.shStock, 11);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays12(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales12,12);
    }
    function shCount12(value, row, index) {
        var count = calcCount(row.shSales12, row.shStock, 12);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays13(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales13,13);
    }
    function shCount13(value, row, index) {
        var count = calcCount(row.shSales13, row.shStock, 13);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays14(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales14,14);
    }
    function shCount14(value, row, index) {
        var count = calcCount(row.shSales14, row.shStock, 14);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays15(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales15,15);
    }
    function shCount15(value, row, index) {
        var count = calcCount(row.shSales15, row.shStock, 15);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays16(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales16,16);
    }
    function shCount16(value, row, index) {
        var count = calcCount(row.shSales16, row.shStock, 16);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays17(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales17,17);
    }
    function shCount17(value, row, index) {
        var count = calcCount(row.shSales17, row.shStock, 17);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays18(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales18,18);
    }
    function shCount18(value, row, index) {
        var count = calcCount(row.shSales18, row.shStock, 18);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays19(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales19,19);
    }
    function shCount19(value, row, index) {
        var count = calcCount(row.shSales19, row.shStock, 19);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays20(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales20,20);
    }
    function shCount20(value, row, index) {
        var count = calcCount(row.shSales20, row.shStock, 20);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays21(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales21,21);
    }
    function shCount21(value, row, index) {
        var count = calcCount(row.shSales21, row.shStock, 21);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays22(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales22,22);
    }
    function shCount22(value, row, index) {
        var count = calcCount(row.shSales22, row.shStock, 22);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays23(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales23,23);
    }
    function shCount23(value, row, index) {
        var count = calcCount(row.shSales23, row.shStock, 23);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays24(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales24,24);
    }
    function shCount24(value, row, index) {
        var count = calcCount(row.shSales24, row.shStock, 24);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays25(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales25,25);
    }
    function shCount25(value, row, index) {
        var count = calcCount(row.shSales25, row.shStock, 25);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays26(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales26,26);
    }
    function shCount26(value, row, index) {
        var count = calcCount(row.shSales26, row.shStock, 26);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays27(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales27,27);
    }
    function shCount27(value, row, index) {
        var count = calcCount(row.shSales27, row.shStock, 27);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays28(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales28,28);
    }
    function shCount28(value, row, index) {
        var count = calcCount(row.shSales28, row.shStock, 28);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays29(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales29,29);
    }
    function shCount29(value, row, index) {
        var count = calcCount(row.shSales29, row.shStock, 29);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays30(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales30,30);
    }
    function shCount30(value, row, index) {
        var count = calcCount(row.shSales30, row.shStock, 30);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays31(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales31,31);
    }
    function shCount31(value, row, index) {
        var count = calcCount(row.shSales31, row.shStock, 31);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function shTurnoverDays90(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales90,90);
    }
    function shCount90(value, row, index) {
        var count = calcCount(row.shSales90, row.shStock, 90);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }

    // 广州
    function gzTurnoverDays1(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales1 ,1);
    }
    function gzCount1(value, row, index) {
        var count = calcCount(row.gzSales1, row.gzStock, 1);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays2(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales2, 2);
    }
    function gzCount2(value, row, index) {
        var count = calcCount(row.gzSales2, row.gzStock, 2);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays3(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales3, 3);
    }
    function gzCount3(value, row, index) {
        var count = calcCount(row.gzSales3, row.gzStock, 3);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays4(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales4, 4);
    }
    function gzCount4(value, row, index) {
        var count = calcCount(row.gzSales4, row.gzStock, 4);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays5(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales5, 5);
    }
    function gzCount5(value, row, index) {
        var count = calcCount(row.gzSales5, row.gzStock, 5);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays6(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales6, 6);
    }
    function gzCount6(value, row, index) {
        var count = calcCount(row.gzSales6, row.gzStock, 6);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays7(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales7, 7);
    }
    function gzCount7(value, row, index) {
        var count = calcCount(row.gzSales7, row.gzStock, 7);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays8(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales8, 8);
    }
    function gzCount8(value, row, index) {
        var count = calcCount(row.gzSales8, row.gzStock, 8);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays9(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales9, 9);
    }
    function gzCount9(value, row, index) {
        var count = calcCount(row.gzSales9, row.gzStock, 9);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays10(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales10,10);
    }
    function gzCount10(value, row, index) {
        var count = calcCount(row.gzSales10, row.gzStock, 10);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays11(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales11,11);
    }
    function gzCount11(value, row, index) {
        var count = calcCount(row.gzSales11, row.gzStock, 11);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays12(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales12,12);
    }
    function gzCount12(value, row, index) {
        var count = calcCount(row.gzSales12, row.gzStock, 12);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays13(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales13,13);
    }
    function gzCount13(value, row, index) {
        var count = calcCount(row.gzSales13, row.gzStock, 13);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays14(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales14,14);
    }
    function gzCount14(value, row, index) {
        var count = calcCount(row.gzSales14, row.gzStock, 14);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays15(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales15,15);
    }
    function gzCount15(value, row, index) {
        var count = calcCount(row.gzSales15, row.gzStock, 15);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays16(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales16,16);
    }
    function gzCount16(value, row, index) {
        var count = calcCount(row.gzSales16, row.gzStock, 16);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays17(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales17,17);
    }
    function gzCount17(value, row, index) {
        var count = calcCount(row.gzSales17, row.gzStock, 17);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays18(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales18,18);
    }
    function gzCount18(value, row, index) {
        var count = calcCount(row.gzSales18, row.gzStock, 18);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays19(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales19,19);
    }
    function gzCount19(value, row, index) {
        var count = calcCount(row.gzSales19, row.gzStock, 19);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays20(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales20,20);
    }
    function gzCount20(value, row, index) {
        var count = calcCount(row.gzSales20, row.gzStock, 20);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays21(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales21,21);
    }
    function gzCount21(value, row, index) {
        var count = calcCount(row.gzSales21, row.gzStock, 21);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays22(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales22,22);
    }
    function gzCount22(value, row, index) {
        var count = calcCount(row.gzSales22, row.gzStock, 22);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays23(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales23,23);
    }
    function gzCount23(value, row, index) {
        var count = calcCount(row.gzSales23, row.gzStock, 23);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays24(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales24,24);
    }
    function gzCount24(value, row, index) {
        var count = calcCount(row.gzSales24, row.gzStock, 24);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays25(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales25,25);
    }
    function gzCount25(value, row, index) {
        var count = calcCount(row.gzSales25, row.gzStock, 25);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays26(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales26,26);
    }
    function gzCount26(value, row, index) {
        var count = calcCount(row.gzSales26, row.gzStock, 26);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays27(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales27,27);
    }
    function gzCount27(value, row, index) {
        var count = calcCount(row.gzSales27, row.gzStock, 27);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays28(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales28,28);
    }
    function gzCount28(value, row, index) {
        var count = calcCount(row.gzSales28, row.gzStock, 28);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays29(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales29,29);
    }
    function gzCount29(value, row, index) {
        var count = calcCount(row.gzSales29, row.gzStock, 29);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays30(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales30,30);
    }
    function gzCount30(value, row, index) {
        var count = calcCount(row.gzSales30, row.gzStock, 30);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays31(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales31,31);
    }
    function gzCount31(value, row, index) {
        var count = calcCount(row.gzSales31, row.gzStock, 31);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gzTurnoverDays90(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales90,90);
    }
    function gzCount90(value, row, index) {
        var count = calcCount(row.gzSales90, row.gzStock, 90);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }


    // 成都
    function cdTurnoverDays1(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales1, 1);
    }
    function cdCount1(value, row, index) {
        var count = calcCount(row.cdSales1, row.cdStock, 1);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays2(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales2, 2);
    }
    function cdCount2(value, row, index) {
        var count = calcCount(row.cdSales2, row.cdStock, 2);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays3(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales3, 3);
    }
    function cdCount3(value, row, index) {
        var count = calcCount(row.cdSales3, row.cdStock, 3);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays4(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales4, 4);
    }
    function cdCount4(value, row, index) {
        var count = calcCount(row.cdSales4, row.cdStock, 4);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays5(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales5, 5);
    }
    function cdCount5(value, row, index) {
        var count = calcCount(row.cdSales5, row.cdStock, 5);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays6(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales6, 6);
    }
    function cdCount6(value, row, index) {
        var count = calcCount(row.cdSales6, row.cdStock, 6);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays7(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales7, 7);
    }
    function cdCount7(value, row, index) {
        var count = calcCount(row.cdSales7, row.cdStock, 7);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays8(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales8, 8);
    }
    function cdCount8(value, row, index) {
        var count = calcCount(row.cdSales8, row.cdStock, 8);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays9(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales9, 9);
    }
    function cdCount9(value, row, index) {
        var count = calcCount(row.cdSales9, row.cdStock, 9);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays10(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales10,10);
    }
    function cdCount10(value, row, index) {
        var count = calcCount(row.cdSales10, row.cdStock, 10);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays11(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales11,11);
    }
    function cdCount11(value, row, index) {
        var count = calcCount(row.cdSales11, row.cdStock, 11);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays12(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales12,12);
    }
    function cdCount12(value, row, index) {
        var count = calcCount(row.cdSales12, row.cdStock, 12);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays13(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales13,13);
    }
    function cdCount13(value, row, index) {
        var count = calcCount(row.cdSales13, row.cdStock, 13);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays14(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales14,14);
    }
    function cdCount14(value, row, index) {
        var count = calcCount(row.cdSales14, row.cdStock, 14);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays15(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales15,15);
    }
    function cdCount15(value, row, index) {
        var count = calcCount(row.cdSales15, row.cdStock, 15);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays16(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales16,16);
    }
    function cdCount16(value, row, index) {
        var count = calcCount(row.cdSales16, row.cdStock, 16);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays17(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales17,17);
    }
    function cdCount17(value, row, index) {
        var count = calcCount(row.cdSales17, row.cdStock, 17);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays18(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales18,18);
    }
    function cdCount18(value, row, index) {
        var count = calcCount(row.cdSales18, row.cdStock, 18);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays19(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales19,19);
    }
    function cdCount19(value, row, index) {
        var count = calcCount(row.cdSales19, row.cdStock, 19);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays20(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales20,20);
    }
    function cdCount20(value, row, index) {
        var count = calcCount(row.cdSales20, row.cdStock, 20);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays21(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales21,21);
    }
    function cdCount21(value, row, index) {
        var count = calcCount(row.cdSales21, row.cdStock, 21);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays22(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales22,22);
    }
    function cdCount22(value, row, index) {
        var count = calcCount(row.cdSales22, row.cdStock, 22);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays23(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales23,23);
    }
    function cdCount23(value, row, index) {
        var count = calcCount(row.cdSales23, row.cdStock, 23);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays24(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales24,24);
    }
    function cdCount24(value, row, index) {
        var count = calcCount(row.cdSales24, row.cdStock, 24);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays25(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales25,25);
    }
    function cdCount25(value, row, index) {
        var count = calcCount(row.cdSales25, row.cdStock, 25);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays26(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales26,26);
    }
    function cdCount26(value, row, index) {
        var count = calcCount(row.cdSales26, row.cdStock, 26);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays27(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales27,27);
    }
    function cdCount27(value, row, index) {
        var count = calcCount(row.cdSales27, row.cdStock, 27);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays28(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales28,28);
    }
    function cdCount28(value, row, index) {
        var count = calcCount(row.cdSales28, row.cdStock, 28);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays29(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales29,29);
    }
    function cdCount29(value, row, index) {
        var count = calcCount(row.cdSales29, row.cdStock, 29);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays30(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales30,30);
    }
    function cdCount30(value, row, index) {
        var count = calcCount(row.cdSales30, row.cdStock, 30);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays31(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales31,31);
    }
    function cdCount31(value, row, index) {
        var count = calcCount(row.cdSales31, row.cdStock, 31);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function cdTurnoverDays90(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales90,90);
    }
    function cdCount90(value, row, index) {
        var count = calcCount(row.cdSales90, row.cdStock, 90);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }

    // 武汉
    function whTurnoverDays1(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales1, 1);
    }
    function whCount1(value, row, index) {
        var count = calcCount(row.whSales1, row.whStock, 1);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays2(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales2, 2);
    }
    function whCount2(value, row, index) {
        var count = calcCount(row.whSales2, row.whStock, 2);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays3(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales3, 3);
    }
    function whCount3(value, row, index) {
        var count = calcCount(row.whSales3, row.whStock, 3);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays4(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales4, 4);
    }
    function whCount4(value, row, index) {
        var count = calcCount(row.whSales4, row.whStock, 4);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays5(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales5, 5);
    }
    function whCount5(value, row, index) {
        var count = calcCount(row.whSales5, row.whStock, 5);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays6(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales6, 6);
    }
    function whCount6(value, row, index) {
        var count = calcCount(row.whSales6, row.whStock, 6);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays7(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales7, 7);
    }
    function whCount7(value, row, index) {
        var count = calcCount(row.whSales7, row.whStock, 7);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays8(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales8, 8);
    }
    function whCount8(value, row, index) {
        var count = calcCount(row.whSales8, row.whStock, 8);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays9(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales9, 9);
    }
    function whCount9(value, row, index) {
        var count = calcCount(row.whSales9, row.whStock, 9);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays10(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales10,10);
    }
    function whCount10(value, row, index) {
        var count = calcCount(row.whSales10, row.whStock, 10);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays11(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales11,11);
    }
    function whCount11(value, row, index) {
        var count = calcCount(row.whSales11, row.whStock, 11);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays12(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales12,12);
    }
    function whCount12(value, row, index) {
        var count = calcCount(row.whSales12, row.whStock, 12);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
        return count > 0 ? "<span>count</span>" : 0;
    }
    function whTurnoverDays13(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales13,13);
    }
    function whCount13(value, row, index) {
        var count = calcCount(row.whSales13, row.whStock, 13);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays14(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales14,14);
    }
    function whCount14(value, row, index) {
        var count = calcCount(row.whSales14, row.whStock, 14);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays15(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales15,15);
    }
    function whCount15(value, row, index) {
        var count = calcCount(row.whSales15, row.whStock, 15);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays16(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales16,16);
    }
    function whCount16(value, row, index) {
        var count = calcCount(row.whSales16, row.whStock, 16);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays17(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales17,17);
    }
    function whCount17(value, row, index) {
        var count = calcCount(row.whSales17, row.whStock, 17);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays18(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales18,18);
    }
    function whCount18(value, row, index) {
        var count = calcCount(row.whSales18, row.whStock, 18);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays19(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales19,19);
    }
    function whCount19(value, row, index) {
        var count = calcCount(row.whSales19, row.whStock, 19);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays20(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales20,20);
    }
    function whCount20(value, row, index) {
        var count = calcCount(row.whSales20, row.whStock, 20);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays21(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales21,21);
    }
    function whCount21(value, row, index) {
        var count = calcCount(row.whSales21, row.whStock, 21);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays22(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales22,22);
    }
    function whCount22(value, row, index) {
        var count = calcCount(row.whSales22, row.whStock, 22);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays23(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales23,23);
    }
    function whCount23(value, row, index) {
        var count = calcCount(row.whSales23, row.whStock, 23);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays24(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales24,24);
    }
    function whCount24(value, row, index) {
        var count = calcCount(row.whSales24, row.whStock, 24);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays25(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales25,25);
    }
    function whCount25(value, row, index) {
        var count = calcCount(row.whSales25, row.whStock, 25);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays26(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales26,26);
    }
    function whCount26(value, row, index) {
        var count = calcCount(row.whSales26, row.whStock, 26);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays27(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales27,27);
    }
    function whCount27(value, row, index) {
        var count = calcCount(row.whSales27, row.whStock, 27);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays28(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales28,28);
    }
    function whCount28(value, row, index) {
        var count = calcCount(row.whSales28, row.whStock, 28);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays29(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales29,29);
    }
    function whCount29(value, row, index) {
        var count = calcCount(row.whSales29, row.whStock, 29);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays30(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales30,30);
    }
    function whCount30(value, row, index) {
        var count = calcCount(row.whSales30, row.whStock, 30);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays31(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales31,31);
    }
    function whCount31(value, row, index) {
        var count = calcCount(row.whSales31, row.whStock, 31);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function whTurnoverDays90(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales90,90);
    }
    function whCount90(value, row, index) {
        var count = calcCount(row.whSales90, row.whStock, 90);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }

    // 沈阳
    function syTurnoverDays1(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales1, 1);
    }
    function syCount1(value, row, index) {
        var count = calcCount(row.sySales1, row.syStock, 1);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays2(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales2,2);
    }
    function syCount2(value, row, index) {
        var count = calcCount(row.sySales2, row.syStock, 2);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays3(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales3,3);
    }
    function syCount3(value, row, index) {
        var count = calcCount(row.sySales3, row.syStock, 3);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays4(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales4,4);
    }
    function syCount4(value, row, index) {
        var count = calcCount(row.sySales4, row.syStock, 4);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays5(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales5,5);
    }
    function syCount5(value, row, index) {
        var count = calcCount(row.sySales5, row.syStock, 5);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays6(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales6,6);
    }
    function syCount6(value, row, index) {
        var count = calcCount(row.sySales6, row.syStock, 6);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays7(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales7,7);
    }
    function syCount7(value, row, index) {
        var count = calcCount(row.sySales7, row.syStock, 7);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays8(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales8,8);
    }
    function syCount8(value, row, index) {
        var count = calcCount(row.sySales8, row.syStock, 8);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays9(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales9,9);
    }
    function syCount9(value, row, index) {
        var count = calcCount(row.sySales9, row.syStock, 9);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays10(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales10,10);
    }
    function syCount10(value, row, index) {
        var count = calcCount(row.sySales10, row.syStock, 10);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays11(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales11,11);
    }
    function syCount11(value, row, index) {
        var count = calcCount(row.sySales11, row.syStock, 11);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays12(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales12,12);
    }
    function syCount12(value, row, index) {
        var count = calcCount(row.sySales12, row.syStock, 12);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays13(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales13,13);
    }
    function syCount13(value, row, index) {
        var count = calcCount(row.sySales13, row.syStock, 13);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays14(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales14,14);
    }
    function syCount14(value, row, index) {
        var count = calcCount(row.sySales14, row.syStock, 14);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays15(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales15,15);
    }
    function syCount15(value, row, index) {
        var count = calcCount(row.sySales15, row.syStock, 15);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays16(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales16,16);
    }
    function syCount16(value, row, index) {
        var count = calcCount(row.sySales16, row.syStock, 16);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays17(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales17,17);
    }
    function syCount17(value, row, index) {
        var count = calcCount(row.sySales17, row.syStock, 17);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays18(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales18,18);
    }
    function syCount18(value, row, index) {
        var count = calcCount(row.sySales18, row.syStock, 18);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays19(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales19,19);
    }
    function syCount19(value, row, index) {
        var count = calcCount(row.sySales19, row.syStock, 19);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays20(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales20,20);
    }
    function syCount20(value, row, index) {
        var count = calcCount(row.sySales20, row.syStock, 20);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays21(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales21,21);
    }
    function syCount21(value, row, index) {
        var count = calcCount(row.sySales21, row.syStock, 21);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays22(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales22,22);
    }
    function syCount22(value, row, index) {
        var count = calcCount(row.sySales22, row.syStock, 22);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays23(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales23,23);
    }
    function syCount23(value, row, index) {
        var count = calcCount(row.sySales23, row.syStock, 23);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays24(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales24,24);
    }
    function syCount24(value, row, index) {
        var count = calcCount(row.sySales24, row.syStock, 24);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays25(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales25,25);
    }
    function syCount25(value, row, index) {
        var count = calcCount(row.sySales25, row.syStock, 25);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays26(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales26,26);
    }
    function syCount26(value, row, index) {
        var count = calcCount(row.sySales26, row.syStock, 26);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays27(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales27,27);
    }
    function syCount27(value, row, index) {
        var count = calcCount(row.sySales27, row.syStock, 27);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays28(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales28,28);
    }
    function syCount28(value, row, index) {
        var count = calcCount(row.sySales28, row.syStock, 28);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }

    function syTurnoverDays29(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales29,29);
    }
    function syCount29(value, row, index) {
        var count = calcCount(row.sySales29, row.syStock, 29);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays30(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales30,30);
    }
    function syCount30(value, row, index) {
        var count = calcCount(row.sySales30, row.syStock, 30);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays31(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales31,31);
    }
    function syCount31(value, row, index) {
        var count = calcCount(row.sySales31, row.syStock, 31);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function syTurnoverDays90(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales90,90);
    }
    function syCount90(value, row, index) {
        var count = calcCount(row.sySales90, row.syStock, 90);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }

    // 西安
    function xaTurnoverDays1(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales1,1);
    }
    function xaCount1(value, row, index) {
        var count = calcCount(row.xaSales1, row.xaStock, 1);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays2(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales2,2);
    }
    function xaCount2(value, row, index) {
        var count = calcCount(row.xaSales2, row.xaStock, 2);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays3(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales3,3);
    }
    function xaCount3(value, row, index) {
        var count = calcCount(row.xaSales3, row.xaStock, 3);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays4(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales4,4);
    }
    function xaCount4(value, row, index) {
        var count = calcCount(row.xaSales4, row.xaStock, 4);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays5(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales5,5);
    }
    function xaCount5(value, row, index) {
        var count = calcCount(row.xaSales5, row.xaStock, 5);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays6(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales6,6);
    }
    function xaCount6(value, row, index) {
        var count = calcCount(row.xaSales6, row.xaStock, 6);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays7(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales7,7);
    }
    function xaCount7(value, row, index) {
        var count = calcCount(row.xaSales7, row.xaStock, 7);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays8(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales8,8);
    }
    function xaCount8(value, row, index) {
        var count = calcCount(row.xaSales8, row.xaStock, 8);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays9(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales9,9);
    }
    function xaCount9(value, row, index) {
        var count = calcCount(row.xaSales9, row.xaStock, 9);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays10(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales10,10);
    }
    function xaCount10(value, row, index) {
        var count = calcCount(row.xaSales10, row.xaStock, 10);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays11(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales11,11);
    }
    function xaCount11(value, row, index) {
        var count = calcCount(row.xaSales11, row.xaStock, 11);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays12(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales12,12);
    }
    function xaCount12(value, row, index) {
        var count = calcCount(row.xaSales12, row.xaStock, 12);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays13(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales13,13);
    }
    function xaCount13(value, row, index) {
        var count = calcCount(row.xaSales13, row.xaStock, 13);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays14(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales14,14);
    }
    function xaCount14(value, row, index) {
        var count = calcCount(row.xaSales14, row.xaStock, 14);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays15(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales15,15);
    }
    function xaCount15(value, row, index) {
        var count = calcCount(row.xaSales15, row.xaStock, 15);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays16(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales16,16);
    }
    function xaCount16(value, row, index) {
        var count = calcCount(row.xaSales16, row.xaStock, 16);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays17(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales17,17);
    }
    function xaCount17(value, row, index) {
        var count = calcCount(row.xaSales17, row.xaStock, 17);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays18(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales18,18);
    }
    function xaCount18(value, row, index) {
        var count = calcCount(row.xaSales18, row.xaStock, 18);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays19(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales19,19);
    }
    function xaCount19(value, row, index) {
        var count = calcCount(row.xaSales19, row.xaStock, 19);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays20(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales20,20);
    }
    function xaCount20(value, row, index) {
        var count = calcCount(row.xaSales20, row.xaStock, 20);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays21(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales21,21);
    }
    function xaCount21(value, row, index) {
        var count = calcCount(row.xaSales21, row.xaStock, 21);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays22(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales22,22);
    }
    function xaCount22(value, row, index) {
        var count = calcCount(row.xaSales22, row.xaStock, 22);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays23(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales23,23);
    }
    function xaCount23(value, row, index) {
        var count = calcCount(row.xaSales23, row.xaStock, 23);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays24(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales24,24);
    }
    function xaCount24(value, row, index) {
        var count = calcCount(row.xaSales24, row.xaStock, 24);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays25(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales25,25);
    }
    function xaCount25(value, row, index) {
        var count = calcCount(row.xaSales25, row.xaStock, 25);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays26(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales26,26);
    }
    function xaCount26(value, row, index) {
        var count = calcCount(row.xaSales26, row.xaStock, 26);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays27(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales27,27);
    }
    function xaCount27(value, row, index) {
        var count = calcCount(row.xaSales27, row.xaStock, 27);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays28(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales28,28);
    }
    function xaCount28(value, row, index) {
        var count = calcCount(row.xaSales28, row.xaStock, 28);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays29(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales29,29);
    }
    function xaCount29(value, row, index) {
        var count = calcCount(row.xaSales29, row.xaStock, 29);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays30(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales30,30);
    }
    function xaCount30(value, row, index) {
        var count = calcCount(row.xaSales30, row.xaStock, 30);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays31(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales31,31);
    }
    function xaCount31(value, row, index) {
        var count = calcCount(row.xaSales31, row.xaStock, 31);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function xaTurnoverDays90(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales90,90);
    }
    function xaCount90(value, row, index) {
        var count = calcCount(row.xaSales90, row.xaStock, 90);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }



    // 固安
    function gaTurnoverDays1(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales1,1);
    }
    function gaCount1(value, row, index) {
        var count = calcCount(row.gaSales1, row.gaStock, 1);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays2(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales2,2);
    }
    function gaCount2(value, row, index) {
        var count = calcCount(row.gaSales2, row.gaStock, 2);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays3(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales3,3);
    }
    function gaCount3(value, row, index) {
        var count = calcCount(row.gaSales3, row.gaStock, 3);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays4(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales4,4);
    }
    function gaCount4(value, row, index) {
        var count = calcCount(row.gaSales4, row.gaStock, 4);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays5(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales5,5);
    }
    function gaCount5(value, row, index) {
        var count = calcCount(row.gaSales5, row.gaStock, 5);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays6(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales6,6);
    }
    function gaCount6(value, row, index) {
        var count = calcCount(row.gaSales6, row.gaStock, 6);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays7(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales7,7);
    }
    function gaCount7(value, row, index) {
        var count = calcCount(row.gaSales7, row.gaStock, 7);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays8(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales8,8);
    }
    function gaCount8(value, row, index) {
        var count = calcCount(row.gaSales8, row.gaStock, 8);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays9(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales9,9);
    }
    function gaCount9(value, row, index) {
        var count = calcCount(row.gaSales9, row.gaStock, 9);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays10(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales10,10);
    }
    function gaCount10(value, row, index) {
        var count = calcCount(row.gaSales10, row.gaStock, 10);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays11(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales11,11);
    }
    function gaCount11(value, row, index) {
        var count = calcCount(row.gaSales11, row.gaStock, 11);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays12(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales12,12);
    }
    function gaCount12(value, row, index) {
        var count = calcCount(row.gaSales12, row.gaStock, 12);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays13(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales13,13);
    }
    function gaCount13(value, row, index) {
        var count = calcCount(row.gaSales13, row.gaStock, 13);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays14(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales14,14);
    }
    function gaCount14(value, row, index) {
        var count = calcCount(row.gaSales14, row.gaStock, 14);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays15(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales15,15);
    }
    function gaCount15(value, row, index) {
        var count = calcCount(row.gaSales15, row.gaStock, 15);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays16(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales16,16);
    }
    function gaCount16(value, row, index) {
        var count = calcCount(row.gaSales16, row.gaStock, 16);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays17(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales17,17);
    }
    function gaCount17(value, row, index) {
        var count = calcCount(row.gaSales17, row.gaStock, 17);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays18(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales18,18);
    }
    function gaCount18(value, row, index) {
        var count = calcCount(row.gaSales18, row.gaStock, 18);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays19(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales19,19);
    }
    function gaCount19(value, row, index) {
        var count = calcCount(row.gaSales19, row.gaStock, 19);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays20(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales20,20);
    }
    function gaCount20(value, row, index) {
        var count = calcCount(row.gaSales20, row.gaStock, 20);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays21(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales21,21);
    }
    function gaCount21(value, row, index) {
        var count = calcCount(row.gaSales21, row.gaStock, 21);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays22(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales22,22);
    }
    function gaCount22(value, row, index) {
        var count = calcCount(row.gaSales22, row.gaStock, 22);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays23(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales23,23);
    }
    function gaCount23(value, row, index) {
        var count = calcCount(row.gaSales23, row.gaStock, 23);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays24(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales24,24);
    }
    function gaCount24(value, row, index) {
        var count = calcCount(row.gaSales24, row.gaStock, 24);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays25(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales25,25);
    }
    function gaCount25(value, row, index) {
        var count = calcCount(row.gaSales25, row.gaStock, 25);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays26(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales26,26);
    }
    function gaCount26(value, row, index) {
        var count = calcCount(row.gaSales26, row.gaStock, 26);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays27(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales27,27);
    }
    function gaCount27(value, row, index) {
        var count = calcCount(row.gaSales27, row.gaStock, 27);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays28(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales28,28);
    }
    function gaCount28(value, row, index) {
        var count = calcCount(row.gaSales28, row.gaStock, 28);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays29(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales29,29);
    }
    function gaCount29(value, row, index) {
        var count = calcCount(row.gaSales29, row.gaStock, 29);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays30(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales30,30);
    }
    function gaCount30(value, row, index) {
        var count = calcCount(row.gaSales30, row.gaStock, 30);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays31(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales31,31);
    }
    function gaCount31(value, row, index) {
        var count = calcCount(row.gaSales31, row.gaStock, 31);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function gaTurnoverDays90(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales90,90);
    }
    function gaCount90(value, row, index) {
        var count = calcCount(row.gaSales90, row.gaStock, 90);
        return count > 0 ? "<span style='color:red; font-weight: bold;'>" + count + "</span>" : 0;
    }
    function price(value, row, index) {
        return value.toFixed(2);
    }
</script>

</body>
</html>