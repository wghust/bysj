define(function(require,exports,module){
	// var $ = require("jquery");
	function getDate(tm){
		var tt=new Date(parseInt(tm) * 1000).toLocaleString().substr(0,16);
		return tt;
	}
	var timestamp = $(".bs_one_time").text();
	$(".bs_one_time").text(getDate(timestamp));
});