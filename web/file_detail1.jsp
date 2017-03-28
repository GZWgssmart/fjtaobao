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
    <title>大表格商品详情</title>
    <link rel="stylesheet" type="text/css" href="<%=path %>/jquery-easyui/themes/bootstrap/easyui.css">
    <link rel="stylesheet" href="<%=path %>/jquery-easyui/themes/icon.css"/>

    <script type="text/javascript" src="<%=path %>/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=path %>/jquery-easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=path %>/jquery-easyui/locale/easyui-lang-zh_CN.js"></script>
</head>
<body>
<h3 style="text-align: center;">
    大表格详情补货建议
</h3>
<table class="easyui-datagrid" id="list" title="商品详细列表" style="width:100%;height:500px;"
       data-options="toolbar:'#tb',
                        singleSelect:false,
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
        <th data-options="field:'price',width:100,align:'center'">商品价格</th>
        <th data-options="field:'totalStock',width:100,align:'center'">全国总库存</th>
        <th data-options="field:'totalStockCount',width:100,align:'center'" formatter="totalStockCount">全国总库存额</th>
        <c:choose>
            <c:when test="${sessionScope.city == 'bj'}">
                <th data-options="field:'bjStock',width:100,align:'center'">北京库存</th>
                <th data-options="field:'bjSales7',width:100,align:'center'">北京7天销量</th>
                <th data-options="field:'bjTurnoverDays7',width:100,align:'center'" formatter="bjTurnoverDays7">北京7天周转天数</th>
                <th data-options="field:'bjCount7',width:200,align:'center'" formatter="bjCount7">北京7天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'bjGrowthRate7to15',width:100,align:'center'" formatter="bjGrowthRate7to15">北京7/15天增长率</th>
                <th data-options="field:'bjSales15',width:100,align:'center'">北京15天销量</th>
                <th data-options="field:'bjTurnoverDays15',width:100,align:'center'" formatter="bjTurnoverDays15">北京15天周转天数</th>
                <th data-options="field:'bjCount15',width:200,align:'center'" formatter="bjCount15">北京15天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'bjSales30',width:100,align:'center'">北京30天销量</th>
                <th data-options="field:'bjGrowthRate15to30',width:100,align:'center'" formatter="bjGrowthRate15to30">北京15/30天增长率</th>

            </c:when>
            <c:when test="${sessionScope.city == 'sh'}">
                <th data-options="field:'shStock',width:100,align:'center'">上海库存</th>
                <th data-options="field:'shSales7',width:100,align:'center'">上海7天销量</th>
                <th data-options="field:'shTurnoverDays7',width:100,align:'center'" formatter="shTurnoverDays7">上海7天周转天数</th>
                <th data-options="field:'shCount7',width:200,align:'center'" formatter="shCount7">上海7天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'shGrowthRate7to15',width:100,align:'center'" formatter="shGrowthRate7to15">上海7/15天增长率</th>
                <th data-options="field:'shSales15',width:100,align:'center'">上海15天销量</th>
                <th data-options="field:'shTurnoverDays15',width:100,align:'center'" formatter="shTurnoverDays15">上海15天周转天数</th>
                <th data-options="field:'shCount15',width:200,align:'center'" formatter="shCount15">上海15天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'shSales30',width:100,align:'center'">上海30天销量</th>
                <th data-options="field:'shGrowthRate15to30',width:100,align:'center'" formatter="shGrowthRate15to30">上海15/30天增长率</th>

            </c:when>
            <c:when test="${sessionScope.city == 'gz'}">
                <th data-options="field:'gzStock',width:100,align:'center'">广州库存</th>
                <th data-options="field:'gzSales7',width:100,align:'center'">广州7天销量</th>
                <th data-options="field:'gzTurnoverDays7',width:100,align:'center'" formatter="gzTurnoverDays7">广州7天周转天数</th>
                <th data-options="field:'gzCount7',width:200,align:'center'" formatter="gzCount7">广州7天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'gzGrowthRate7to15',width:100,align:'center'" formatter="gzGrowthRate7to15">广州7/15天增长率</th>
                <th data-options="field:'gzSales15',width:100,align:'center'">广州15天销量</th>
                <th data-options="field:'gzTurnoverDays15',width:100,align:'center'" formatter="gzTurnoverDays15">广州15天周转天数</th>
                <th data-options="field:'gzCount15',width:200,align:'center'" formatter="gzCount15">广州15天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'gzSales30',width:100,align:'center'">广州30天销量</th>
                <th data-options="field:'gzGrowthRate15to30',width:100,align:'center'" formatter="gzGrowthRate15to30">广州15/30天增长率</th>

            </c:when>
            <c:when test="${sessionScope.city == 'cd'}">
                <th data-options="field:'cdStock',width:100,align:'center'">成都库存</th>
                <th data-options="field:'cdSales7',width:100,align:'center'">成都7天销量</th>
                <th data-options="field:'cdTurnoverDays7',width:100,align:'center'" formatter="cdTurnoverDays7">成都7天周转天数</th>
                <th data-options="field:'cdCount7',width:200,align:'center'" formatter="cdCount7">成都7天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'cdGrowthRate7to15',width:100,align:'center'" formatter="cdGrowthRate7to15">成都7/15天增长率</th>
                <th data-options="field:'cdSales15',width:100,align:'center'">成都15天销量</th>
                <th data-options="field:'cdTurnoverDays15',width:100,align:'center'" formatter="cdTurnoverDays15">成都15天周转天数</th>
                <th data-options="field:'cdCount15',width:200,align:'center'" formatter="cdCount15">成都15天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'cdSales30',width:100,align:'center'">成都30天销量</th>
                <th data-options="field:'cdGrowthRate15to30',width:100,align:'center'" formatter="cdGrowthRate15to30">成都15/30天增长率</th>

            </c:when>
            <c:when test="${sessionScope.city == 'wh'}">
                <th data-options="field:'whStock',width:100,align:'center'">武汉库存</th>
                <th data-options="field:'whSales7',width:100,align:'center'">武汉7天销量</th>
                <th data-options="field:'whTurnoverDays7',width:100,align:'center'" formatter="whTurnoverDays7">武汉7天周转天数</th>
                <th data-options="field:'whCount7',width:200,align:'center'" formatter="whCount7">武汉7天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'whGrowthRate7to15',width:100,align:'center'" formatter="whGrowthRate7to15">武汉7/15天增长率</th>
                <th data-options="field:'whSales15',width:100,align:'center'">武汉15天销量</th>
                <th data-options="field:'whTurnoverDays15',width:100,align:'center'" formatter="whTurnoverDays15">武汉15天周转天数</th>
                <th data-options="field:'whCount15',width:200,align:'center'" formatter="whCount15">武汉15天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'whSales30',width:100,align:'center'">武汉30天销量</th>
                <th data-options="field:'whGrowthRate15to30',width:100,align:'center'" formatter="whGrowthRate15to30">武汉15/30天增长率</th>

            </c:when>
            <c:when test="${sessionScope.city == 'sy'}">
                <th data-options="field:'syStock',width:100,align:'center'">沈阳库存</th>
                <th data-options="field:'sySales7',width:100,align:'center'">沈阳7天销量</th>
                <th data-options="field:'syTurnoverDays7',width:100,align:'center'" formatter="syTurnoverDays7">沈阳7天周转天数</th>
                <th data-options="field:'syCount7',width:200,align:'center'" formatter="syCount7">沈阳7天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'syGrowthRate7to15',width:100,align:'center'" formatter="whGrowthRate7to15">沈阳7/15天增长率</th>
                <th data-options="field:'sySales15',width:100,align:'center'">沈阳15天销量</th>
                <th data-options="field:'syTurnoverDays15',width:100,align:'center'" formatter="syTurnoverDays15">沈阳15天周转天数</th>
                <th data-options="field:'syCount15',width:200,align:'center'" formatter="syCount15">沈阳15天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'sySales30',width:100,align:'center'">沈阳30天销量</th>
                <th data-options="field:'syGrowthRate15to30',width:100,align:'center'" formatter="syGrowthRate15to30">沈阳15/30天增长率</th>

            </c:when>
            <c:when test="${sessionScope.city == 'xa'}">
                <th data-options="field:'xaStock',width:100,align:'center'">西安库存</th>
                <th data-options="field:'xaSales7',width:100,align:'center'">西安7天销量</th>
                <th data-options="field:'xaTurnoverDays7',width:100,align:'center'" formatter="xaTurnoverDays7">西安7天周转天数</th>
                <th data-options="field:'xaCount7',width:200,align:'center'" formatter="xaCount7">西安7天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'xaGrowthRate7to15',width:100,align:'center'" formatter="xaGrowthRate7to15">西安7/15天增长率</th>
                <th data-options="field:'xaSales15',width:100,align:'center'">西安15天销量</th>
                <th data-options="field:'xaTurnoverDays15',width:100,align:'center'" formatter="xaTurnoverDays15">西安15天周转天数</th>
                <th data-options="field:'xaCount15',width:200,align:'center'" formatter="xaCount15">西安15天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'xaSales30',width:100,align:'center'">西安30天销量</th>
                <th data-options="field:'xaGrowthRate15to30',width:100,align:'center'" formatter="xaGrowthRate15to30">西安15/30天增长率</th>

            </c:when>
            <c:when test="${sessionScope.city == 'ga'}">
                <th data-options="field:'gaStock',width:100,align:'center'">固安库存</th>
                <th data-options="field:'gaSales7',width:100,align:'center'">固安7天销量</th>
                <th data-options="field:'gaTurnoverDays7',width:100,align:'center'" formatter="gaTurnoverDays7">固安7天周转天数</th>
                <th data-options="field:'gaCount7',width:200,align:'center'" formatter="gaCount7">固安7天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'gaGrowthRate7to15',width:100,align:'center'" formatter="gaGrowthRate7to15">固安7/15天增长率</th>
                <th data-options="field:'gaSales15',width:100,align:'center'">固安15天销量</th>
                <th data-options="field:'gaTurnoverDays15',width:100,align:'center'" formatter="gaTurnoverDays15">固安15天周转天数</th>
                <th data-options="field:'gaCount15',width:200,align:'center'" formatter="gaCount15">固安15天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'gaSales30',width:100,align:'center'">固安30天销量</th>
                <th data-options="field:'gaGrowthRate15to30',width:100,align:'center'" formatter="gaGrowthRate15to30">固安15/30天增长率</th>

            </c:when>
            <c:otherwise>
                <th data-options="field:'bjStock',width:100,align:'center'">北京库存</th>
                <th data-options="field:'bjSales7',width:100,align:'center'">北京7天销量</th>
                <th data-options="field:'bjTurnoverDays7',width:100,align:'center'" formatter="bjTurnoverDays7">北京7天周转天数</th>
                <th data-options="field:'bjCount7',width:200,align:'center'" formatter="bjCount7">北京7天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'bjGrowthRate7to15',width:100,align:'center'" formatter="bjGrowthRate7to15">北京7/15天增长率</th>
                <th data-options="field:'bjSales15',width:100,align:'center'">北京15天销量</th>
                <th data-options="field:'bjTurnoverDays15',width:100,align:'center'" formatter="bjTurnoverDays15">北京15天周转天数</th>
                <th data-options="field:'bjCount15',width:200,align:'center'" formatter="bjCount15">北京15天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'bjSales30',width:100,align:'center'">北京30天销量</th>
                <th data-options="field:'bjGrowthRate15to30',width:100,align:'center'" formatter="bjGrowthRate15to30">北京15/30天增长率</th>

                <th data-options="field:'shStock',width:100,align:'center'">上海库存</th>
                <th data-options="field:'shSales7',width:100,align:'center'">上海7天销量</th>
                <th data-options="field:'shTurnoverDays7',width:100,align:'center'" formatter="shTurnoverDays7">上海7天周转天数</th>
                <th data-options="field:'shCount7',width:200,align:'center'" formatter="shCount7">上海7天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'shGrowthRate7to15',width:100,align:'center'" formatter="shGrowthRate7to15">上海7/15天增长率</th>
                <th data-options="field:'shSales15',width:100,align:'center'">上海15天销量</th>
                <th data-options="field:'shTurnoverDays15',width:100,align:'center'" formatter="shTurnoverDays15">上海15天周转天数</th>
                <th data-options="field:'shCount15',width:200,align:'center'" formatter="shCount15">上海15天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'shSales30',width:100,align:'center'">上海30天销量</th>
                <th data-options="field:'shGrowthRate15to30',width:100,align:'center'" formatter="shGrowthRate15to30">上海15/30天增长率</th>

                <th data-options="field:'gzStock',width:100,align:'center'">广州库存</th>
                <th data-options="field:'gzSales7',width:100,align:'center'">广州7天销量</th>
                <th data-options="field:'gzTurnoverDays7',width:100,align:'center'" formatter="gzTurnoverDays7">广州7天周转天数</th>
                <th data-options="field:'gzCount7',width:200,align:'center'" formatter="gzCount7">广州7天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'gzGrowthRate7to15',width:100,align:'center'" formatter="gzGrowthRate7to15">广州7/15天增长率</th>
                <th data-options="field:'gzSales15',width:100,align:'center'">广州15天销量</th>
                <th data-options="field:'gzTurnoverDays15',width:100,align:'center'" formatter="gzTurnoverDays15">广州15天周转天数</th>
                <th data-options="field:'gzCount15',width:200,align:'center'" formatter="gzCount15">广州15天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'gzSales30',width:100,align:'center'">广州30天销量</th>
                <th data-options="field:'gzGrowthRate15to30',width:100,align:'center'" formatter="gzGrowthRate15to30">广州15/30天增长率</th>

                <th data-options="field:'cdStock',width:100,align:'center'">成都库存</th>
                <th data-options="field:'cdSales7',width:100,align:'center'">成都7天销量</th>
                <th data-options="field:'cdTurnoverDays7',width:100,align:'center'" formatter="cdTurnoverDays7">成都7天周转天数</th>
                <th data-options="field:'cdCount7',width:200,align:'center'" formatter="cdCount7">成都7天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'cdGrowthRate7to15',width:100,align:'center'" formatter="cdGrowthRate7to15">成都7/15天增长率</th>
                <th data-options="field:'cdSales15',width:100,align:'center'">成都15天销量</th>
                <th data-options="field:'cdTurnoverDays15',width:100,align:'center'" formatter="cdTurnoverDays15">成都15天周转天数</th>
                <th data-options="field:'cdCount15',width:200,align:'center'" formatter="cdCount15">成都15天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'cdSales30',width:100,align:'center'">成都30天销量</th>
                <th data-options="field:'cdGrowthRate15to30',width:100,align:'center'" formatter="cdGrowthRate15to30">成都15/30天增长率</th>

                <th data-options="field:'whStock',width:100,align:'center'">武汉库存</th>
                <th data-options="field:'whSales7',width:100,align:'center'">武汉7天销量</th>
                <th data-options="field:'whTurnoverDays7',width:100,align:'center'" formatter="whTurnoverDays7">武汉7天周转天数</th>
                <th data-options="field:'whCount7',width:200,align:'center'" formatter="whCount7">武汉7天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'whGrowthRate7to15',width:100,align:'center'" formatter="whGrowthRate7to15">武汉7/15天增长率</th>
                <th data-options="field:'whSales15',width:100,align:'center'">武汉15天销量</th>
                <th data-options="field:'whTurnoverDays15',width:100,align:'center'" formatter="whTurnoverDays15">武汉15天周转天数</th>
                <th data-options="field:'whCount15',width:200,align:'center'" formatter="whCount15">武汉15天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'whSales30',width:100,align:'center'">武汉30天销量</th>
                <th data-options="field:'whGrowthRate15to30',width:100,align:'center'" formatter="whGrowthRate15to30">武汉15/30天增长率</th>

                <th data-options="field:'syStock',width:100,align:'center'">沈阳库存</th>
                <th data-options="field:'sySales7',width:100,align:'center'">沈阳7天销量</th>
                <th data-options="field:'syTurnoverDays7',width:100,align:'center'" formatter="syTurnoverDays7">沈阳7天周转天数</th>
                <th data-options="field:'syCount7',width:200,align:'center'" formatter="syCount7">沈阳7天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'syGrowthRate7to15',width:100,align:'center'" formatter="whGrowthRate7to15">沈阳7/15天增长率</th>
                <th data-options="field:'sySales15',width:100,align:'center'">沈阳15天销量</th>
                <th data-options="field:'syTurnoverDays15',width:100,align:'center'" formatter="syTurnoverDays15">沈阳15天周转天数</th>
                <th data-options="field:'syCount15',width:200,align:'center'" formatter="syCount15">沈阳15天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'sySales30',width:100,align:'center'">沈阳30天销量</th>
                <th data-options="field:'syGrowthRate15to30',width:100,align:'center'" formatter="syGrowthRate15to30">沈阳15/30天增长率</th>

                <th data-options="field:'xaStock',width:100,align:'center'">西安库存</th>
                <th data-options="field:'xaSales7',width:100,align:'center'">西安7天销量</th>
                <th data-options="field:'xaTurnoverDays7',width:100,align:'center'" formatter="xaTurnoverDays7">西安7天周转天数</th>
                <th data-options="field:'xaCount7',width:200,align:'center'" formatter="xaCount7">西安7天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'xaGrowthRate7to15',width:100,align:'center'" formatter="xaGrowthRate7to15">西安7/15天增长率</th>
                <th data-options="field:'xaSales15',width:100,align:'center'">西安15天销量</th>
                <th data-options="field:'xaTurnoverDays15',width:100,align:'center'" formatter="xaTurnoverDays15">西安15天周转天数</th>
                <th data-options="field:'xaCount15',width:200,align:'center'" formatter="xaCount15">西安15天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'xaSales30',width:100,align:'center'">西安30天销量</th>
                <th data-options="field:'xaGrowthRate15to30',width:100,align:'center'" formatter="xaGrowthRate15to30">西安15/30天增长率</th>

                <th data-options="field:'gaStock',width:100,align:'center'">固安库存</th>
                <th data-options="field:'gaSales7',width:100,align:'center'">固安7天销量</th>
                <th data-options="field:'gaTurnoverDays7',width:100,align:'center'" formatter="gaTurnoverDays7">固安7天周转天数</th>
                <th data-options="field:'gaCount7',width:200,align:'center'" formatter="gaCount7">固安7天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'gaGrowthRate7to15',width:100,align:'center'" formatter="gaGrowthRate7to15">固安7/15天增长率</th>
                <th data-options="field:'gaSales15',width:100,align:'center'">固安15天销量</th>
                <th data-options="field:'gaTurnoverDays15',width:100,align:'center'" formatter="gaTurnoverDays15">固安15天周转天数</th>
                <th data-options="field:'gaCount15',width:200,align:'center'" formatter="gaCount15">固安15天补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'gaSales30',width:100,align:'center'">固安30天销量</th>
                <th data-options="field:'gaGrowthRate15to30',width:100,align:'center'" formatter="gaGrowthRate15to30">固安15/30天增长率</th>

            </c:otherwise>
        </c:choose>




    </tr>
    </thead>
</table>


<div style="text-align: right; margin-right: 50px;"><a href="<%=path %>/index.jsp">返回首页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
        href="<%=path %>/look.jsp">查看文档</a></div>

<script>
    // 计算7天和15的周转天数
    function calcTurnoverDays(stock, sales) {
        var temp = 0
        if (sales != 0) {
             temp = (parseInt(stock) / parseInt(sales)).toFixed(2);
        }
        return temp > 0 ? temp : 0;
    }
    // 计算7天和15的补货数
    function calcCount(sales, stock, day) {
        var temp = (parseInt(sales) / day * '${sessionScope.days}' - parseInt(stock)).toFixed(2);
        return temp > 0 ? temp : 0;
    }
    // 计算7到15或15到30的增长率
    function calcGrowthRate(salesMin, salesMax) {
        var a = salesMax - salesMin;
        var temp = 0;
        if (a != 0) {
            temp = (salesMin / a) * 100;
        }

        return temp > 0 ? temp + "%" : 0 + "%";
    }

    function totalStockCount(value, row, index) {
        return parseInt(row.price) * parseInt(row.totalStock);
    }
    // 北京
    function bjTurnoverDays7(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales7);
    }
    function bjCount7(value, row, index) {
        return calcCount(row.bjSales7, row.bjStock, 7);
    }
    function bjGrowthRate7to15(value, row, index) {
        return calcGrowthRate(row.bjSales7, row.bjSales15 );
    }
    function bjTurnoverDays15(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales15);
    }
    function bjCount15(value, row, index) {
        return calcCount(row.bjSales15, row.bjStock, 15);
    }
    function bjGrowthRate15to30(value, row, index) {
        return calcGrowthRate(row.bjSales15, row.bjSales30 );
    }

    // 上海
    function shTurnoverDays7(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales7);
    }
    function shCount7(value, row, index) {
        return calcCount(row.shSales7, row.shStock, 7);
    }
    function shGrowthRate7to15(value, row, index) {
        return calcGrowthRate(row.shSales7, row.shSales15 );
    }
    function shTurnoverDays15(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales15);
    }
    function shCount15(value, row, index) {
        return calcCount(row.shSales15, row.shStock, 15);
    }
    function shGrowthRate15to30(value, row, index) {
        return calcGrowthRate(row.shSales15, row.shSales30 );
    }

    // 广州
    function gzTurnoverDays7(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales7);
    }
    function gzCount7(value, row, index) {
        return calcCount(row.gzSales7, row.gzStock, 7);
    }
    function gzGrowthRate7to15(value, row, index) {
        return calcGrowthRate(row.gzSales7, row.gzSales15 );
    }
    function gzTurnoverDays15(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales15);
    }
    function gzCount15(value, row, index) {
        return calcCount(row.gzSales15, row.gzStock, 15);
    }
    function gzGrowthRate15to30(value, row, index) {
        return calcGrowthRate(row.gzSales15, row.gzSales30 );
    }

    // 成都
    function cdTurnoverDays7(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales7);
    }
    function cdCount7(value, row, index) {
        return calcCount(row.cdSales7, row.cdStock, 7);
    }
    function cdGrowthRate7to15(value, row, index) {
        return calcGrowthRate(row.cdSales7, row.cdSales15 );
    }
    function cdTurnoverDays15(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales15);
    }
    function cdCount15(value, row, index) {
        return calcCount(row.cdSales15, row.cdStock, 15);
    }
    function cdGrowthRate15to30(value, row, index) {
        return calcGrowthRate(row.cdSales15, row.cdSales30 );
    }

    // 武汉
    function whTurnoverDays7(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales7);
    }
    function whCount7(value, row, index) {
        return calcCount(row.whSales7, row.whStock, 7);
    }
    function whGrowthRate7to15(value, row, index) {
        return calcGrowthRate(row.whSales7, row.whSales15 );
    }
    function whTurnoverDays15(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales15);
    }
    function whCount15(value, row, index) {
        return calcCount(row.bjSales15, row.bjStock, 15);
    }
    function whGrowthRate15to30(value, row, index) {
        return calcGrowthRate(row.whSales15, row.whSales30 );
    }

    // 沈阳
    function syTurnoverDays7(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales7);
    }
    function syCount7(value, row, index) {
        return calcCount(row.sySales7, row.syStock, 7);
    }
    function syGrowthRate7to15(value, row, index) {
        return calcGrowthRate(row.sySales7, row.sySales15 );
    }
    function syTurnoverDays15(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales15);
    }
    function syCount15(value, row, index) {
        return calcCount(row.sySales15, row.syStock, 15);
    }
    function syGrowthRate15to30(value, row, index) {
        return calcGrowthRate(row.sySales15, row.sySales30 );
    }

    // 西安
    function xaTurnoverDays7(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales7);
    }
    function xaCount7(value, row, index) {
        return calcCount(row.xaSales7, row.xaStock, 7);
    }
    function xaGrowthRate7to15(value, row, index) {
        return calcGrowthRate(row.xaSales7, row.xaSales15 );
    }
    function xaTurnoverDays15(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales15);
    }
    function xaCount15(value, row, index) {
        return calcCount(row.xaSales15, row.xaStock, 15);
    }
    function xaGrowthRate15to30(value, row, index) {
        return calcGrowthRate(row.xaSales15, row.xaSales30 );
    }

    // 固安
    function gaTurnoverDays7(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales7);
    }
    function gaCount7(value, row, index) {
        return calcCount(row.gaSales7, row.gaStock, 7);
    }
    function gaGrowthRate7to15(value, row, index) {
        return calcGrowthRate(row.gaSales7, row.gaSales15 );
    }
    function gaTurnoverDays15(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales15);
    }
    function gaCount15(value, row, index) {
        return calcCount(row.gaSales15, row.gaStock, 15);
    }
    function gaGrowthRate15to30(value, row, index) {
        return calcGrowthRate(row.gaSales15, row.gaSales30 );
    }
</script>

</body>
</html>
