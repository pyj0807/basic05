<%@page import="beans.MockDao"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.google.gson.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSON library</h1>
	<p>
		gson 라이브러리를 공유폴더 dev/storage 에서 가져가셔서 프로젝트 연동시켜두자.
	</p>
	<p>
		이 라이브러리는 json string 을 좀 쉽게 만들어낼수 지원하는 라이브러리다,
	</p>
	<%
		Gson gson = new Gson();
	// 자바의 list, 배열을 JSON 배열형태의 문자열로 만들어내고
	// 자바의 Map을 JSON 객체형태의 문자열로 만들어낸다,
	// 수치형 데이터는 number로 만들고 boolean 은  boolean , String dms string
	String d1 = "자바기반 개발자 과정";
	String d1str="\""+d1+"\"";
	String d1str2= gson.toJson(d1);
	
	String[] d2 = "전사,마법사,도적,사냥꾼,사제".split(",");
	String d2str2= gson.toJson(d2);
	
	int[][] d3 = new int[][]{new int[]{1,2,3}, new int[]{4,5,6,7}};
	String d3str3 = gson.toJson(d3);
	//List형도 가능하다
	List li = new ArrayList();
		li.add("이세영");
		li.add("문지원");
		li.add("김명주");
	String listr = gson.toJson(li);
	
	Map d4 = new LinkedHashMap();
		d4.put("name", "박영준");
		d4.put("age", 27);
		d4.put("master", true);
		d4.put("slave", li);
	String d4str = gson.toJson(d4);
	
	MockDao mock = new MockDao();
	List<Map> d5 = mock.findList(5);
	String d5str = gson.toJson(d5);
	
	%>
	<ul>
	<li> string -> <%= d1str %>, <%=d1str2 %></li>
	<li> array -> <%= d2str2 %></li>
	<li> array's array -> <%= d3str3 %></li>
	<li> listr -> <%= listr %></li>
	<li> map -> <%= d4str %></li>
	<li> map's list -> <%=d5str %>
	
	
	</ul>
</body>
</html>