<%--
  Created by IntelliJ IDEA.
  User: chuang
  Date: 19-3-25
  Time: 下午6:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>InfoReceive</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String str1 = request.getParameter("rdName");
        String str2 = request.getParameter("phName");
    %>
    <font face="楷体" size=4 color="blue">
        您输入的信息为：<br>
        姓名：<%=str1%><br>
        电话：<%=str2%><br>
    </font>
</body>
</html>
