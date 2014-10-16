<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
  <form action = "search" method ="post">
  <table align = "center">
  	<tr>
  		<td colspan="2"><font color="red"><h5>可按作者或书名查询</h5></font></td>
  	</tr>
  	<caption><h3>用户查询</h3></caption>
  	<tr>
  		<td>作者：<input type ="text" name = "author"></td>
  	</tr>
  	<tr>
  		<td>书名：<input type ="text" name = "book"></td>
  	</tr>
  	</table>
  	<table align = "center">
  	<br><br>
  	<tr>
  		<td><h3><input type ="submit" value ="查询"></h3></td>
  		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  		<td><h3><input type ="reset" value ="重置"></h3></td>
  	</tr>
</table>
</form>
</body>
</html>
