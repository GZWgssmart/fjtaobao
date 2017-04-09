<%--
  Created by IntelliJ IDEA.
  User: AngeJob
  Date: 2017/4/9
  Time: 19:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Wopop</title>

    <link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css">

</head>

<body class="login">

<div class="login_m">
    <div class="login_logo"><img src="<%=path%>/images/logo.png" width="196" height="46"></div>
    <div class="login_boder">
        <form action="<%=path%>/files/login" method="post">
            <div class="login_padding">
                <h2>用户名</h2>
                <h2 style="color: red">${requestScope.error}</h2>
                <label>
                    <input type="text" name="name" id="username" class="txt_input txt_input2">
                </label>
                <h2>密码</h2>
                <label>
                    <input type="password" name="pwd" id="userpwd" class="txt_input">
                </label>
                <p class="forgot"><a href="javascript:void(0);">忘记密码?</a></p>
                <div class="rem_sub">
                    <label>
                        <input type="submit" class="sub_button" name="button" id="button" value="登录"
                               style="opacity: 0.7;">
                    </label>
                </div>
            </div>
        </form>
    </div><!--login_boder end-->
</div><!--login_m end-->

<br/>
<br/>
</body>
</html>