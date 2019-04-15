<%--
  Created by IntelliJ IDEA.
  User: chuang
  Date: 19-3-24
  Time: 下午8:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
欢迎
<%
    String Name = request.getParameter("RdName");
    out.print(Name);
%>
欢迎

</body>
</html>
