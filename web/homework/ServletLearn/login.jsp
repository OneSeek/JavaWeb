<%--
  Created by IntelliJ IDEA.
  User: ZC Wang
  Date: 2019/4/14
  Time: 21:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
</head>
<body>
    <form action="../../LoginCheckServlet" method="post">
        请输入用户名：<input type="text" name="username"/><br/>
        请输入密码：<input type="password" name="userpwd"/></br>
        <input type="submit" value="登录"/>
        <input type="reset"/>
    </form>

</body>
</html>
