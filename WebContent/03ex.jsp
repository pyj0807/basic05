<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h2>쪽지전송</h2>
	<p>
		<b>수신자</b><br/>
		<input type="text" style="width: 300px;" 
		placeholder="여러명은 쉼표(,)로 구분 : 최대4명" onkeyup="set(this);"/>
	</p>
	<p>
		<b>전송내용</b> (<span>0</span>/80) <br />
		<textarea style="width: 400px; height: 250px;"
			onkeyup="check(this.value)"></textarea>
	</p>
	<script>
		var set = function(a) {
			/*if(a.length<=4){
			document.getElementsByTagName("input")[0].value=a;		
		}else{
			var name =a.split(",");
			var ret = new Array();
			for(var i=0;i<4;i++){
				 ret[ret.length]=name[i];
			}
			document.getElementsByTagName("input")[0].value=ret;
		}*/

			var v = a.value;
			var ar = v.split(",");
			if(ar.length>4){
				window.alert("4명까지만 가능합니다");
				var str = ar[0]+","+ar[1]+","+ar[2]+","+ar[3];
				a.value = str;
			}
		};
		
		var check = function(b) {
			console.log(b);
			if (b.length > 80)
				window.alert("초과");
			var ch = b.substr(0, 80);
			document.getElementsByTagName("textarea")[0].value = ch;
			document.getElementsByTagName("span")[0].innerHTML = b.length;
		};
	</script>
</body>
</html>