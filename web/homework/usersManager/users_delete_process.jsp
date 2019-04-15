<%@ page import="cn.oneseek.javaweb.UserDao" %>
<%@ page import="cn.oneseek.javaweb.User" %><%--
  Created by IntelliJ IDEA.
  User: ZC Wang
  Date: 2019/4/14
  Time: 9:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String userId = request.getParameter("user_id");

    UserDao userDao = new UserDao();

    try {
        userDao.delete(userId);
        out.print("删除成功");
    } catch (Exception e) {
        out.print("删除失败");
        e.printStackTrace();
    }
%>

</body>
</html>
