<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'details.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
  </head>
  
  <body>
	<br><br><br><br>
  	<form action ="details" method ="post"> 
  	<table align="center" >
  	<tr>
  		<td><caption><h4>请&nbsp;输&nbsp;入&nbsp;要&nbsp;查&nbsp;询&nbsp;的&nbsp;书&nbsp;名：</h4></caption></td>
  		<td><input type="text" name="titless" style="width: 195px; "></td>
  	</tr>
  	</table>
  	<table align ="center">
  		<caption><br><br><input type="submit" value="确定"></caption>
 	</table>
  	</form>
  </body>
</html>
