<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>옵션설정-2</h2>
	<p>
		원하시는 예약 옵션을 추가 설정해주세요.
	</p>
	<p>
		<input type="checkbox" value="3000" onchange="preview();"/> 창가측 테이블(+3,000)
		<input type="checkbox" value="2500" onchange="preview();"/> 1인 사용(+2,500)
		<input type="checkbox" value="9000" onchange="preview();"/> 와인 포함(+9,000)
		<input type="checkbox" value="7000" onchange="preview();"/> 디저트 포함(+7,000)
	</p>
	<p>
		예상추가가격 : ￦ <span>0</span>
	</p>
	<button>예약진행</button>
	<script>
		var preview = function() {
			var inputs = document.getElementsByTagName("input");
			var pr =0;
			for(var i=0; i<inputs.length; i++) {
				console.log(i +" : checkbox ");
				console.log(inputs[i].checked + "/" + typeof inputs[i].checked);
				console.log(inputs[i].value + "/" + typeof inputs[i].value);
				if(inputs[i].checked == true ){
					pr += parseInt(inputs[i].value);		
				}
			}
			document.getElementsByTagName("span")[0].innerHTML = pr;		//span tag를 변경함
			
		}
	</script>
</body>
</html>

