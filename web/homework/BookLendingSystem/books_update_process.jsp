<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%--
  Created by IntelliJ IDEA.
  User: ZC Wang
  Date: 2019/4/8
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    int book_no=Integer.parseInt(request.getParameter("book_no"));
    String book_name=request.getParameter("book_name");
    int book_number=Integer.parseInt(request.getParameter("book_number"));

    int idselect=Integer.parseInt(request.getParameter("book_no"));
    session.setAttribute("book_id", idselect);

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

    String sql="update book set book_no=?,book_name=?,book_number=? where book_no=?";
    PreparedStatement pst=conn.prepareStatement(sql);
    pst.setInt(1,book_no);
    pst.setString(2,book_name);
    pst.setInt(3,book_number);
    pst.setInt(4,idselect);
    int n=pst.executeUpdate();
    if(n>=1)
    {
        out.print("重写数据成功！！");
    }
    else
    {
        out.print("重写失败！！");
    }
    if(pst!=null) pst.close();
    if(conn!=null) conn.close();

%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>

