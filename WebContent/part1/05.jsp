<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1>자바스크립트의 객체</h1>
	<p>
		필요하면 객체도 정의 내려서 사용하는게 가능하다. 
		객체 설계를 할때도 function 키워드가 이용된다.
	</p>
	<p>
		보통 객체생성용 function 은 첫글자를 대문자로 설정해서 만든다.
	</p>
	<script>
	var Sphere = function(r) {
		this.radius = r;
		this.tostring = function() {
			return "Shpere[radius= " + this.radius+ "]";
		}
		this.expand = function(d) {
			this.radius += d;
		}
		this.volume = function() {
			var p = 1;
			for(var cnt=1; cnt<=3; cnt++) {
				p *= this.radius;
			}
			return 4/3*3.1415*p;
		}
	}
	//=====================================================
	console.log(Sphere);
	var s1 = new Sphere(5);
	console.log(s1);
	console.log(s1.radius);
	console.log(s1.tostring());
	s1.expand(40);
	console.log(s1.tostring());
	s1.expand = s1.tostring;
	console.log(s1.expand());
	s1.enpand = function(d){
		this.radius *= d;
	}
	s1.expand(2);
	console.log(s1.tostring());
	s1.area = function(){
		return 4*3.1415*this.radius*this.radius;
	}
	console.log(s1.area());
	</script>
</body>
</html>























