<%--
  Created by IntelliJ IDEA.
  User: ZC Wang
  Date: 2019/4/8
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数据查询</title>
</head>
<body>
    <form name="form1" action="shujuselect_process.jsp" method="post">
        学号：<input type="text" name="id"><br/>
        姓名：<input type="text" name="name"><br/>
        体重：<input type="text" name="weight1">-<input type="text" name="weight2"><br/>
        <input type="submit" value="查询">
        <input type="reset" value="取消">
    </form>

</body>
</html>
