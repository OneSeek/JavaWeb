<%--
  Created by IntelliJ IDEA.
  User: ZC Wang
  Date: 2019/5/31
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%
        String name="";
        String pwd="";
        Cookie cookies[] = request.getCookies();
        for (int i =0;i<cookies.length;i++){
            if(cookies[i].getName().equals("username")){
                name = cookies[i].getValue();
            }else
            if(cookies[i].getName().equals("userpwd")){
                pwd = cookies[i].getValue();
            }
        }
    %>
</head>
<body>
    <form method="post" action="logincheck.jsp">
        用户名：<input type="text" name="username" value="<%=name%>"/></br>
        密码：<input type="password" name="userpwd" value="<%=pwd%>"/></br>
        <input type="submit" value="登录">

    </form>

</body>
</html>
