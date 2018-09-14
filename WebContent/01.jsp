<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1>자바스크립트</h1>
	<p>
		이번에 살펴볼 객체는 XMLHTTpRequest 라는 객체이다.<br/>
		이 객체는 중요하다. AJAX 라는 걸 할때 사용된다.
	</p>
	<h2>AJAX (asynchronous JavaScript And XML) ?</h2>
	<p>
		Ajax는 자바스크립트를 이용한 서버측와 데이터를 주고 받는 비동기 통신 작업이다
	</p>
	<input type="text" id="txt"/>
	<button type="button" id="req">AJAX</button>
	<script>
		document.getElementById("req").onclick = function() {
			console.log(this.type +" / " +this.id +" / " + this.innerHTML);
			var val = document.getElementById("txt").value;
		//==========================================================
			var xhr = new XMLHttpRequest();	// 서버측과 데이터 통신을 하는 객체
			xhr.open("get", "01ajax.jsp?word="+val, true); // (get)요청방식, (01ajax.jsp)목적지, 비동기 설정(true,비동기)
															// false로 할때 지정시간동안 변경이나 클릭이 안됨 응답이 필요한경우에 사용
			xhr.send();
			// true로 설정해서 사용하는게 권장인데, 응답처리가 힘듬
			// false는 비권장이지만, 응답처리가 쉬움
			console.log("["+ xhr.responseText + "]");		// true로 할때 이걸쓰면 안넘어온다 false로 할때만 넘어온다
			console.log(xhr.responseText.trim() == "response");		//ajax에 작업으로 인해 빈공간이 같이 보내진다 그래소 trim처리를 해야 같아진다
		
		}
	</script>
</body>
</html>