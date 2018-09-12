<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>java script</title>
</head>
<body>
	<h1>string 객체</h1>
	<p>
		자바스크립트의 string 역시, 객체형 데이트이고 조작함수들이 존재한다.
	</p>
	<input type="text" placeholder="input text" onchange="search(this.type, this.value);"/>
	<input type="checkbox" placeholder="free" onchange="search(this.type, this.value);"/>
	<script>
		console.log(document.getElementsByTagName("input")[0].onchange);
		
		function search(type, val){
		//	console.log("type =" + type +"/"+typeof type);
		//	console.log("val =" + val +"/"+typeof val);
			// length : 길이 , function 이 아님
			console.log(val.length);
			// 0. 문자열비교 = 로 처리
			//console.log(vla.length());
			// javascript string 의 메소드는 자바 String이랑 거의 비슷
			// 1. charAt()	==> string
			console.log(val.charAt(0)+"/"+typeof val.charAt(0));
			// 2. charCodeAt(idx) ==> number
			console.log(val.charCodeAt(0)+"/"+ typeof val.charAt(0));
			// 3. startsWith , endsWith	==> boolean
			// 4. indexOf, lastIndexOf ==> number
			console.log(val.indexOf("admin")+"/"+ typeof val.includes("damin"));
			// 5. toUpperCase(), toLowerCase()   타이틀을 대,소문자로 변경 , trim() ==> String  trimdms 좌우 공백 제거
			document.title ="["+ val.trim().toUpperCase() + "]";
			// 6. replace() ==> string
			console.log(val.replace("<", "&lt;"));			// <문자를 &lt 로 변경해서 나옴
			// 7. substr(), substring, slice ==> string
							// lenhth 혹은, 끝 index 설정항낳면 마지막까지 다 처리함
			console.log(val.substr(3, 2));			// from Index, length Index
			console.log(val.substring(3, 5));			// from Index, end Index
			console.log(val.slice(3, 5));		// from Index, end Index
			console.log(val.substring(3, 5));			// from Index, end Index
			
			var ar = "saan;mockig;te0506".split(";");
			console.log(ar.length);
			for(var i=0; i<ar.length; i++){
				console.log(ar[i]);
			}
			
		}
	</script>
</body>
</html>