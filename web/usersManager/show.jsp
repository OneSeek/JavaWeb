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

</body>
<table >
    显示结果（代码）<br/>
    <tr>
        <td>用户ID</td><td>用户名</td><td>用户性别</td><td>用户年龄</td>
    </tr>

    <tr>
        <td><%=request.getParameter("user_id") %></td>
        <td><%=request.getAttribute("user_name") %></td>
        <td><%=request.getAttribute("user_sex")%></td>
        <td><%=request.getAttribute("user_age")%></td>
    </tr>
</table>
<table>
    显示结果（El+JSTL）<br/>
    <tr>
        <td>用户ID</td><td>用户名</td><td>用户性别</td><td>用户年龄</td>
    </tr>

    <tr>
        <td>${user_id}</td>
        <td>${user_name}</td>
        <td>${user_sex}</td>
        <td>${user_age}</td>
    </tr>
</table>


<%--<%--%>
<%--    User user = (User) request.getAttribute("user");--%>
<%--    out.print(user.getUserId());--%>
<%--    out.print(user.getUserName());--%>
<%--%>--%>
</html>
