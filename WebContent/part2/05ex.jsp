<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String str = sdf.format(new Date(System.currentTimeMillis()	));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1>결제내역 조회</h1>
	<p>
		서비스 사용중에 결제하였던 내역을 기간 조회 합니다.
	</p>	
	<button type="button" onclick="setting(7);">1주일(7 Day)</button>
	<button type="button" onclick="setting(30);">1개월(30 Day)</button>
	<button type="button" onclick="setting(90);">3개월(90 Day)</button>
	<form action="05exed.jsp">
		<p>
			시작 <input type="date" id="start" onchange="valid(this);"/> ~ 
			종료 <input type="date" value="<%=str %>" id="end"/>	
		</p>
		<small id="result">
		
		</small>
		<p>
			<button type="submit" disabled>조회</button>
		</p>
	</form>
	<script>

	
	var setting = function(r) {
		// var endInput = document.getElementsByTagName("input")[1];	
		var endInput = document.getElementById("end");	// id를 바로 확보가능하다, 유니크 처리해야 함.
		console.log(endInput.value);
		var d = new Date(endInput.value);
		var td = d.getTime() - (1000*60*60*24*r);
		var tdd = new Date(td);
		console.log(tdd);
		var day = 0;
		//==
		var startInput = document.getElementById("start");
			
		//var month = tdd.getFullYear()+ "-" + (tdd.getMonth() + 1 ? "" : "0");
		var set = tdd.getFullYear()+ "-" + (tdd.getMonth() + 1 ? "" : "0");
			set += (tdd.getDate > 10? "":"0") + tdd.getDate();
		startInput.value = set;
		document.getElementsByTagName("button")[3].disabled = false;
		
		/* 		
			if (tdd.getDate() / 10 < 1) {
				day = "0" + (tdd.getDate());
			} else {
				day = tdd.getDate();
			}
			var year = tdd.getFullYear();

			var hap = year + "-" + month + "-" + day;
			console.log(hap);
			 */
		//==
		// var startInput = document.getElementsByTagName("input")[0];	
		var startInput = document.getElementById("start");
		
		//==
			document.getElementById("start").value = hap;

			var t = new Date(document.getElementById("start").value);
			var tt = new Date(t.value);
			console.log(tt.getTime());
			console.log(time.getTime());
			
		//==
		
		document.getElementsByTagName("button")[3].disabled = false;
	};
	
	
	var valid = function(t) {
		var d1 = new Date(t.value);
		var d2 = new Date(document.getElementById("end").value);	// i
		
		if(d1.getTime() > d2.getTime()) {
			document.getElementById("result").innerHTML = "검색시작은 검색종료일보다 클수 없습니다.";
		} else {
			document.getElementById("result").innerHTML = "";
		}
	}
	
	
	/*
		window.setInterval(function(){
			document.getElementsByTagName("button")[0].disabled = 
				! document.getElementsByTagName("button")[0].disabled;
		},2000);
		
		disabled 값은 true, false로 제어한다.
	*/
	
	</script>
</body>
</html>