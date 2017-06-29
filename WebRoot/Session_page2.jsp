<%@page import="javax.xml.crypto.Data"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Session.jsp' starting page</title>
    
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
   
    <h1>这是sessionpage2</h1>
     从session中获取username值：<%=session.getAttribute("username") %>
     session的id号：<%=session.getId() %>
     获取session存储中所有属性的名字：<%
     String name[] =session.getValueNames();
      
     for(int i=0;i<name.length;i++)
     {
          out.println(name[i]+"&nbsp;&nbsp");
          
     }
     
      %>
  </body>
</html>
