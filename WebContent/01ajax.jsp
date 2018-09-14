<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	System.out.println("request received");
	System.out.println(request.getMethod());
	System.out.println(request.getParameter("word"));
	System.out.println("request handle completed!");
	Thread.sleep(5000);
	out.println("response");
	
%>    
