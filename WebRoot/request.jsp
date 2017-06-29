<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'request.jsp' starting page</title>
    
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
   用户名：<%=request.getParameter("username") %><br>
 爱好：<% String [] arr=request.getParameterValues("hobby");
   if(arr!=null)
        for(int i=0;i<arr.length;i++)
           out.println(arr[i]);//如果为空，则报错
 
  %><br>
  密码:<%=request.getParameter("password") %><br>
  得到请求体的MIME类型：<%=request.getContentType()%><br>
  
  </body>
</html>
