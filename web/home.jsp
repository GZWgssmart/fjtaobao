<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/3/20
  Time: 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <title>主页</title>
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<p style="text-align: center; margin-top: 300px;">
    <a href="<%=path %>/upload.jsp">
        <button type="button" class="btn btn-primary btn-lg">上传文件</button>
    </a>
    <a href="<%=path %>/look.jsp">
        <button type="button" class="btn btn-default btn-lg">查看文件</button>
    </a>
    <a href="<%=path %>/index.jsp">
        <button type="button" class="btn btn-default btn-lg">退出登录</button>
    </a>
</p>
</body>
</html>
