<%@ page import="cn.oneseek.javaweb.User" %><%--
  Created by IntelliJ IDEA.
  User: ZC Wang
  Date: 2019/5/31
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%
        User user=new User("01","张三","18岁","男");
        session.setAttribute("user",user);
    %>
</head>
<body>
${user.userId}
${user.userName}
${user.userAge}
${user.userSex}
</body>
</html>
