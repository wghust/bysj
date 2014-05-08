define(function(require,exports,module){
	var $ = require('jquery');
	$(document).ready(function() {
		var lasttime = 5;
		var now_url = window.location.href;
		var last_sg = now_url.lastIndexOf("/");
		var back_url =  now_url.substring(0,last_sg);
		console.log(back_url);
		waittime = function() {
			if(lasttime>0) {
				lasttime = lasttime-1;
				$(".bs_logout_wtime").text(lasttime);
				setTimeout(waittime,1000);
			} else {
				window.location.href = back_url;
			}
		};
		setTimeout(waittime,1000);
	});
});