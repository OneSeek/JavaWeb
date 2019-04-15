<%--
  Created by IntelliJ IDEA.
  User: ZC Wang
  Date: 2019/4/11
  Time: 18:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form name="form1" action="users_add_process.jsp" method=“post” >
    <table>
        <tr><td>用户Id</td><td><input type="text" name="user_id"></td></tr>
        <tr><td>用户名</td><td><input type="text" name="user_name"></td></tr>
        <tr><td>性别</td><td><input type="text" name="user_sex"></td></tr>

        <tr><td colspan="2">
            <input type="submit" value="提交">
            <input type="reset" value="取消">
        </td></tr>
    </table>
</form>

</body>
</html>
