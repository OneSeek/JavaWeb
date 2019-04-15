<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>Table Layout</title>
</head>

<body>

<table border="1" cellpadding="1">

  
<tr>
  <td colspan="3" width="200px"  height="100px"  background="../picture/风景.jfif"></td>
</tr>


<tr  bgcolor="green"><td>我的校园</td><td>校园生活</td><td>我的家园</td></tr>

<tr><td colspan="4" rowspan="4">
<table border="1" cellpadding="10">
	<tr  bgcolor="blue">
	    <td>计算中心</td>
	    
	    <td  colspan="3" rowspan="4">
			<table>
				<tr>            
					<td>用户名：</td>
					<td>
	 					<input type="text" name="user" value=""/>  
					</td>        
				</tr>
				<tr>
					<td>密&ensp;&ensp;码：</td>
	                    <td>
	                        <input type="text" name="password" value=""/>  
	                    </td>
	     		</tr>
	     		
	     		<tr><td colspan="3" align="center">
    				<input type="submit" name="queren" value="确认"/>
    				<input type="reset" name="chongzhi" value="重置"/>
				</td></tr>
 
	        </table>
		</td>
	</tr>
	<tr bgcolor="blue">
		<td>资环学院</td>
	</tr>
	<tr bgcolor="blue">
	    <td>信息学院</td>
	</tr>
	<tr bgcolor="blue">
		<td>动科学院</td>
	</tr>
</table> 
</td></tr>  
</table>



</body>
</html>