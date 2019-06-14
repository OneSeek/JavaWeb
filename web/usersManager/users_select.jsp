<%--
  Created by IntelliJ IDEA.
  User: ZC Wang
  Date: 2019/4/11
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form name="form1" action="../UserManagerSelect" method="post">
    用户ID：<input type="text" name="user_id"><br/>
    用户名：<input type="text" name="user_name"><br/>
    用户性别：<input type="text" name="user_sex"><br/>
    用户年龄：<input type="text" name="age1">-<input type="text" name="age2"><br/>
    <input type="submit" value="查询">
    <input type="reset" value="取消">
</form>
</body>
</html>
