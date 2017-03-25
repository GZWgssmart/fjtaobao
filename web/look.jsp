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
                    查看文档
                </h3>
                <table id="list" class="easyui-datagrid" title="文档列表" style="width:95%;height:500px;"
                       data-options="toolbar:'#tb',
                        singleSelect:false,
                        collapsible:true,
                        url:'<%=path%>/files/pager',
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
                        <th data-options="field:'fType',width:100,align:'center'" formatter="fileType">文件类型</th>
                        <th data-options="field:'createTime',width:250,align:'center'" formatter="formatterDate">文档上传时间</th>
                    </tr>
                    </thead>
                </table>

                <div id="tb" style="padding:5px;height:auto">
                    <div style="margin-bottom:5px">
                        <label>选择补货天数：</label>
                        <select class="easyui-combobox" id="days" style="width:100px;">
                            <option>28</option>
                            <option>30</option>
                            <option>25</option>
                            <option>20</option>
                            <option>15</option>
                            <option>10</option>
                        </select>
                        <label>选择城市：</label>
                        <select class="easyui-combobox" data-options="editable:false" id="city" style="width:100px;">
                            <option value="all">全部</option>
                            <option value="bj">北京</option>
                            <option value="sh">上海</option>
                            <option value="gz">广州</option>
                            <option value="cd">成都</option>
                            <option value="wh">武汉</option>
                            <option value="sy">沈阳</option>
                            <option value="ca">西安</option>
                            <option value="ga">固安</option>
                        </select>
                        <a href="javascript:;" onclick="searchDetail()"
                           class="easyui-linkbutton" iconCls="icon-search">查看补货建议</a>
                    </div>
                </div>
                <div style="text-align: right; margin-right: 50px;"><a href="<%=path %>/index.jsp">返回首页</a></div>
            </div>
        </div>
    </div>

</div>

<script>
    function searchDetail() {
        // var row = $("#list").datagrid("getSelected"); // 获取首个选中的数据
        var rows = $("#list").datagrid("getSelections"); // 获取所有选中的数据
        var length = rows.length;
        var days = $("#days").combobox('getValue');
        var city = $("#city").combobox('getValue');
        var ids = "";
        if (length > 0) {

            var flag = true;
            var fType = true;
            for (var i = 0; i < length; i++) {
                if (rows[0].createTime != rows[i].createTime) {
                    flag = false;
                } else {
                    if (rows[0].fType != rows[i].fType) {
                        flag = false;
                    } else {
                        if (rows[0].fType != "xc") {
                            fType = false;
                        }
                    }

                }
                if (ids == "") {
                    ids = rows[i].id;
                } else {
                    ids += "," + rows[i].id;
                }
            }

            if (flag) {
                if (!isNaN(days) && days > 0 && days < 32) {
                    var type = "xc";
                    if (fType) {
                        window.location.href = "/files/search?days=" + days + "&city=" + city + "&ids=" + ids + "&fType=" + type;
                    } else {
                        type = "dc";
                        $.messager.prompt('请输入周期', '请输入你要查询的周期,多个周期“，”号隔开', function(r){
                            if (r) {
                                window.location.href = "/files/search?days=" + days + "&city=" + city + "&ids=" + ids + "&fType=" + type + "&days1=" + r;
                                /**
                                var strs= new Array(); //定义一数组
                                strs=r.split(","); //字符分割
                                var flag1 = false;
                                for (i=0;i<strs.length ;i++ )
                                {
                                    // document.write(strs[i]+"<br/>"); //分割后的字符输出
                                    var r1 = strs[i];
                                    if (!isNaN(r1)) {
                                        if (r1 == 7 || r1 == 14 || r1 == 15 || r1 == 28 || r1 == 90) {
                                            flag1 = true;
                                        } else {
                                            flag1 = false;
                                        }
                                    } else {
                                        flag1 = false;
                                    }
                                }

                                if (flag1) {
                                    window.location.href = "/files/search?days=" + days + "&city=" + city + "&ids=" + ids + "&fType=" + type + "&days1=" + r;
                                } else {
                                    $.messager.alert("错误提示", "只能输入7,14,15,30,90", "error");
                                }
                                 **/

                            } else {
                                window.location.href = "/files/search?days=" + days + "&city=" + city + "&ids=" + ids + "&fType=" + type;
                            }
                        });
                    }


                } else {
                    $.messager.alert("提示", "天数只能输入1-31之间的数字", "error");
                }
            } else {
                $.messager.alert("提示", "请选择同一种类型的文档并且是同一天上传的文档！", "error");
            }
        } else {
            $.messager.alert("提示", "请选择你要查看的文档", "error");
        }
    }

    function fileType(value) {
        if (value == "xc") {
            return "小表格";
        } else if (value == "dc") {
            return "大表格";
        } else if (value == "dc1") {
            return "大表格1";
        } else {
            return "未知";
        }
    }

    /**
     * EasyUI的时间格式化，传递进来的时间
     * @param value
     * @returns
     */
    function formatterDate(value) {
        if (value == undefined || value == null || value == '') {
            return "";
        }
        else {
            var date = new Date(value);
            var year = date.getFullYear().toString();
            var month = (date.getMonth() + 1);
            var day = date.getDate().toString();
            var hour = date.getHours().toString();
            var minutes = date.getMinutes().toString();
            var seconds = date.getSeconds().toString();
            if (month < 10) {
                month = "0" + month;
            }
            if (day < 10) {
                day = "0" + day;
            }
            if (hour < 10) {
                hour = "0" + hour;
            }
            if (minutes < 10) {
                minutes = "0" + minutes;
            }
            if (seconds < 10) {
                seconds = "0" + seconds;
            }
            return year + "-" + month + "-" + day;
        }
    }
</script>

</body>
</html>
