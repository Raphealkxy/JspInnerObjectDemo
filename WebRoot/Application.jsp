<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Application.jsp' starting page</title>
    
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
    <h1>这是一个Application测试页面</h1>
    <% application.setAttribute("username", "timmy");
        application.setAttribute("password", "12345667");
        application.setAttribute("email", "1277509958@qq.com");
        
    
    
     %>
     
     所有属性名为：<%
     Enumeration attributes =application.getAttributeNames();
     while(attributes.hasMoreElements())
        out.println(attributes.nextElement()+"&nbsp;&nbsp");
     
      %>
  </body>
</html>
