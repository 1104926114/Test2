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
    
    <title>My JSP 'query_result.jsp' starting page</title>
    
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
  	<table align = "center" width =50% border = 1>
    <caption><h2>查&nbsp;询&nbsp;结&nbsp;果&nbsp;</h2></caption>
    <tr>
    	<th style="width: 164px; ">作&nbsp;者</th>
    	<th style="width: 207px; ">书&nbsp;名</th>
    
    </tr>
 
	<s:iterator value="mylist" id ="list1">  
        <tr>
        <s:iterator value="list1" id = "my">
	        <td><s:property  value= "my"/></td>
        </s:iterator>      
        
        </tr>
	</s:iterator>

	</table><br>
	<table align="center">
		<td><a href ="details.jsp"><h3>Details</h3></a></td>
		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    	<td><a href ="delete.jsp"><h3>Delete</h3></a></td>
    	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    	<td><a href ="add.jsp"><h3>AddBook</h3></a></td>
    	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    	<td><a href ="update.jsp"><h3>Update</h3></a></td>
    </table>
    <table align="center">  	
    	<h3><a href="index.jsp">返回查询</a>
    </table>
  </body> 
</html>
