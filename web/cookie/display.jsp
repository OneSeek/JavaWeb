<%--
  Created by IntelliJ IDEA.
  User: ZC Wang
  Date: 2019/5/31
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Cookie cookies[] = request.getCookies();
    for (int i =0;i<cookies.length;i++){
        if(cookies[i].getName().equals("username")){
            out.print("用户名为："+cookies[i].getValue());
        }else
        if(cookies[i].getName().equals("userpwd")){
            out.print("密码为："+cookies[i].getValue());
        }
    }
%>
</body>
</html>
