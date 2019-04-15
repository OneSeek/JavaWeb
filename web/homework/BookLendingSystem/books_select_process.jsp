<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: ZC Wang
  Date: 2019/4/8
  Time: 14:24
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
    ResultSet rs = null;
    PreparedStatement st = null;
    Connection conn = null;
    try {
        String driverName = "com.mysql.cj.jdbc.Driver";    //驱动程序名

        String userName = "root";                          //数据库用户名
        String userPwd = "13853097744";                        //密码
        String dbName = "books";                        //数据库名
        String url1 = "jdbc:mysql://localhost:3306/" + dbName;
        String url2 = "?user=" + userName + "&password=" + userPwd;
        String url3 = "&useUnicode=true&characterEncoding=UTF-8&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&useSSL=false";
        String url = url1 + url2 + url3;        //形成连接字
        Class.forName(driverName);         //加载并注册驱动程序

        conn = DriverManager.getConnection(url);//获取数据库连接对象


        //比较关键的是查询语句sql
        String sql="";
        int book_no;
        String book_name;
        int book_number1;
        int book_number2;

        if(!request.getParameter("book_no").equals(""))
        {
            book_no=Integer.parseInt(request.getParameter("book_no"));
            sql=sql+" and book_no="+book_no;
        }
        if(!request.getParameter("book_name").equals(""))
        {
            book_name=request.getParameter("book_name");
            sql=sql+" and book_name='"+book_name+"'";
        }
        if((request.getParameter("book_number1")!="") && (request.getParameter("book_number2")!=""))
        {
            book_number1=Integer.parseInt(request.getParameter("book_number1"));
            book_number2=Integer.parseInt(request.getParameter("book_number2"));
            sql=sql+" and weight between "+book_number1+" and "+book_number2;
        }
        sql="select * from book where 1=1"+sql;


        st=conn.prepareStatement(sql);
        rs=st.executeQuery(sql);
    }catch (SQLException e){
        e.printStackTrace();
    }

%>
<table >
    <tr>
        <td>记录条数</td><td>书号</td><td>书名</td><td>本数</td>
    </tr>
    <%  while(rs.next()) {%>
    <tr>
        <td><%=rs.getRow() %></td><td>
        <%=rs.getString("book_no") %></td>
        <td><%=rs.getString("book_name") %></td>
        <td><%=rs.getString("book_number") %></td>

    </tr>
    <% }
        if(rs!=null) rs.close();
        if(st!=null) st.close();
        if(conn!=null) conn.close();
    %>
</table>

</body>
</html>
