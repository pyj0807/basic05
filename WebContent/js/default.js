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
	    var len, point, str; 
	    data = data + ""; 
	    point = data.length % 3 ;
	    len = data.length; 
	   
	    str = data.substring(0, point); 
	    while (point < len) { 
	        if (str != "") str += ","; 
	        str += data.substring(point, point + 3); 
	        point += 3; 
	    } 
	     
	    return str;
	
/*	console.log("data="+ data);
	while(data>0){
		var rem = data%1000
		console.log(rem);
		data -= rem;
		data /= 1000;
	}
	return "0,000";*/
/*
    
 	data += "";
	x = data.split(',');
	x1 = x[0];
	x2 = x.length > 1 ? ',' + x[1] : '';
	var rgx = /(\d+)(\d{3})/;
	while (rgx.test(x1)) {
		x1 = x1.replace(rgx, '$1' + ',' + '$2');
		console.log('$1');
	}
	return x1 + x2;
	
	

}
*/
	
}
