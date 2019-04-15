<%--
  Created by IntelliJ IDEA.
  User: ZC Wang
  Date: 2019/4/7
  Time: 20:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form name="form1" action="shujuadd_process.jsp" method=“post” >
    <table>
        <tr><td>学号</td><td><input type="text" name="id"></td></tr>

        <tr><td>姓名</td><td><input type="text" name="name"></td></tr>
        <tr><td>性别</td><td><input type="text" name="sex"></td></tr>
        <tr><td>年龄</td><td><input type="text" name="age"></td></tr>
        <tr><td>体重</td><td><input type="text" name="weight"></td></tr>
        <tr><td>身高</td><td><input type="text" name="height"></td></tr>
        <tr><td colspan="2">
            <input type="submit" value="提交">
            <input type="reset" value="取消">
        </td></tr>
    </table>
</form>

</body>
</html>
