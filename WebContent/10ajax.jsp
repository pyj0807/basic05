<%@page import="java.util.List"%>
<%@page import="beans.boxDao"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	boxDao bdao = new boxDao();
	List<Map> list = bdao.findStartWith("id");
		out.print("[");
		for(int i=0; i<list.size(); i++){
			Map e = list.get(i);
%>
	
		{
			"ID" : "<%=e.get("ID") %>", 
  			"NAME" : <%=e.get("NAME") %> , 
   			"GENDER" : <%=e.get("GENDER") %>
		}
		<%if(i<list.size()-1){ %>
		,
		<%} %>
<%
		}
		out.println("]");
%>    
