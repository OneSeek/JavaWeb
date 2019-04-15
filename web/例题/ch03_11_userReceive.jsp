<%--
  Created by IntelliJ IDEA.
  User: chuang
  Date: 19-3-24
  Time: 下午8:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <% String Name = request.getParameter("RdName");
       String Passwd = request.getParameter("RdPasswd");
       if(Name.equals("abcdef")&&Passwd.equals("123456")){
        %>
        <jsp:forward page="ch03_11_userLoginCorret.jsp"/>
    <% }else response.sendRedirect("http://sohu.com");%>

</body>
</html>
