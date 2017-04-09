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
</head>
<body>
<h3 style="text-align: center;">
    详情补货建议
</h3>
<table class="easyui-datagrid" id="list" title="商品详细列表" style="width:100%;height:500px;"
       data-options="toolbar:'#tb',
                        singleSelect:false,
                        collapsible:true,
                        url:'<%=path %>/files/pager1',
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
        <th data-options="field:'brand',width:60,align:'center'">商品品牌</th>
        <th data-options="field:'status',width:60,align:'center'">商品状态</th>
        <th data-options="field:'days',width:60,align:'center'">周期</th>
        <c:choose>
            <c:when test="${sessionScope.city == 'bj'}">
                <th data-options="field:'bjStock',width:60,align:'center'">北京库存</th>
                <th data-options="field:'bjSales',width:60,align:'center'">北京销量</th>
                <th data-options="field:'bjSalesTurnoverDays',width:150,align:'center'" formatter="bjTurnover">北京销量周转天数</th>
                <th data-options="field:'bjSalesCount',width:160,align:'center'" formatter="bjCount">北京销量补货数【补${sessionScope.days}天】</th>
            </c:when>
            <c:when test="${sessionScope.city == 'sh'}">
                <th data-options="field:'shStock',width:60,align:'center'">上海库存</th>
                <th data-options="field:'shSales',width:60,align:'center'">上海销量</th>
                <th data-options="field:'shSalesTurnoverDays',width:150,align:'center'" formatter="shTurnover">上海销量周转天数</th>
                <th data-options="field:'shSalesCount',width:160,align:'center'" formatter="shCount">上海销量补货数【补${sessionScope.days}天】</th>
            </c:when>
            <c:when test="${sessionScope.city == 'gz'}">
                <th data-options="field:'gzStock',width:60,align:'center'">广州库存</th>
                <th data-options="field:'gzSales',width:60,align:'center'">广州销量</th>
                <th data-options="field:'gzSalesTurnoverDays',width:150,align:'center'" formatter="gzTurnover">广州销量周转天数</th>
                <th data-options="field:'gzSalesCount',width:160,align:'center'" formatter="gzCount">广州销量补货数【补${sessionScope.days}天】</th>
            </c:when>
            <c:when test="${sessionScope.city == 'cd'}">
                <th data-options="field:'cdStock',width:60,align:'center'">成都库存</th>
                <th data-options="field:'cdSales',width:60,align:'center'">成都销量</th>
                <th data-options="field:'cdSalesTurnoverDays',width:150,align:'center'" formatter="cdTurnover">成都销量周转天数</th>
                <th data-options="field:'cdSalesCount',width:160,align:'center'" formatter="cdCount">成都销量补货数【补${sessionScope.days}天】</th>
            </c:when>
            <c:when test="${sessionScope.city == 'wh'}">
                <th data-options="field:'whStock',width:60,align:'center'">武汉库存</th>
                <th data-options="field:'whSales',width:60,align:'center'">武汉销量</th>
                <th data-options="field:'whSalesTurnoverDays',width:150,align:'center'" formatter="whTurnover">武汉销量周转天数</th>
                <th data-options="field:'whSalesCount',width:160,align:'center'" formatter="whCount">武汉销量补货数【补${sessionScope.days}天】</th>
            </c:when>
            <c:when test="${sessionScope.city == 'sy'}">
                <th data-options="field:'syStock',width:60,align:'center'">沈阳库存</th>
                <th data-options="field:'sySales',width:60,align:'center'">沈阳销量</th>
                <th data-options="field:'sySalesTurnoverDays',width:150,align:'center'" formatter="syTurnover">沈阳销量周转天数</th>
                <th data-options="field:'sySalesCount',width:160,align:'center'" formatter="syCount">沈阳销量补货数【补${sessionScope.days}天】</th>
            </c:when>
            <c:when test="${sessionScope.city == 'xa'}">
                <th data-options="field:'xaStock',width:60,align:'center'">西安库存</th>
                <th data-options="field:'xaSales',width:60,align:'center'">西安销量</th>
                <th data-options="field:'xaSalesTurnoverDays',width:150,align:'center'" formatter="xaTurnover">西安销量周转天数</th>
                <th data-options="field:'xaSalesCount',width:160,align:'center'" formatter="xaCount">西安销量补货数【补${sessionScope.days}天】</th>
            </c:when>
            <c:when test="${sessionScope.city == 'ga'}">
                <th data-options="field:'gaStock',width:60,align:'center'">固安库存</th>
                <th data-options="field:'gaSales',width:60,align:'center'">固安销量</th>
                <th data-options="field:'gaSalesTurnoverDays',width:150,align:'center'" formatter="gaTurnover">固安销量周转天数</th>
                <th data-options="field:'gaSalesCount',width:160,align:'center'" formatter="gaCount">固安销量补货数【补${sessionScope.days}天】</th>
            </c:when>
            <c:otherwise>
                <th data-options="field:'totalStock',width:70,align:'center'">全国总库存</th>
                <th data-options="field:'totalSales',width:70,align:'center'">全国总销量</th>
                <th data-options="field:'totalStockCount',width:90,align:'center'">全国总库存额</th>
                <th data-options="field:'totalSalesCount',width:90,align:'center'">全国总销量额</th>
                <th data-options="field:'bjStock',width:60,align:'center'">北京库存</th>
                <th data-options="field:'bjSales',width:60,align:'center'">北京销量</th>
                <th data-options="field:'bjSalesTurnoverDays',width:150,align:'center'" formatter="bjTurnover">北京销量周转天数</th>
                <th data-options="field:'bjSalesCount',width:160,align:'center'" formatter="bjCount">北京销量补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'shStock',width:60,align:'center'">上海库存</th>
                <th data-options="field:'shSales',width:60,align:'center'">上海销量</th>
                <th data-options="field:'shSalesTurnoverDays',width:150,align:'center'" formatter="shTurnover">上海销量周转天数</th>
                <th data-options="field:'shSalesCount',width:160,align:'center'" formatter="shCount">上海销量补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'gzStock',width:60,align:'center'">广州库存</th>
                <th data-options="field:'gzSales',width:60,align:'center'">广州销量</th>
                <th data-options="field:'gzSalesTurnoverDays',width:150,align:'center'" formatter="gzTurnover">广州销量周转天数</th>
                <th data-options="field:'gzSalesCount',width:160,align:'center'" formatter="gzCount">广州销量补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'cdStock',width:60,align:'center'">成都库存</th>
                <th data-options="field:'cdSales',width:60,align:'center'">成都销量</th>
                <th data-options="field:'cdSalesTurnoverDays',width:150,align:'center'" formatter="cdTurnover">成都销量周转天数</th>
                <th data-options="field:'cdSalesCount',width:160,align:'center'" formatter="cdCount">成都销量补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'whStock',width:60,align:'center'">武汉库存</th>
                <th data-options="field:'whSales',width:60,align:'center'">武汉销量</th>
                <th data-options="field:'whSalesTurnoverDays',width:150,align:'center'" formatter="whTurnover">武汉销量周转天数</th>
                <th data-options="field:'whSalesCount',width:160,align:'center'" formatter="whCount">武汉销量补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'syStock',width:60,align:'center'">沈阳库存</th>
                <th data-options="field:'sySales',width:60,align:'center'">沈阳销量</th>
                <th data-options="field:'sySalesTurnoverDays',width:150,align:'center'" formatter="syTurnover">沈阳销量周转天数</th>
                <th data-options="field:'sySalesCount',width:160,align:'center'" formatter="syCount">沈阳销量补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'xaStock',width:60,align:'center'">西安库存</th>
                <th data-options="field:'xaSales',width:60,align:'center'">西安销量</th>
                <th data-options="field:'xaSalesTurnoverDays',width:150,align:'center'" formatter="xaTurnover">西安销量周转天数</th>
                <th data-options="field:'xaSalesCount',width:160,align:'center'" formatter="xaCount">西安销量补货数【补${sessionScope.days}天】</th>
                <th data-options="field:'gaStock',width:60,align:'center'">固安库存</th>
                <th data-options="field:'gaSales',width:60,align:'center'">固安销量</th>
                <th data-options="field:'gaSalesTurnoverDays',width:150,align:'center'" formatter="gaTurnover">固安销量周转天数</th>
                <th data-options="field:'gaSalesCount',width:160,align:'center'" formatter="gaCount">固安销量补货数【补${sessionScope.days}天】</th>

            </c:otherwise>
        </c:choose>


    </tr>
    </thead>
</table>
<div id="tb" style="padding:5px;height:auto">
    <div style="margin-bottom:5px">
        <a href="javascript:;" onclick="contrast()"
           class="easyui-linkbutton" iconCls="icon-search">比对增长率</a>
    </div>
</div>


<div style="text-align: right; margin-right: 50px;"><a href="<%=path %>/home.jsp">返回首页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
        href="<%=path %>/look.jsp">查看文档</a></div>

<script>

    function contrast() {
        var rows = $("#list").datagrid("getSelections"); // 获取所有选中的数据
        var length = rows.length;
        if (length == 2) {
            var days1 = rows[0].days;
            var days2 = rows[1].days;
            if (days1 > days2) {
                var temp = days1;
                days1 = days2;
                days2 = temp;
            }
            var city = '${sessionScope.city}';
            if (days1 != days2) {
                var sales1;
                var sales2;
                if (city == "all") {
                    if (days1 > days2) {
                        sales1 = parseInt(rows[1].totalSales);
                        sales2 = parseInt(rows[0].totalSales);
                    } else {
                        sales1 = parseInt(rows[0].totalSales);
                        sales2 = parseInt(rows[1].totalSales);
                    }
                    city = "全国";
                } else if (city == "bj") {
                    if (days1 > days2) {
                        sales1 = parseInt(rows[1].bjSales);
                        sales2 = parseInt(rows[0].bjSales);
                    } else {
                        sales1 = parseInt(rows[0].bjSales);
                        sales2 = parseInt(rows[1].bjSales);
                    }
                    city = "北京";
                } else if (city == "sh") {
                    if (days1 > days2) {
                        sales1 = parseInt(rows[1].shSales);
                        sales2 = parseInt(rows[0].shSales);
                    } else {
                        sales1 = parseInt(rows[0].shSales);
                        sales2 = parseInt(rows[1].shSales);
                    }
                    city = "上海";
                } else if (city == "gz") {
                    if (days1 > days2) {
                        sales1 = parseInt(rows[1].gzSales);
                        sales2 = parseInt(rows[0].gzSales);
                    } else {
                        sales1 = parseInt(rows[0].gzSales);
                        sales2 = parseInt(rows[1].gzSales);
                    }
                    city = "广州";
                } else if (city == "cd") {
                    if (days1 > days2) {
                        sales1 = parseInt(rows[1].cdSales);
                        sales2 = parseInt(rows[0].cdSales);
                    } else {
                        sales1 = parseInt(rows[0].cdSales);
                        sales2 = parseInt(rows[1].cdSales);
                    }
                    city = "成都";
                } else if (city == "wh") {
                    if (days1 > days2) {
                        sales1 = parseInt(rows[1].whSales);
                        sales2 = parseInt(rows[0].whSales);
                    } else {
                        sales1 = parseInt(rows[0].whSales);
                        sales2 = parseInt(rows[1].whSales);
                    }
                    city = "武汉";
                } else if (city == "sy") {
                    if (days1 > days2) {
                        sales1 = parseInt(rows[1].sySales);
                        sales2 = parseInt(rows[0].sySales);
                    } else {
                        sales1 = parseInt(rows[0].sySales);
                        sales2 = parseInt(rows[1].sySales);
                    }
                    city = "沈阳";
                } else if (city == "xa") {
                    if (days1 > days2) {
                        sales1 = parseInt(rows[1].xaSales);
                        sales2 = parseInt(rows[0].xaSales);
                    } else {
                        sales1 = parseInt(rows[0].xaSales);
                        sales2 = parseInt(rows[1].xaSales);
                    }
                    city = "西安";
                } else if (city == "ga") {
                    if (days1 > days2) {
                        sales1 = parseInt(rows[1].gaSales);
                        sales2 = parseInt(rows[0].gaSales);
                    } else {
                        sales1 = parseInt(rows[0].gaSales);
                        sales2 = parseInt(rows[1].gaSales);
                    }
                    city = "固安";
                }
                if (sales1 != 0 && sales2 != 0 && sales1 != sales2) {
                    var result = sales1 / (sales2 - sales1);
                    result = parseInt(result * 100);
                    $.messager.alert("提示", city + "销量的" + days1 + "/" + days2 + "增长率为" + result + "%", "info");
                } else {
                    $.messager.alert("提示", city + "销量的" + days1 + "/" + days2 + "增长率为0%", "info");
                }

            } else {
                $.messager.alert("提示", "请选择不同周期的数据哦", "error");
            }

        } else {
            $.messager.alert("提示", "只能选择两条数据", "error");
        }
    }

    // 计算销量的周转天数
    function calcTurnoverDays(stock, sales) {
        var temp = 0
        if (sales != 0) {
            temp = (parseInt(stock) / parseInt(sales)).toFixed(2);
        }
        return temp > 0 ? temp : 0;
    }
    // 计算销量的补货数
    function calcCount(sales, stock, day) {
        var temp = (parseInt(sales) / parseInt(day) * '${sessionScope.days}' - parseInt(stock)).toFixed(2);
        return temp > 0 ? temp : 0;
    }

    // 北京
    function bjTurnover(value, row, index) {
        return calcTurnoverDays(row.bjStock, row.bjSales);
    }
    function bjCount(value, row, index) {
        return calcCount(row.bjSales, row.bjStock, row.days);
    }
    // 上海
    function shTurnover(value, row, index) {
        return calcTurnoverDays(row.shStock, row.shSales);
    }
    function shCount(value, row, index) {
        return calcCount(row.shSales, row.shStock, row.days);
    }
    // 广州
    function gzTurnover(value, row, index) {
        return calcTurnoverDays(row.gzStock, row.gzSales);
    }
    function gzCount(value, row, index) {
        return calcCount(row.gzSales, row.gzStock, row.days);
    }
    // 成都
    function cdTurnover(value, row, index) {
        return calcTurnoverDays(row.cdStock, row.cdSales);
    }
    function cdCount(value, row, index) {
        return calcCount(row.cdSales, row.cdStock, row.days);
    }
    // 武汉
    function whTurnover(value, row, index) {
        return calcTurnoverDays(row.whStock, row.whSales);
    }
    function whCount(value, row, index) {
        return calcCount(row.whSales, row.whStock, row.days);
    }
    // 沈阳
    function syTurnover(value, row, index) {
        return calcTurnoverDays(row.syStock, row.sySales);
    }
    function syCount(value, row, index) {
        return calcCount(row.sySales, row.syStock, row.days);
    }
    // 西安
    function xaTurnover(value, row, index) {
        return calcTurnoverDays(row.xaStock, row.xaSales);
    }
    function xaCount(value, row, index) {
        return calcCount(row.xaSales, row.xaStock, row.days);
    }
    // 固安
    function gaTurnover(value, row, index) {
        return calcTurnoverDays(row.gaStock, row.gaSales);
    }
    function gaCount(value, row, index) {
        return calcCount(row.gaSales, row.gaStock, row.days);
    }
</script>
</body>
</html>
