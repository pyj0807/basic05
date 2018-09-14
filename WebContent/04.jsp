<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1>XML ?? JSON ??</h1>
	<p>
		ajax를 사용해서 서버측과 데이터를 주고 받는 작업을 해보았다
		그러면서 동기,비동기에 따라서 다른 설정을 통해 응답처리를 해야된다는것까지도...
	</p>
	<p>
		ajax 는 asynchronous javascript and xml 의 약지
		자바스크립트로 서버측과 비동기 통신을 의미하는데 xml 이라는게 기술명에 붙어있다.
		xml은 왜 붙어 있는거냐???
	</p>
	<p>
		서버측에서 데이터를 받아와야될때, 단순히 true, false 데이터가 아니라 엄청난양을 읽어와야 할때가 있다
		그럴때 서버측에서 데이터 전송도 편하게 하고 받아와서 처리도 편하게 하기 위해 그때 사용되는게 XML이다.
	</p>
	<p>
		데이터 전송을 편하게 하기 위해서 채택했던게 XML인데, 이게 그렇게 쓰기 편하진 않다.
		그래서 Ajax 기술이 발전되면서 xml보다 좀더 효율적인 데이터표기를 쓰기 시작했는데 이게 JSON이다
	</p>
	<button type="button" onclick="ajax();">ajax (XML)</button>
	<hr/>
	<%
		String[] gu = "강남구,강동구,강북구,강서구,관악구,광진구,구로구,금천구".split(",");
		for(int i=0; i<gu.length; i++) {
	%>
		<input type="checkbox" value="<%=gu[i] %>"/><%=gu[i] %>
	<%
	}
	%>
	<script>
	var ajax = function() {
		var req = new XMLHttpRequest();
		req.open("get","04ajax.jsp",true);
		req.onreadystatechange=function(){
			if(this.readyState==4) {
				var resp = this.responseXML;
				var flag = resp.getElementsByTagName("flag")[0].innerHTML;
				console.log("flag = "+ flag);
				var datalist = resp.getElementsByTagName("data-list");
				for(var i=0; i<datalist.length; i++) {
					var d = datalist[i].getElementsByTagName("data");
					for(var ii=0; ii<d.length; ii++) {
						console.log(d[ii].innerHTML);
					}
					console.log("─────────")
				}
			}
		};
		req.send();
	};
	
	</script>
</body>
</html>