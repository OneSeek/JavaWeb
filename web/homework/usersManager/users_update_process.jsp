<%@ page import="cn.oneseek.javaweb.UserDao" %>
<%@ page import="cn.oneseek.javaweb.User" %><%--
  Created by IntelliJ IDEA.
  User: ZC Wang
  Date: 2019/4/14
  Time: 10:41
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
    String userName = request.getParameter("user_name");
    String userSex = request.getParameter("user_sex");

    User user = new User(userId,userName,userSex);
    UserDao userDao = new UserDao();

    try {
        userDao.update(user);
        out.print("修改成功");
    } catch (Exception e) {
        out.print("修改失败");
        e.printStackTrace();
    }
%>

</body>
</html>
