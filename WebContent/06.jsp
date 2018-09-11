<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String str ="var test =function(){\n";
	str += "    console.log(true);\n";
//	str +="};";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1>자바스크립트</h1>
	<p>
		만약, 함수나, 객체를 여러곳에서 써야 된다면..이걸 매번 작성할 필요는 없고
		독립 js 파일로 만들어두고 연동해서 사용할수 있다. 
	</p>
	<script src="<%=application.getContextPath()%>/js/default.js"></script>
	<script>
		<%=str%>
		};
		test();
		var t = new Array();
		console.log(t.length);
		t[t.length] = 93;
		t[t.length] = 13;
		t[t.length] = 131;
		var s = new Sphere(121);
		var p = s.volume();
		console.log(p);
		// console.log(format(p));
		console.log(format(45612)); //	45,612
		console.log(format(12)); //	12
		console.log(format(2076300)); //	2,076,300
	</script>
	
</body>
</html>

