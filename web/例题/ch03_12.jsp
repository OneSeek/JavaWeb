<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<%@page import="java.util.Date"  %>
</head>
<body>
	当前时间是：<%=new Date()%><br>
	<hr>
	<% response.setHeader("refresh","1"); %>

</body>
</html>