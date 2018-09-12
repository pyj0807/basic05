<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1>자바스크립트의 배열</h1>
	<p>
		스크립트 처리중에 필요하면 배열객체를 사용할수 있다.
		자바스크립트의 배열은, 자바에 비교했을때 리스트에 가까운 형태이다.
	</p>
	<script>
		var ar = new Array();	// 데이터 세팅하면서 만드는것이 불가능	//[]이렇게 해도 됨
		var ar2 = [1,2,43,5];	// [1,2,43,5];	데이터 세팅하면서 만들수 있고 []이면 new Array와 같은걸로 보면 된다	//데이터를 설정한 배열이 필요하면 이형태로
		console.log(typeof ar+"/"+typeof ar);
		// 배열에 length 속성으로 현재 길이를 얻어낼수 있음.
		console.log(ar.length+"/"+ar2.length);
		// 접근하는 방식은 똑같음. [idx]로 접근
		console.log(ar2[ar2.length-1]);
		console.log(ar[13]);	// djqtsms idx는 undefined
		// 순환처리하는건, for로 돌려서 처리하면 됨
		// 데이터를 추가하는건 length 를 index 로 설정해서 값 설정
		ar2[ar2.length]= 45;
		for(var d=30; d<40; d++){
			// ar[ar.length] = d;
			ar.push(d);	// 맨뒤에 추가
		}
		console.log(ar);
		// 특정칸에 데이터 변경은 접근 
		ar[4] = 999;
		console.log(ar);
		// 데이터 삭제를 할꺼면, 
		// splice(제어할 index, 삭제할개수)
		ar.splice(3, 1);
		console.log(ar);
		// splice(제어할 index, 삭제할개수, 추가할 데이터) : 중간에 끼어넣기
		ar.splice(1, 0, "fdsa",true,34);
		console.log(ar);
		
		//includes ==> boolean, indexOf/lastIndexOf,	// 찾기 단 찾는게 없으면 -1이 뜬다
		console.log(ar.indexOf(30));
		
		
	</script>
</body>
</html>