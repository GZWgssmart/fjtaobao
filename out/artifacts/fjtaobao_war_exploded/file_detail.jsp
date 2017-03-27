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
        <c:choose>
            <c:when test="${sessionScope.city == 'bj'}">
                <th data-options="field:'bjStock',width:60,align:'center'">北京库存</th>
                <th data-options="field:'bjSales',width:60,align:'center'">北京销量</th>
            </c:when>
            <c:when test="${sessionScope.city == 'sh'}">
                <th data-options="field:'shStock',width:60,align:'center'">上海库存</th>
                <th data-options="field:'shSales',width:60,align:'center'">上海销量</th>
            </c:when>
            <c:when test="${sessionScope.city == 'gz'}">
                <th data-options="field:'gzStock',width:60,align:'center'">广州库存</th>
                <th data-options="field:'gzSales',width:60,align:'center'">广州销量</th>
            </c:when>
            <c:when test="${sessionScope.city == 'cd'}">
                <th data-options="field:'cdStock',width:60,align:'center'">成都库存</th>
                <th data-options="field:'cdSales',width:60,align:'center'">成都销量</th>
            </c:when>
            <c:when test="${sessionScope.city == 'wh'}">
                <th data-options="field:'whStock',width:60,align:'center'">武汉库存</th>
                <th data-options="field:'whSales',width:60,align:'center'">武汉销量</th>
            </c:when>
            <c:when test="${sessionScope.city == 'cy'}">
                <th data-options="field:'syStock',width:60,align:'center'">沈阳库存</th>
                <th data-options="field:'sySales',width:60,align:'center'">沈阳销量</th>
            </c:when>
            <c:when test="${sessionScope.city == 'xa'}">
                <th data-options="field:'xaStock',width:60,align:'center'">西安库存</th>
                <th data-options="field:'xaSales',width:60,align:'center'">西安销量</th>
            </c:when>
            <c:when test="${sessionScope.city == 'ga'}">
                <th data-options="field:'gaStock',width:60,align:'center'">固安库存</th>
                <th data-options="field:'gaSales',width:60,align:'center'">固安销量</th>
            </c:when>
            <c:otherwise>
                <th data-options="field:'totalStock',width:70,align:'center'">全国总库存</th>
                <th data-options="field:'totalSales',width:70,align:'center'">全国总销量</th>
                <th data-options="field:'totalStockCount',width:90,align:'center'">全国总库存额</th>
                <th data-options="field:'totalSalesCount',width:90,align:'center'">全国总销量额</th>
                <th data-options="field:'bjStock',width:60,align:'center'">北京库存</th>
                <th data-options="field:'bjSales',width:60,align:'center'">北京销量</th>
                <th data-options="field:'shStock',width:60,align:'center'">上海库存</th>
                <th data-options="field:'shSales',width:60,align:'center'">上海销量</th>
                <th data-options="field:'gzStock',width:60,align:'center'">广州库存</th>
                <th data-options="field:'gzSales',width:60,align:'center'">广州销量</th>
                <th data-options="field:'cdStock',width:60,align:'center'">成都库存</th>
                <th data-options="field:'cdSales',width:60,align:'center'">成都销量</th>
                <th data-options="field:'whStock',width:60,align:'center'">武汉库存</th>
                <th data-options="field:'whSales',width:60,align:'center'">武汉销量</th>
                <th data-options="field:'syStock',width:60,align:'center'">沈阳库存</th>
                <th data-options="field:'sySales',width:60,align:'center'">沈阳销量</th>
                <th data-options="field:'xaStock',width:60,align:'center'">西安库存</th>
                <th data-options="field:'xaSales',width:60,align:'center'">西安销量</th>
                <th data-options="field:'gaStock',width:60,align:'center'">固安库存</th>
                <th data-options="field:'gaSales',width:60,align:'center'">固安销量</th>

            </c:otherwise>
        </c:choose>
        <th data-options="field:'days',width:60,align:'center'">周期</th>

        <th data-options="field:'turnoverDays',width:100,align:'center'">
            <c:choose>
                <c:when test="${sessionScope.city == 'bj'}">
                    北京
                </c:when>
                <c:when test="${sessionScope.city == 'sh'}">
                    上海
                </c:when>
                <c:when test="${sessionScope.city == 'gz'}">
                    广州
                </c:when>
                <c:when test="${sessionScope.city == 'cd'}">
                    成都
                </c:when>
                <c:when test="${sessionScope.city == 'wh'}">
                    武汉
                </c:when>
                <c:when test="${sessionScope.city == 'cy'}">
                    沈阳
                </c:when>
                <c:when test="${sessionScope.city == 'xa'}">
                    西安
                </c:when>
                <c:when test="${sessionScope.city == 'ga'}">
                    固安
                </c:when>
                <c:otherwise>
                    全国

                </c:otherwise>
            </c:choose>
            销量周转天数
        </th>
        <th data-options="field:'count',width:100,align:'center'">
            <c:choose>
                <c:when test="${sessionScope.city == 'bj'}">
                    北京
                </c:when>
                <c:when test="${sessionScope.city == 'sh'}">
                    上海
                </c:when>
                <c:when test="${sessionScope.city == 'gz'}">
                    广州
                </c:when>
                <c:when test="${sessionScope.city == 'cd'}">
                    成都
                </c:when>
                <c:when test="${sessionScope.city == 'wh'}">
                    武汉
                </c:when>
                <c:when test="${sessionScope.city == 'cy'}">
                    沈阳
                </c:when>
                <c:when test="${sessionScope.city == 'xa'}">
                    西安
                </c:when>
                <c:when test="${sessionScope.city == 'ga'}">
                    固安
                </c:when>
                <c:otherwise>
                    全国

                </c:otherwise>
            </c:choose>
            销量补货数
        </th>

    </tr>
    </thead>
</table>
<div id="tb" style="padding:5px;height:auto">
    <div style="margin-bottom:5px">
        <a href="javascript:;" onclick="contrast()"
           class="easyui-linkbutton" iconCls="icon-search">比对增长率</a>
    </div>
</div>


<div style="text-align: right; margin-right: 50px;"><a href="<%=path %>/index.jsp">返回首页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
        href="<%=path %>/look.jsp">查看文档</a></div>

<script>

    function contrast() {
        var rows = $("#list").datagrid("getSelections"); // 获取所有选中的数据
        var length = rows.length;
        if (length == 2) {
            var days1 = rows[0].days;
            var days2 = rows[1].days;
            var city = '${sessionScope.city}';
            if (days1 != days2) {
                var sales1;
                var sales2;
                if (city == "全国") {
                    sales1 = parseInt(rows[0].totalSales);
                    sales2 = parseInt(rows[1].totalSales);
                } else if (city == "北京") {
                    sales1 = parseInt(rows[0].bjSales);
                    sales2 = parseInt(rows[1].bjSales);
                } else if (city == "上海") {
                    sales1 = parseInt(rows[0].shSales);
                    sales2 = parseInt(rows[1].shSales);
                } else if (city == "广州") {
                    sales1 = parseInt(rows[0].gzSales);
                    sales2 = parseInt(rows[1].gzSales);
                } else if (city == "成都") {
                    sales1 = parseInt(rows[0].cdSales);
                    sales2 = parseInt(rows[1].cdSales);
                } else if (city == "武汉") {
                    sales1 = parseInt(rows[0].whSales);
                    sales2 = parseInt(rows[1].whSales);
                } else if (city == "沈阳") {
                    sales1 = parseInt(rows[0].sySales);
                    sales2 = parseInt(rows[1].sySales);
                } else if (city == "西安") {
                    sales1 = parseInt(rows[0].xaSales);
                    sales2 = parseInt(rows[1].xaSales);
                } else if (city == "固安") {
                    sales1 = parseInt(rows[0].gaSales);
                    sales2 = parseInt(rows[1].gaSales);
                }
                if (sales1 != 0 && sales2 != 0) {
                    var result = sales1 / (sales2 - sales1);
                    result = parseInt(result * 100);
                    $.messager.alert("提示", city + "的" + days1 + "/" + days2 + "增长率为" + result + "%", "info");
                } else {
                    $.messager.alert("提示", city + "的" + days1 + "/" + days2 + "增长率为0%", "info");
                }

            } else {
                $.messager.alert("提示", "请选择不同周期的数据哦", "error");
            }

        } else {
            $.messager.alert("提示", "只能选择两条数据", "error");
        }
    }
</script>
</body>
</html>
