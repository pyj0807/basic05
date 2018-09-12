<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1>자바스크립트의 built-in 함수,객체</h1>
	<p>
		스크립트내에서 별도 설정없이 사용할수 있는 기본 글로벌 함수라는게 몇가지 있다.
		어떤것들이 있는지 살펴보자.
	</p>
	<script>
		// undefined
		var d;
		console.log(d == undefined);
		
		console.log( NaN );
		console.log(v1*v2);
		console.log( (v1*v2) == NaN);	// isNaN 으로 체크, == 로 체크하지 마시고
		console.log( Infinity );	// 무한
		console.log( 10/0 == Infinity );	// isFinite 유한체크
		
		var v1 = window.prompt("input number");
		var v2 = window.prompt("input number more");
		console.log(v1 - v2);
		console.log(v1 + v2);
		
		// parseInt  ,  parseFloat
		console.log( parseInt("456"));	// string --> 정수분만 추출한 number
		console.log( parseInt("456.32"));	// 실수형태 문자열도 처리가능 : 정수부만 추출
		console.log( parseInt(46512.322));	// number형 데이터도 처리가능 : 정수부만 추출
		
		console.log( parseFloat("456.32"));	// string --> 실수부를 포함한 number 
		console.log( parseFloat("456"));	// 	정수형태 문자열 처리했을때 : 실수부가 0이 붙거나 그러진 않음
		
	</script>
</body>
</html>




















