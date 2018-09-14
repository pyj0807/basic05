<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1>자바스크립트에도  객체가 있다</h1>
	<p>
		자바스크립트에도 객체가 있다. (객체?)
	</p>
	<script>
		// Boolean 객체, true, false 자체가 객체라고 생각하면 됨.
		console.log(true.toString());	// ""+true,
		
		// Number 객체
		var n = 45432;
		console.log(n.toString());	// 45432.toString(); ==> syntax error
		console.log((45432).toString());
		
		console.log((45432).toExponential());
		console.log((954.45432).toExponential());
		
		var d = 564.432432432;
		console.log( d.toFixed(2));		//toFixed 소수점 이하 제한.
		console.log( d.toFixed(3));
		console.log( (25).toFixed(2));
		
		console.log((45612).toPrecision(3));
		console.log((45612).toPrecision(2));
		console.log((456.55512).toPrecision(4));
		
		// toLocaleString()
		console.log((4561212).toLocaleString());	//
		
		
	</script>
</body>
</html>