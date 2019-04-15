<%@ page import="cn.oneseek.javaweb.User" %>
<%@ page import="cn.oneseek.javaweb.UserDao" %><%--
  Created by IntelliJ IDEA.
  User: ZC Wang
  Date: 2019/4/13
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
<body>

<%
    try {
        UserDao userDao = new UserDao();
        User user = userDao.findUserById("0001");
        out.println(user.getUserId());
        out.println(user.getUserName());
        out.println(user.getUserSex());
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
</body>
</html>
