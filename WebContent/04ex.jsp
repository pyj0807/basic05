<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] ar = "루피,조로,나미,상디,우솝,쵸파,프랑키,브룩,로빈".split(",");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트-배열</title>
</head>
<body>
	<h1>캐릭터 선택</h1>
	<small>당신의 최애캐를 선택해주세요. (중복선택가능/최대3개까지)</small>
	<p>
		<%for(int i=0; i<ar.length; i++){ %>
			<input type="checkbox" value="<%=ar[i]%>" onchange="save(this)"/><%=ar[i] %>
		<%} %>
	</p>
	<hr/>
	<p>
		당신의 현재선택 : <span></span>
	</p>
	<script>
		var save = function(target){
			console.log(target.value);
			console.log(target.checked);
			if(target.value=="루피"){
				target.checked = false;
			}
		}
	</script>
</body>
</html>