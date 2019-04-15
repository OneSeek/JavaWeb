<%--
  Created by IntelliJ IDEA.
  User: chuang
  Date: 19-3-25
  Time: 下午7:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>InfoInput</title>
</head>
<body>
<form action="ch03_6_infoReceive2.jsp" method="post">
    姓名：<input name="rdName"><br>
    电话：<input name="phName"><br>
    <input type="submit" value="提交">
</form>
<a href="ch03_6_infoReceive2.jsp?rdName=abcdef&phName=12345678">传递参数</a>

</body>
</html>