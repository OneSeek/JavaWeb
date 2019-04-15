<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>计算器</title>
		
		<script type="text/javascript">
			
			function GetResult(){
				var num1 = document.getElementById("num1").value; 
				var num2 = document.getElementById("num2").value;
				var sign = document.getElementById("sign").value; 
				
				if(sign == 1){
					alert(parseInt(num1)+parseInt(num2));
				}else if(sign == 2){
					alert(parseInt(num1)-parseInt(num2));
				}else if(sign == 3){
					alert(parseInt(num1)*parseInt(num2));
				}else if(sign == 4){
					alert(parseInt(num1)/parseInt(num2));
				}
			};
	
		</script>
	</head>
	
	
	<body>
		<input type="text" id="num1">
		<select name="sign" id="sign">
			<option value="1" selected>+</option>
			<option value="2">-</option>
			<option value="3">*</option>
			<option value="4">/</option>
		</select>
		<input type="text" id="num2">

		<input type="button" value="计算" onclick="GetResult()">

	</body>

</html>