<%@page import="com.google.gson.*"%>
<%@page import="java.util.List"%>
<%@page import="beans.BoxDao"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Gson gson = new Gson();
	BoxDao bdao = new BoxDao();
	Map map = new HashMap();
	
	String name=(String)request.getParameter("id");
	List<Map> list = bdao.findStartWith(name);
	out.print(gson.toJson(list));
%>
