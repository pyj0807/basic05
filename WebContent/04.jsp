<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트의 function</title>
</head>
<body>
	<h1>자바스크립트의 funccoj</h1>
	<p>
		function이 어떤식으로 관리되는지 알아보기 위해서,
		매개변수도 없고 리텐밸류도 없는 형태의 function을 설계해보았다.
	<p>
		자바스크립트로 만들어낼 funtiond에 매개변수나, 리터값이 필요하다면..?
	</P>
	<button type="button" onclick="d(5)">스크립트 합수(number) 콜</button>
	<button type="button" onclick="d('자바스크립트')">스크립트 합수(String) 콜</button>
	<script>
		// 매개변수부분에 변수명만 적으면 됨.
		var f = function(a, b){
			console.log(a + " : " + typeof a);
			console.log(b + " : " + typeof b);
			return d;
			//return typeof a == typeof b;
		};
		function d (target){
			console.log(target+ ":" +typeof target);
		}
		f(1,5);
		f('루피', "조로");
		f();
		f(1,true,94.1,"아아아");
		
		var t = f(1,5);
		t(true);
	</script>
</body>
</html>