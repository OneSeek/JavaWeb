<%--
  Created by IntelliJ IDEA.
  User: ZC Wang
  Date: 2019/4/12
  Time: 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@page import="javax.naming.*" %>

<html>
<head>
    <title>Title</title>
</head>
<%
    request.setCharacterEncoding("utf-8");

    int book_no=Integer.parseInt(request.getParameter("book_no"));

    String book_name=request.getParameter("book_name");
    int book_number=Integer.parseInt(request.getParameter("book_number"));


    DataSource ds=null;
    Connection conn=null;
    PreparedStatement pst=null;
    ResultSet rs=null;
    try {
        InitialContext ctx=new InitialContext();
        ds=(DataSource)ctx.lookup("java:comp/env/jdbc/mysql");
        conn=ds.getConnection();
//        String driverName = "com.mysql.cj.jdbc.Driver";    //驱动程序名
//
//        String userName = "root";                          //数据库用户名
//        String userPwd = "root";                        //密码
//        String dbName = "books";                        //数据库名
//        String url1 = "jdbc:mysql://localhost:3306/" + dbName;
//        String url2 = "?user=" + userName + "&password=" + userPwd;
//        String url3 = "&useUnicode=true&characterEncoding=UTF-8&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&useSSL=false";
//        String url = url1 + url2 + url3;        //形成连接字
//        Class.forName(driverName);         //加载并注册驱动程序
//
//        Connection conn = DriverManager.getConnection(url);//获取数据库连接对象


        String sql="insert into book values(?,?,?)";

        pst= conn.prepareStatement(sql);

        pst.setInt(1,book_no);
        pst.setString(2,book_name);
        pst.setInt(3,book_number);


        int n=pst.executeUpdate();  //数据的添加、删除、修改都要用这个方法
        if(n>=1)
            out.print("数据插入成功！！");
        else
            out.print("数据插入失败！！");


    }catch (Exception e){
        e.printStackTrace();
    }finally {
        if(pst!=null) pst.close();
        if(conn!=null) conn.close();
    }

%>
<body>

</body>
</html>
