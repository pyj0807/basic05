<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Javascript</title>
</head>
<body>
	<small></small>
	<h1>자바스크립트</h1>
	<p>
		자바스크립트에서 날짜관련 작업을 하는데 사용되는 Date 객체에 대해서 살펴보고
		활용해보자.
	</p>
	<script>
		var disp = function(){
			var str = new Date().toTimeString().split(" ")[0];
			document.getElementsByTagName("small")[0].innerHTML = str;
		}
	
	
		window.setInterval(disp(), 1000);
		window.setInterval(disp, 1000);
	
		var n = new Date();	// 현재시간으로 만들어짐
		console.log(n);
		var nn = new Date(1536802507931);
		console.log(nn);
		var nnn = new Date("2018-09-12 23:11:20");	// dateformat에 맞는 문자열 가지고도 만들수 있음
		console.log(nnn);
		var m = new Date(2018,9,12,23,11,20);	// 월데이터는 0부터 설정
		console.log(m);
		
		var t = n.getTime();
		console.log(t);		// 이 Date객체가 가진 경과시간 (ms)
		console.log(n.getFullYear());	// 년도
		console.log(n.getYear());	// 년도
		console.log(n.getMonth());	// 월 0 ~ 11
		console.log(n.getDate());	// 날짜 1 ~ 31
		console.log(n.getDay());	// 요일 0 ~ 6
		console.log(n.getHours());	// 시간 0 ~ 23
		console.log(n.getMinutes());	// 분 0 ~ 59
		console.log(n.getSeconds());	// 초 0 ~ 59
		console.log(n.toString());
		console.log(n.toDateString());
		console.log(n.toTimeString());
		//================================================================
		
		console.log(n.toLocaleDateString());
		console.log(n.toLocaleTimeString());
		
		console.log(n.toUTCString());
		
		console.log(n.toTimeString().split(" ")[0]);
		
		
	</script>
</body>
</html>