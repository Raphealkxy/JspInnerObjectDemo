<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'reg.jsp' starting page</title>
    
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
       <h1>注册</h1>
      <form name="regform"  action="response.jsp" method="post" >
      <table>
      <tr>
      <th>用户名：</th>
      <th><input type="text" name="username" /></th>
      </tr>
      <tr>
      <th>密码：</th>
      <th><input type="password" name="password"/></th>
      </tr>
      
      
      <tr>
       <th>爱好</th>
      <th><input type="checkbox" name="hobby" value="java">java</th> 
      <th><input type="checkbox" name="hobby" value="C">C</th> 
       <th><input type="checkbox" name="hobby" value="C++">C++</th> 
      </tr>
      
      <tr>
      <th><input type="submit" value="登录"></th> <!-- 注意submit类型不要和button类型弄混 -->
     
      </tr>
      </table>
      </form>
      
      <a href="request.jsp?username=haha&password=123&hobby=java">直接get</a><!-- 注意发送的格式：?username=haha&password=123&hobby=java -->
  </body>
</html>
