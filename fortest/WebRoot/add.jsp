<%lsjgldjgldjg%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add.jsp' starting page</title>
    
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
  	<form action = "add" method = "post">
    <table align ="center">
  		<caption><h3>添加书籍</h3></caption>
		<tr>	
			<td>ISBN:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type ="text" name = "isbn"></td>
		</tr>
		<tr>
			<td>Title:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type ="text" name = "title"></td>
		</tr>
		<tr>	
			<td>AuthorID:&nbsp;&nbsp;&nbsp;&nbsp;<input type ="text" name = "authorid"></td>
		</tr>
		<tr>
			<td>Publisher:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type ="text" name = "publisher"></td>
		</tr>
		<tr>	
			<td>PublishDate:&nbsp;<input type ="text" name = "publishdate"></td>
		</tr>
		<tr>	
			<td>Price:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type ="text" name = "price"></td>
		</tr>
		<tr>
			<td>Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type ="text" name = "name">*</td>
		</tr>
		<tr>	
			<td>Age:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type ="text" name = "age">*</td>
		</tr>
		<tr>
			<td>Country:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type ="text" name = "country">*</td>
		</tr>		
	</table>
	<table align = "center">
	<tr>
  		<td colspan="4"><font color="red"><h5>若确定作者存在，*为选填内容</h5></font></td>
  	</tr>
  	<br>
  	<tr>
  		<td><h3><input type ="submit" value ="添加"></h3></td>
  		<td>&nbsp;&nbsp;</td>
  		<td><h3><input type ="reset" value ="重置"></h3></td>
		<td><h3><a href="query_result.jsp">"返回"</a></h3></td>
  	</tr>
	</form>
  </body>
</html>
