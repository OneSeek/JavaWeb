<%@ page import="cn.oneseek.javaweb.ch08_9.Student" %>
<%@ page import="java.util.List" %>
<%-- Created by IntelliJ IDEA.
  User: ZC Wang
  Date: 2019/4/16
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>

<body>
显示结果（用EL和JSTL）<br/>
<table border="1">

    ${userArrayList}
    <tr><th>用户号</th><th>姓名</th><th>性别</th><th>年龄</th></tr>
    <c:forEach var="user" items="${userArrayList}">
        <tr>
            <td>${user.userId}</td>
            <td>${user.userName}</td>
            <td>${user.userSex}</td>
            <td>${user.userAge}</td>
        </tr>

    </c:forEach>
</table>


</body>
</html>
