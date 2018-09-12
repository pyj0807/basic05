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
//	console.log("data = "+ data);
	while(true) {
		var rem = data%1000;
		// console.log(rem);
		data -= rem;
		data /= 1000;
		if(data==0) {
			str = ""+rem + str;
			break;
		}
		else {
			if(rem <10)
				str =",00"+rem + str;
			else if(rem >=10 && rem<100)
				str = ",0"+rem + str;
			else
				str = ","+rem + str;
		}
	}
	return str;
}

var format_2 = function(data){
	var str ="";
	var ar = new Array();
	var i = 0;
	while(data>0){
		ar[i] = data%10;
		data -= ar[i];
		data /= 10;
		i++;
	}
	if(data==0){
		str = ""+rem+str;
		
	}
	console.log(ar);
	return str;
}

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
	/*	  
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
*/	

