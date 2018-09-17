<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON 작성해보기</title>
</head>
<body>
	<ul>
		<li id="q01">[{"cnt" : 453, "group" : "어렵다"}, {"cnt" : 123, "group" : "뭐지"}, {"cnt" : 789, "group" : "이해함"} ]</li>	
		<!-- <li id="q02">
		[{"result" : true , "total" : 1103}, 
		"detail" : {"serial" : "뭥미", "price" : 123 }, {"serial" : "ㅐㅑㅇㄹㅌ", "price" : 46800 }]</li> -->
		<li id="q02">{"result":true, "total": 31, "detail":[	{"serial" : "ed103f" , "price":4100},{"serial" : "it4a31" , "price": 45000}	] }</li>
	</ul>
	<button type="button" onclick="solve01();">q01파싱</button>
	<button type="button" onclick="solve02();">q02파싱</button>
	<script>
	
	var solve02 = function() {
		console.log(document.getElementById("q02").innerHTML);
		var obj = JSON.parse(document.getElementById("q02").innerHTML);
		console.log(obj.result + " / " +typeof obj.result);	// boolean
		console.log(obj.total + " / " +typeof obj.total);	// number
		for(var i=0; i<obj.detail.length; i++) {
			console.log(obj.detail[i].serial + " / " +typeof obj.detail[i].serial); // string
			console.log(obj.detail[i].price + " / " + typeof obj.detail[i].price);	// number
		}
	};
	
	
	var solveq01 = function(){
		var obj = JSON.parse(document.getElementById("q01").innerHTML);
		
		for(var i = 0; i<obj.length; i++){
			console.log(obj[i].cnt + " / " + typeof obj[i].cnt);	//	number
			console.log(obj[i].group + " / " + typeof obj[i].group);	//	string
		}
	}

		
	</script>
</body>
