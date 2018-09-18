<%@page import="beans.MybatisDao"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	Map data = new HashMap();
	data.put("id",(String)request.getParameter("joinid"));
	data.put("pass",(String)request.getParameter("joinpass"));
	String a =request.getParameter("joinid");
	String b =request.getParameter("joinpass");
	MybatisDao dao = new MybatisDao();
	int t = dao.addData(data);
%>    
<!DOCTYPE html>
<html>
<head>
<meta content="text/html; charset=UTF-8">
<title>회원가입 결과</title>
</head>
<body>
	<%=t %>
	<%=a%>
	<%=b %>
</body>
</html>