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
        String userPwd = "root";                        //密码
        String dbName = "student";                        //数据库名
        String url1 = "jdbc:mysql://localhost:3306/" + dbName;
        String url2 = "?user=" + userName + "&password=" + userPwd;
        String url3 = "&useUnicode=true&characterEncoding=UTF-8&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&useSSL=false";
        String url = url1 + url2 + url3;        //形成连接字
        Class.forName(driverName);         //加载并注册驱动程序

        conn = DriverManager.getConnection(url);//获取数据库连接对象


        //比较关键的是查询语句sql
        String sql="";
        int id;
        String name;
        float weight1;
        float weight2;

        if(!request.getParameter("id").equals(""))
        {
            id=Integer.parseInt(request.getParameter("id"));
            sql=sql+" and id="+id;
        }
        if(!request.getParameter("name").equals(""))
        {
            name=request.getParameter("name");
            sql=sql+" and name='"+name+"'";
        }
        if((request.getParameter("weight1")!="") && (request.getParameter("weight2")!=""))
        {
            weight1=Float.parseFloat(request.getParameter("weight1"));
            weight2=Float.parseFloat(request.getParameter("weight2"));
            sql=sql+" and weight between "+weight1+" and "+weight2;
        }
        sql="select * from stu_info where 1=1"+sql;


        st=conn.prepareStatement(sql);
        rs=st.executeQuery(sql);
    }catch (SQLException e){
        e.printStackTrace();
    }

%>
<table >
    <tr>
        <td>记录条数</td><td>学号</td><td>姓名</td><td>性别</td><td>年龄</td><td>体重</td><td>身高</td>
    </tr>
    <%  while(rs.next()) {%>
    <tr>
        <td><%=rs.getRow() %></td><td><%=rs.getString("id") %></td>
        <td><%=rs.getString("name") %></td><td><%=rs.getString("sex") %></td>
        <td><%=rs.getString("age") %></td><td><%=rs.getString("weight") %></td>
        <td><%=rs.getString("height") %></td>
    </tr>
    <% }
        if(rs!=null) rs.close();
        if(st!=null) st.close();
        if(conn!=null) conn.close();
    %>
</table>

</body>
</html>
