<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1>가입신청서</h1>
	<p>
		아래 제공되는 양식에 데이터를 설정 후 가입 신청 바랍니다.<br /> 
		1. 아이디는 영문숫자기반의 4~12자(공백,특수문자불가능/ 첫글자는 영문으로)<br /> 
		2. 닉네임은 한글로 구성된 3~8자 (공백,특수문자불가능)<br />
		3. 비밀번호는 4~12자 로 일치시켜서 두번 입력 <br />
	</p>
	<form>
		<p>
			(*)아이디 : <input type="text" onkeyup="ckid(this);" id="id" /><span></span>
		</p>
		<p>
			(*)닉네임 : <input type="text" onkeyup="cknick(this);" id="nick" /><span></span>
		</p>
		<p>
			(*)비밀번호 : <input type="password" onchange="ckpass(this);" id="pass" /><span></span>
		</p>
		<p>
			(*)비밀번호 재확인 : <input type="password" onkeyup="ckrepass(this);"
				id="repass" /><span></span>
		</p>
		<button type="submit" id="sbt" disabled>신청서</button>		
	</form>
	<script>
		/*
		버튼활성화 시키기
		 */
		var ar = [ false, false, false, false ];
		var vaild = function() {
			console.log(ar);
			if (ar.includes(false)) {
				document.getElementById("sbt").disabled = true;
			} else {
				document.getElementById("sbt").disabled = false;
			}
		}
		//===========================================
		var ckid = function(a) {
			var c = a.value;
			var check = /^[A-Za-z]\w{3,11}$/.test(c);
			ar[0] = check;
			if (check) {
				document.getElementsByTagName("span")[0].innerHTML = "유효.(서버측으로부터 사용가능 체크중)";
			} else {
				document.getElementsByTagName("span")[0].innerHTML = "유효하지 않음.";
			}
			vaild();
		}
		
		var  chnick = function(b){
			var v = b.value;
			var check = /^[가-힇]{2,7}&/.test(v);
		}
	</script>
</body>
</html>