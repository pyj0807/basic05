<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h2>JSON sample</h2>
	<ul>
		<li id="s1">432</li>
		<li id="s2">true</li>
		<li id="s3">"멘트"</li>
		<li id="s4">["월","화","수"]</li>
		<li id="s5">{"name" : "박영준", "age" : 27, "admin" : true}</li>
	</ul>
	<p>
		JSON 문자열 만들때, string 형태 데이터 반드시 ""로 처리해두어야하고,
		객체의 키값(변수명)은 반드시 string으로만 처리 가능
	</p>
	<p>
		Q. 객체배열 형태나 , 객체에 배열을 밸류로 갖는 형태는 어떻게 될까?
	</p>
	<p>	
		객체배열 형태나 [{},{}] , 객체의 배열을 밸류로 갖는 형태 [키값,{},{}]는 어떻게 될까?
	</p>
	<script>
		var z1 = document.getElementById("s1").innerHTML;
		var pz1 = JSON.parse(z1);
		console.log(pz1 + "/" + typeof pz1);
		
		var z2 = document.getElementById("s2").innerHTML;
		var pz2 = JSON.parse(z2);
		console.log(pz2 + "/" + typeof pz2);
		
		var z3 = document.getElementById("s3").innerHTML;
		var pz3 = JSON.parse(z3);
		console.log(pz3 + "/" + pz3);
		
		var z5 = document.getElementById("s5").innerHTML;
		var pz5 = JSON.parse(z5);
		console.log(pz5 + "/" + typeof pz5);

		console.log(pz5.name + "/" + typeof pz5.name);
		console.log(pz5.age + "/" + typeof pz5.age);
		console.log(pz5.admin + "/" + typeof pz5.admin);
		
	</script>
</body>
</html>