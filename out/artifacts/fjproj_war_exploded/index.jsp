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
</head>
<body>
    <a href="<%=path %>/upload.jsp">上传</a>
    <a href="<%=path %>/look.jsp">查看文件</a>
</body>
</html>
