<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax 연습</title>
</head>
<body>
	<h1>가입신청서</h1>
	<small>아래 양식에 맞춰 값을 설정</small>
	<ul>
		아래 제공되는 양식에 데이터를 설정 후 가입 신청 바랍니다.
		<br />
		<li>1. 아이디는 영문숫자기반의 4~12자(공백,특수문자불가능/ 첫글자는 영문으로)<br />
		<li>2. 닉네임은 한글로 구성된 3~8자 (공백,특수문자불가능)<br />
		<li>3. 비밀번호는 4~12자 로 일치시켜서 두번 입력 <br />
	</ul>
	<form action="">
		<p>
			<b>(*)Account ID</b> <input type="text" id="id" /><span></span>
		</p>

		<p>
			<b>(*)NickName</b> <input type="text" onkeyup="ckNick(this);"
				id="nick" /><span></span>
		</p>
		<p>
			<b>(*)PassWord</b> <input type="password" onchange="ckPass(this);"
				name="joinpass" id="pass" /><span></span>
		</p>
		<p>
			<b>(*)PassWordCheck</b> <input type="password"
				onkeyup="ckRepass(this);" id="repass" /><span></span>
		</p>
		<button type="submit" id="sbt" disabled>신청서</button>
	</form>
	<script>
		var ar = [ false, false, false, false ];
		var vaild = function() {
			console.log(ar);
			if (ar.includes(false)) {
				document.getElementById("sbt").disabled = false;
			} else {
				document.getElementById("sbt").disabled = true;
			}
		}

		//====

		document.getElementById("id").onchange = function(a) {
			var v1 = a.value;
			if (/^[A-Za-z]\w{3,11}$/.test(v1)) {
				var req = new XMLHttpRequest();
				req.open("get", "02ajax.jsp", true);
				req.onreadystatechange = function() {
					if (this.readyState == 4) {
						var resp = this.responseText.trim();
						if (resp == "true") {
							document.getElementsByTagName("span")[0].innerHTML = "사용중인 ID입니다";
							document.getElementsByTagName("span")[0].style.color = "red";
						} else {
							document.getElementsByTagName("span")[0].innerHTML = "멋진 ID에요";
							document.getElementsByTagName("span")[0].style.color = "green";
						}
					}
				}
				req.send();
			} else {
				document.getElementsByTagName("span")[0].innerHTML = "아이디는 영문숫자혼용 4~12자로 설정바랍니다.";
				document.getElementsByTagName("span")[0].style.color ="red";
			}
			
		};

		var ckNick = function(b) {
			var v2 = b.value;
			var check = /^[가-힇]{2,7}$/.test(v2);
			ar[1] = check;
			if (check) {
				document.getElementsByTagName("span")[1].innerHTML = "사용가능합니다";
				document.getElementsByTagName("span")[1].style.color = "green";

			} else {
				document.getElementsByTagName("span")[1].innerHTML = "한글로 구성된 3~8자";
				document.getElementsByTagName("span")[1].style.color = "red";
			}
			vaild();
		}

		var ckPass = function(c) {
			var v3 = c.value;
			var check = /^\w{3,11}$/.test(v3);
			ar[2] = check;
			if (check) {
				document.getElementsByTagName("span")[2].innerHTML = "사용가능";
				document.getElementsByTagName("span")[2].style.color = "green";
			} else {
				document.getElementsByTagName("span")[2].innerHTML = "유효하지 않음.";
				document.getElementsByTagName("span")[2].style.color = "red";
			}
			vaild();
		}

		var ckRepass = function(d) {
			var v4 = d.value;
			var c = document.getElementsByTagName("input")[2].value;
			if (v4 == c) {
				document.getElementsByTagName("span")[3].innerHTML = "일치합니다";
				document.getElementsByTagName("span")[3].style.color = "green";
			} else {
				document.getElementsByTagName("span")[3].innerHTML = "유효하지 않음.";
				document.getElementsByTagName("span")[3].style.color = "red";
			}
			vaild();
		}

		var ajax = function(a) {
			var c = document.getElementById("id").value;
			var req = new XMLHttpRequest();
			req.open("get", "03ajax.jsp", true);
			console.log("??" + c);
			req.onreadystatechange = function() {
				if (this.readyState == 4) {
					console.log("resp : " + this.responseText);
					if (this.responseText == "true") {
						window.alert("이미 사용 중인 아이디 입니다.");
						ar[4] = false;
					} else {
						window.alert("사용가능한 아이디입니다.");
						ar[4] = true;
					}
				}
			}
			req.send();
			vaild();
		}
	</script>
</body>
</html>