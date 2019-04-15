<%--
  Created by IntelliJ IDEA.
  User: ZC Wang
  Date: 2019/4/15
  Time: 19:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" import="cn.oneseek.javaweb.Calculator" language="java" %>
<html>
<head>
    <title>结果页</title>
</head>
<body>
<%--<%--%>
<%--    request.setCharacterEncoding("UTF-8");--%>
<%--    Calculator c = new Calculator();--%>
<%--    c.setNumber1(Double.parseDouble(request.getParameter("number1")));--%>
<%--    c.setNumber2(Double.parseDouble(request.getParameter("number2")));--%>
<%--%>--%>
<jsp:useBean id="c" class="cn.oneseek.javaweb.Calculator" scope="request"></jsp:useBean>
<jsp:setProperty name="c" property="*"></jsp:setProperty>
<%
    Double r1 = c.Add();
    Double r2 = c.Minus();
    Double r3 = c.Multiply();
    Double r4 = c.Divide();
%>
和为<%=r1%>
差为<%=r2%>
积为<%=r3%>
商为<%=r4%>
</body>
</html>
