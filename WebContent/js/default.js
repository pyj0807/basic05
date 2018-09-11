/**
 * 
 */

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
var format = function(data){
	var str ="";
	console.log("data="+ data);
	while(data>0){
		var rem = data%1000
		console.log(rem);
		data -= rem;
		data /= 1000;
	}
	return "0,000";
	
	
}
