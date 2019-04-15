<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: ZC Wang
  Date: 2019/4/8
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String book_name=request.getParameter("book_name");



    String driverName = "com.mysql.cj.jdbc.Driver";    //驱动程序名

    String userName = "root";                          //数据库用户名
    String userPwd = "root";                        //密码
    String dbName = "books";                        //数据库名
    String url1 = "jdbc:mysql://localhost:3306/" + dbName;
    String url2 = "?user=" + userName + "&password=" + userPwd;
    String url3 = "&useUnicode=true&characterEncoding=UTF-8&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&useSSL=false";
    String url = url1 + url2 + url3;        //形成连接字
    Class.forName(driverName);         //加载并注册驱动程序
    Connection conn = DriverManager.getConnection(url);//获取数据库连接对象

    String sql="delete from book where name like '%"+book_name+"%'";
    PreparedStatement pst=conn.prepareStatement(sql);
    int n= 0;
    try {
        n = pst.executeUpdate();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    if(n>=1)
    {out.println("数据删除成功！！");}
    else
    {out.println("数据删除失败！！");}
    if(pst!=null) pst.close();
    if(conn!=null) conn.close();

%>

</body>
</html>
