

<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: ZC Wang
  Date: 2019/4/8
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    int idselect=Integer.parseInt(request.getParameter("book_no"));
    session.setAttribute("book_no", idselect);

    String driverName = "com.mysql.cj.jdbc.Driver";    //驱动程序名

    String userName = "root";                          //数据库用户名
    String userPwd = "13853097744";                        //密码
    String dbName = "books";                        //数据库名
    String url1 = "jdbc:mysql://localhost:3306/" + dbName;
    String url2 = "?user=" + userName + "&password=" + userPwd;
    String url3 = "&useUnicode=true&characterEncoding=UTF-8&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&useSSL=false";
    String url = url1 + url2 + url3;        //形成连接字
    Class.forName(driverName);         //加载并注册驱动程序

    Connection conn = DriverManager.getConnection(url);//获取数据库连接对象

    String sql="select * from book where book_no= ?";
    PreparedStatement pst=conn.prepareStatement(sql);
    pst.setInt(1, idselect);
    ResultSet rs= pst.executeQuery();
    if(rs.next())
    {
        String book_no = rs.getString("book_no");
        String book_name = rs.getString("book_name");
        String book_number=rs.getString("book_number");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="books_update_process.jsp" method="post">
    <tr><td>书号</td><td><input type="text" name="book_no" value=<%=book_no%>></td></tr>
    <tr><td>书名</td><td><input type="text" name="book_name" value=<%=book_name%>></td></tr>
    <tr><td>本数</td><td><input type="text" name="book_number" value=<%=book_number%>></td></tr>

<%}
    if(rs!=null) rs.close();
    if(pst!=null) pst.close();
    if(conn!=null) conn.close();
%>
    <tr><td colspan="2">
        <input type="submit" value="更新">
        <input type="reset" value="取消">
    </td></tr>
</form>
</body>
</html>
