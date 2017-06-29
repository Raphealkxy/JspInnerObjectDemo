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
    <%
    SimpleDateFormat sdf=new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
    Date d =new Date(session.getCreationTime());
    session.setAttribute("username","admin");
    session.setAttribute("password", "123");
    session.setAttribute("sex", "man");
    //session.setMaxInactiveInterval(10);
     %>
     session创建时间：<%=sdf.format(d) %><br>
     session的id号：<%=session.getId() %>
     从session中获取username值：<%=session.getAttribute("username") %>
     <%//session.invalidate(); %>
     <a href="Session_page2.jsp">连接到Session_page2界面中去</a>
  </body>
</html>
