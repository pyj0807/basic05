<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1>AJAX</h1>
	<p>
		open api 에서 서울시 인구 구별 통계를 ajax로 긁어 와서 html를 만들어보자<br/>
		주소는 http://data.seoul.go.kr/dataList/datasetView.do?infId=419&srvType=S&serviceKind=2&currentPageNo=1
	</p>
	<button type="button" onclick="scrap();">데이터가져오기</button>
	<h3>데이터 읽어온 값</h3>
	<ul id="rst">
	
	</ul>
	<script>
	/* 
		var scrap = function(){
			var req = new XMLHttpRequest();
			req.open("get", "http://openapi.seoul.go.kr:8088/sample/xml/octastatapi419/1/5/", true);
			
			//var html = "<li>종로구 / 남자 79322명 , 여자 82600명</li>";
			//document.getElementById("rst").innerHTML = html;
			
			req.onreadystatechange = function(){
				if(this.readyState==4){
					var resp = this.responseXML;
					
					var row = resp.getElementsByTagName("row")[1].innerHTML;
					console.log("row = "+ row); 
					  
					var row = resp.getElementsByTagName("row");
					for(var i=1; i<row.length; i++) {
						var d = row[i].getElementsByTagName("JACHIGU");
						for(var ii=0; ii<d.length; ii++) {
							console.log(d[ii].innerHTML);
						}
						var d1 = row[i].getElementsByTagName("NAMJA_1");
						for(var ii1=1; ii1<d1.length; ii1++) {
							console.log(d[ii1].innerHTML);
						}
						console.log("─────────")
					}
					
				}
			}
			req.send();
		};
	 */
	 var scrap = function(){
			var req = new XMLHttpRequest();
			req.open("get", "http://openapi.seoul.go.kr:8088/sample/xml/octastatapi419/1/5/",true);
			req.onreadystatechange=function(){
				if(this.readyState==4) {
					var resp = this.responseXML;
					var rows = resp.getElementsByTagName("row");
					var html = "";
					for(var i=1; i<rows.length ; i++) {
						var  jachigu = rows[i].getElementsByTagName("JACHIGU")[0].innerHTML;
						var  namja = parseInt(rows[i].getElementsByTagName("NAMJA_1")[0].innerHTML);
						var  yeoja = parseInt(rows[i].getElementsByTagName("YEOJA_1")[0].innerHTML);
						html += "<li>"+jachigu +" : 男  " + namja.toLocaleString() +"/ 女 " + yeoja.toLocaleString()+"</li>";			
					}
					document.getElementById("rst").innerHTML = html;		
				}
			};
			req.send();
		};
	</script>
</body>
</html>