<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1>자바스크립트의 데이터 종류 및 선언법</h1>
	<h3>※브라우저에서 f12 눌러서 개발자모드의 console을 확인할것</h3>
	<p>
		여타 프로그래밍 언어와 유사하게 기본적으로 사용할수 있는 데이터 종류가 있다.<br/>
		이 데이터들은 물론 변수로 관리할수도 있다.
	</p>
	<ul>
		<li>true, false 라는 boolean 타입의 데이터</li>
		<li>1 , 3.14 와 같은 number 타입의 데이터</li>	
		<li>"문자열", '01046148225' 와 같은 string 타입의 데이터</li>
	</ul>
	<p>
		위의 데이터들이 기본 데이터로 존재하고, 선언하는 법이며
		변수를 사용하고자 할때 별도의 타입선언이 필요한건 아니고, var 로 선언해서 사용하면 된다.
	</p>
		
	<script>
	
	function intro() {
		var data;
		console.log(data + " : " + typeof data);
		data = true;
		data = !data;
		console.log(data + " : " + typeof data);
		data = 11;
		console.log(data + " : " + typeof data);
		data = 3.14151;
		data *= 3;
		console.log(data + " : " + typeof data);
		data = "javascript"; 	// JSON 에 의한 정식표기는 쌍따옴표가 맞음. 
		console.log(data + " : " + typeof data);
		data = '자바스크립트';	// 문자열데이터 표기를 홀따옴표로도 가능함. 
		console.log(data + " : " + typeof data);
		// 연산중에 자바와 비교해서 다른연산이 일어나는 것만 짚어보면,
		// 1) number div 연산이 몫연산이 아니다. (mod 연산은 같음)
		console.log(279/60);	 // 소수부가 결과에 포함된다.
		console.log(279%60);	
		// 2) number =, -=, +=, *=, /= 이런건 다 같고, string data 의 +, += 연산도 같음.
		data += "!!!!!!";
		console.log(data);
		// 2-1) string 데이터가 + 연산이 아니면, number로 처리가 되버림.
		console.log("3213" - 13);
		console.log("3213" + 13);
		console.log("123" * "2");	// 
		console.log("가가가" * "나나나");	// NaN (Not a Number) 
		// 3) 논리연산 (==, !=, >=, <=, >, <,  &&, ||, !) 도 다 같지만, 문자열도 == 로 동등비교처리됨.
		var p = window.prompt("input password?");
		console.log(typeof p);
		console.log(p == "1q2w3e");
		// number와 string간은 변환없이 비교됨.
		console.log("1234" == 1234);
		// 논리연산에 추가적으로 존재하는게 ===, !==
		console.log("1234" === 1234);	// 값도 같고, 타입까지 같은지.
		// 4) 3항연산 가능
		var c = p =="1q2w3e" ? "okay" : "no";
		console.log(c);
	}
	
	intro();
	
	</script>
</body>
</html>





