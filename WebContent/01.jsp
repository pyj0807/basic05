<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Script</title>
</head>
<body>
	<h1 ondblclick="change();">자바스크립트</h1>
	<p>
		만약에 HTML에 자바스크립트를 섞에서 응답을 보내고 싶다면, 
		HTML 영역에서 그냥 작성하면 안되거, 스크립트 영역을 잡고 작성을 해여 한다
	</p>
	<p>
		 작성해둔 스크립트는 두가지 형태로 작동되게 되는데,
		 별도의 함수처리한해둔 스크립트는, HTML 문서 로딩 중에 작동되게 되있거,
		 함수처리해둔 건 event나 기타 등등의 상황에서 호출에 의해 작동되게 된다.
	</p>
	<script>
		var cnt = 0;
		document.title = "자바 SECRIPT";
		
		function change() {
			cnt++;
			var p = window.prompt();
			document.title = p+"("+cnt+")";
			console.log("cnt = "+cnt); // 자바스크립트의 기본 출력 (브라우저 콘솔에 출력됨)
			//개발자 모드로 확인할수 있음. f12
			
		}
	
	</script>
</body>
</html>