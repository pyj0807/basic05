<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Script</title>
</head>
<body>
	<h1>Java Script</h1>
	<p>
		HTML, css과 더불어 웹어플 구현시 사용되는 프론트언어로 분류된는 자바스크리트 라는걸 공부해보고, 
		어떤식으로 활용되는지에 대해서 알아보자.
	</p>
	<p>
		이름과는 별개로 자바와 전혀 상관이 없는 언어이다.
		<small>
			(일부 문법적 유사함은 있지만, 모든 프로그래밍 언어가 갖는 유사성정도이다.)
		</small>
	</p>
	<p>
		이 자바스크립트의 주 용도는 HTML 문서에서 일어나는 일들을 감지해서,
		이벤트 제어를 한다거나 혹은 HTML에 변화를 주게 하는 작업 정도이다.
	</p>
	<p>
		프로그래밍언어를 공부한적이 없다면, 배우기 까다로울수도 있지만, 굳이 자바스크립트가 아니더라도,
		타 언어를 해본적이 있으면 학습하는데 큰 어려움은 없다.
	</p>
	<p>
		데이터 종류와, 연산자, (if, switch, for, while 생략), 글로벌 함수, 사용할수 있는 객체들 에 대한 학습을
		하나씩 해보면서 자바스크립트에 알아가보자.
		
	</p>
	<button type="button" onclick="understand();">이해?</button>
	<script>
		function understand() {
			
			if(window.confirm("이해가십니까?")){			//confirm 팝업창을 띄운다
				var p = document.getElementsByTagName("p");
				for(var i=0; i<p.length; i++){
						p[i].style.color = "white";
				}
			} else {
				var p = document.getElementsByTagName("p");
				for(var i=0; i<p.length; i++){
					p[i].style.color = "red";
				}
				
			}
		}
	</script>
</body>
</html>