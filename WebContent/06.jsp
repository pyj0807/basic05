<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSON</h1>
	<p>
		ajax로 데이터 교환시 xml 보다는 json으로 데이터를 주고 받는 경우가 훨씬 많다.
		JSON(Java Script Object Notation)은. xml 보다 더 사람이 읽고 쓰기 용이하고,
		기계가 분석하고 만들어내기도 훨씬 쉬운 형태의 데이터 표기법이다.
	</p>
	<p>
		자바스크립트에서 사용하는 데이터 표기법에 맞는문자열이라면
		바로 객체를 만들어내는게 가능하기 때문에, 분석하기가 쉽다.
	</p>
	<p>
		수치, 논리 : 값만 작성/
		문자열 : 홀따옴표나 쌍따옴표로 가능하지만 JSON 방식은 쌍따옴표만 가능함/
		배열 : [] , 객체 : {변수명:값 , 변수명: 값}
		
	</p>
	<script>
		
		var ar = ["월요일","화요일","수요일"];
		var ars = JSON.stringify(ar);
		console.log(typeof ar + "/" + typeof ars + ars);
		var arr = JSON.parse(ars);
		JSON.parse("['mon','tue','wed']")
		
		var str ="[1, 2, 3, 4]"
		console.log(str + "/" + typeof str);
		var o = JSON.parse(str);
		for(var i=0; i<o.length; i++){
			console.log(i+"/"+ o[i]);
		}
		
		var d1 = "[true, true, false]";
		
		
	</script>
</body>
</html>