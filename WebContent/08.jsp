<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>

	<h1>상품 목록</h1>
	<p>
		페이저 로딩 없이 데이터를 갱신합니다
	</p>
	<p>
		<button type="button" onclick="refresh(5)">5개 가져오기</button>
		<button type="button" onclick="refresh(10)">10개 가져오기</button>
	</p>
	<h3>결과창</h3>
	<%--
		ajax로 가져온 데이터를 이용해서 출력할때 key 라는 이름에 설정된 데이터는 
		b 태그 처리해서 출력, price 출력 할때 localeString 으로
		recommend 가 true로 설정된 데이터들은 small 로 추천 이라고 작성
	 --%>
	<div id="rst">
		
	</div>
	<script>
	var refresh = function() {
		var req = new XMLHttpRequest();
		req.open("get", "08ajax.jsp", true);
		req.onreadystatechange= function() {
			if(this.readyState == 4) {
				var html = "";
				var obj = JSON.parse(this.responseText);
				for(var i=0; i<obj.length; i++){
					html += "<p>";
					html += "<b>"+obj[i].key+"</b> ";
					html += "<i>￦"+obj[i].price.toLocaleString()+"</i>";
					if(obj[i].recommend) {
						html += "<small style=\"color: red\">(추천)</small>";
					}
					html += "</p>";
				}
				document.getElementById("rst").innerHTML = html;
			}
		};
		req.send();
	}
	</script>
</body>
</html>


















