<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
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
 <% out.println("1");//不会立刻打印，会存入缓冲区，等积累到一定量的时候，再输出，提高效率。
    out.println("2");
     //out.clear();
    out.flush();
    out.println("3");
    out.println("4");
   
    out.clearBuffer();
 out.println("5");
 out.println("<hr>");
 
  %>  
  缓冲区大小：<%=out.getBufferSize() %> <br>
   缓冲区大小：<%=out.getRemaining() %><br>
   是否自动清除缓冲区：<%=out.isAutoFlush() %><br>
  </body>
</html>
