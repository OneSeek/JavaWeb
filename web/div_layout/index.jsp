<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Insert title here</title>

	<style type="text/css">

		body {
			margin:0px;
			font-size:30px;
			font-family:Arial;
			padding:5px;
		} 
		#container{
			position:relative;
			width:50%;
			height:50%;
			background-color:#A9A9F5;
			text-align:center;
			border:1px solid #000000;
		}
		#banner{
			height:80px;
			border:1px solid #000000;
			text-align:center;
			background-color:#a2d9ff;
			padding:10px;
			margin-bottom:2px;
		}
		#content{
			background-color:#F78181;
			float:left;
			text-align:center;
			width:80%;
			height:300px;
			border:1px solid #000000;
			display: table-cell;
			vertical-align:middle
		}
		#links{
			float:right;
			width:19%;
			height:300px;
			text-align:center;
			background:#F6CEEC;
			margin-bottom:5px;
			border:1px solid #000000;
		    display: table-cell;
			vertical-align:middle
		}
		#footer{
			clear:both;		
 			text-align:center;
			height:30px;
			border:1px solid #000000;
			background:#3A01DF;
			margin-bottom:5px;
		}

    </style>


</head>
<body>
	<div id="container">#container
		<div id="banner">#banner</div>
		<div id="content">#content</div>	
		<div id="links">#links</div>
		<div id="footer">#footer</div>
	</div>

</body>
</html>