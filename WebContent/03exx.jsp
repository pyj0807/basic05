<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h2>사용자연락처</h2>
	<p>
		고객님의 핸드폰 번호를 입력하신후 <button>전송</button> 을 눌러주세요.
	</p>
	<p>
		☎  <input type="text" onkeyup="set(this);" /> <button>전송</button>
	</p>
	
	<script>
/* 		var str = "";
		var set = function(target){
			var v = target.value;
			if(target.length==4){
				str = v+"-";
				
				document.getElementsByTagName("input")[0].value = str;
			}else{
				str = v;
			}			
			console.log(str);
		}
		 */
	// 강사님풀이
	/* 
		var set = function(t){
			 var str = t.value;
			 if(str.length==4){
				 t.value = str.substr(0,3)+"-"+str.substr(3,1);
			 }
			 if(str.length==9){
				 t.value = str.substr(0,8)+"-"+str.substr(8,1);
			 }
		 }
		  */
		  var set = function(t){
			  var str = t.value;
				while(str.includes("-")) {
					str = str.replace("-","");	// 최초 매치되는 첫번째요소에만 적용
				}
				console.log(str);
				if(str.length<=3) {
					t.value = str;				
				}else if(str.length>=4 && str.length<=7) {
					t.value = str.substr(0,3)+"-"+str.substr(3);
				}else {
					t.value = str.substr(0,3)+"-"+str.substr(3,4)+"-"+ str.substr(7);
				}
			}
		 
	</script>
</body>
</html>




























