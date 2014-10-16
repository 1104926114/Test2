<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'detail_result.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body style="height: 288px;"> 	
  	<table align ="center" width="800Px" hight ="500px">
  		<caption><h2>详细信息</h2></caption>
		<tr>
			<td style="width: 200px; ">ISBN</td>
			<td style="width: 200px; ">Title</td>
			<td style="width: 200px; ">AuthorID</td>
			<td style="width: 200px; ">Publisher</td>
			<td style="width: 200px; ">PublishDate</td>
			<td style="width: 100px; ">Price</td>
			<td style="width: 200px; ">AuthorID</td>
			<td style="width: 100px; ">Name</td>
			<td style="width: 80px; ">Age</td>
			<td style="width: 100px; ">Country</td>	
		  	
		</tr>
	  	<tr> 
	  	<s:iterator value="lists" id ="list2">      
	  	  
	        <s:iterator value="list2" id = "li">
		        <td style="width: 200px;"><s:property  value= "li"/></td>
	        </s:iterator>    
	     
		</s:iterator>
		</tr>	
  	</table>
  	<br>
	<table align ="center">
		<h3><a href = "query_result.jsp">关闭</a></h3>
	</table> 
  </body>
</html>
