<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>XMLHttpRequest</h1>
	<p>
		xhr을 이용한 ajax는 비동기 true/동기 false를 설정해서 쓸수가 있다.
	</p>
	<p>
		비동기 같은 경우는 사용자가 ajax가 작동하는 동안 HTML을 사용하는데 있어서 제약이 없다
		반면 동기 설정시엔 사용자가 HTML에 응답이 날라올때까지 지욘이 발생하게 되있다.
	</p>
	<p>
		false 처리해서 동기방식을 했다면 send 이후 responseText를 확인하면 응답이 들어가져 있기 
		때문에 응답처리가 단순하지만, true 처리해서 비동기를 했다면 readyState를 체크해야 한다.
	</p>
	<button type="button" onclick="ajax();">AJAX</button>
	<script>
		var ajax = function(){
			var req = new XMLHttpRequest();
			console.log(req.readyState);	// xhr 상태값인데 0 ~ 4 까지 존재한다 아무설정 안하면 0임
			req.open("get", "02ajax.jsp", false);
			console.log(req.readyState);	// xhr 상타값인데 1(준비)
			//true 일때 아래의 식을 이용
			req.onreadystatechange = function(){
				console.log("function.."+this.readyState);
				if(this.readyState==4){
					var resp = this.responseText.trim();
					console.log("resp = "+this.responseText);
					if(resp =="true"){
						window.alert("GOOOOOOOOOOD!");
					}else{
						window.alert("BAAAAAAAAAD");
					}
				}
			};
			req.send();
			console.log(req.readyState);	// 2:요청지도착 / 3.응답수신시작 / 4:응답수신완료
			
		};
	</script>
</body>
</html>