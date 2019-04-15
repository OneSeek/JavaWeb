<%@ page import="cn.oneseek.javaweb.UserDao" %>
<%@ page import="cn.oneseek.javaweb.User" %><%--
  Created by IntelliJ IDEA.
  User: ZC Wang
  Date: 2019/4/14
  Time: 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    UserDao userDao = new UserDao();
    User user = userDao.findUserById(request.getParameter("user_id"));
%>
<form action="users_update_process.jsp" method="post">
    <tr><td>用户ID</td><td><input type="text" name="user_id" value=<%=user.getUserId()%>></td></tr>
    <tr><td>用户名</td><td><input type="text" name="user_name" value=<%=user.getUserName()%>></td></tr>
    <tr><td>用户性别</td><td><input type="text" name="user_sex" value=<%=user.getUserSex()%>></td></tr>

    <tr><td colspan="2">
        <input type="submit" value="更新">
        <input type="reset" value="取消">
    </td></tr>
</form>
</body>
</html>
