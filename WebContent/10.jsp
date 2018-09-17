<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%--
	사용자가 input에 받을사람 아이디를 적어나가면, 
	ajax로 해당 글라로 시작하는 id 값을 가진 account정보를 가지고 와서
	밑에 some 이라는 id를 붙여둔 곳에 option으로 설정해주기
	
	가지고오는 객체배열 형태의 json string 
	
	ajax 받아주는 곳에서 처리해야될 sql문은 select id,name,gender from account where id like ? 
																			? word +"%"
 --%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax</title>
</head>
<body>
	<h2>쪽지전송</h2>
	<p style="font-size: small;">
		수신자 아이디와 함께 보낼 메세지를 설정해주세요.<br/>
	</p>
	<form action="" autocomplete="off">
		<p>
			<b>받을사람</b>
			<input type="text" list="some" onkeyup="check(this.value);" style="padding: 3px"/>
			<datalist id="some">
				
			</datalist>
		</p>
		<p>
			<textarea style="width:247px; height: 200px;"></textarea>
		</p>
	</form>
	<script>
		var check = function(val){
			
			var req = new XMLHttpRequest();
			req.open("get", "10ajax.jsp?id=" + val, true);
			req.onreadystatechange= function() {
				if(this.readyState == 4){
					var obj = JSON.parse(this.responseText);
					var html="";
					for(var i = 0; i < obj.length; i++){
						
						html += "<option value=" + obj[i].ID + ">"+ obj[i].NAME + "(" + obj[i].GENDER+ ")</option>";
					}
					console.log(html);
					document.getElementById("some").innerHTML = html;
				}
			};
			req.send();
		};

	</script>
</body>
</html>













