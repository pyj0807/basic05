<%--
	08ajax :
	사용자 ajax 요청 받아서 응답 처리할 곳
	목적은, 사용자로부터 전달받게 파라미터 (개수) 만큼의 Map을
	MockDao를 이용해서 만들어내고 이걸 xhr 의 응답으로 설정해서
	전송하는

 --%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="beans.*" %>   

<%
	MockDao mdao = new MockDao();
	List<Map> list = mdao.findList(4);
	out.println("[");
	for(int i=0; i<list.size(); i++) {
		Map e =list.get(i);
%>
	 { 
		"key" : "<%=e.get("key") %>", 
	  	"price" : <%=e.get("price") %> , 
	   	"recommend" : <%=e.get("recommend") %>
	 }
	 <%if(i<list.size()-1){%>
	 ,
	 <%}%>
<%
	}
	out.println("]");
%>
