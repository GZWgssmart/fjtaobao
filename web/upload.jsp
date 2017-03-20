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
    <link href="/css/bootstrap.min.css" rel="stylesheet">
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
            <div role="form">
                <div>
                    <label>表格类型：</label>

                    <select class="combobox">
                        <option value="PA">小表格</option>
                        <option value="CT">大表格1</option>
                        <option value="NY">大表格2</option>
                    </select>
                </div>
                <div>
                    <label for="exampleInputFile">文件：</label>
                    <input id="exampleInputFile" type="file" style="display:inline;"/>
                </div>
                <h4>设置文件属性：</h4>
                <div>
                    <label>天数：</label>
                    <select class="combobox">
                        <option value="PA">2</option>
                        <option value="CT">3</option>
                        <option value="NY">7</option>
                        <option value="PA">14</option>
                        <option value="CT">15</option>
                        <option value="NY">28</option>
                        <option value="PA">30</option>
                        <option value="CT">90</option>
                    </select>
                </div>
                <div>
                    <label>品牌：</label>
                    <select class="combobox">
                        <option value="PA">全部</option>
                        <option value="CT">A</option>
                        <option value="NY">B</option>
                        <option value="PA">C</option>
                        <option value="CT">其他品牌</option>
                    </select>
                </div>
                <div>
                    <label>商品分类：</label>
                    <select class="combobox">
                        <option value="PA">全部</option>
                        <option value="CT">A</option>
                        <option value="NY">B</option>
                        <option value="PA">C</option>
                        <option value="CT">D</option>
                        <option value="NY">E</option>
                    </select>
                </div>
                <div>
                    <label>商品状态：</label>
                    <select class="combobox">
                        <option value="PA">全部</option>
                        <option value="CT">上柜</option>
                        <option value="NY">可上柜</option>
                        <option value="PA">下柜</option>
                    </select>
                </div>
                <br/>
                <button type="submit" class="btn btn-default">提交</button>
                </form>
            </div>
            <div style="text-align: right;"><a href="<%=path %>/index.jsp">返回首页</a></div>
        </div>
    </div>
</div>

</body>
</html>
