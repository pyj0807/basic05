<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h2 onmouseover="console.log('over event');">자바스크립트의 function</h2>
	<p>
		function 은 일반적으로 함수를 만들어내는데 사용되고, 객체를 설계할때도 사용된다.
	</p>
	<p>
		함수를 만들때의 function 이던, 객체를 만들때의 function 이던 두가지형태로 설계가능하다.
		<small>설계된 function은 script에서 사용되게나 HTML에서 event로 작동됨</small>
	</p>
	<p>
		<textarea style="width:400px; resize: none;" onclick="move();" readonly></textarea>
	</p>
	<script>
	var num = 5;
	/*
		function move() {
			var b = window.confirm("댓글을 다시려면 로그인이 필요합니다.");
			if(b){
				location.assign("index.jsp");
			}
		}
	*/
	var move = function(){
		var b = window.confirm("댓글을 다시려면 로그인이 필요합니다.");
		if(b){
			location.assign("index.jsp");
		}
		
	};
	// 자바스크립트는 함수도 변수로 담아서 관리를 하게 된다.
	console.log(typeof move);
	console.log(move);	// 함수의 내용이 출력
	move();	// 함구를 담고있는 변수를 ();로 call 하는 거임.
	</script>
	
</body>
</html>