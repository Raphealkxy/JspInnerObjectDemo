<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%
    response.setContentType("text/html;charset=utf-8");//设置响应得MIME类型
    out.println("<h1>这是一个测试页面</h1>");
    out.println("<hr>");
    //out.flush();
    PrintWriter pWriter=response.getWriter();
    pWriter.println("这是一个打印输出流");
    //response.sendRedirect("request.jsp");
    
  request.getRequestDispatcher("request.jsp").forward(request, response);
  
   
 %>
