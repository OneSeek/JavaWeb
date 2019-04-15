<%@ page import="cn.oneseek.javaweb.User" %>
<%@ page import="cn.oneseek.javaweb.UserDao" %><%--
  Created by IntelliJ IDEA.
  User: ZC Wang
  Date: 2019/4/14
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
    String userId = request.getParameter("user_id");
    String userName = request.getParameter("user_name");
    String userSex = request.getParameter("user_sex");

    User user = new User(userId,userName,userSex);
    UserDao userDao = new UserDao();

    try {
        user = userDao.findUserById(userId);
        out.print("查询成功");
    } catch (Exception e) {
        out.print("查询失败");
        e.printStackTrace();
    }
%>

</body>
<table >
    <tr>
        <td>用户ID</td><td>用户名</td><td>用户性别</td>
    </tr>

    <tr>
        <td><%=user.getUserId() %></td>
        <td><%=user.getUserName() %></td>
        <td><%=user.getUserSex() %></td>

    </tr>

</table>
</html>
