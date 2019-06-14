<%--
  Created by IntelliJ IDEA.
  User: ZC Wang
  Date: 2019/5/31
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String un = request.getParameter("username");
        String up = request.getParameter("userpwd");
        if(un!=null){
            Cookie c = new Cookie("username",un);
            Cookie c1 = new Cookie("userpwd",up);
            c.setMaxAge(30*24*3600);
            c1.setMaxAge(30*24*3600);
            response.addCookie(c);
            response.addCookie(c1);
            response.sendRedirect("display.jsp");
        }
    %>

</body>
</html>
