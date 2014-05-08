define(function(require,exports,module){
	// var $ = require('jquery');
	require('./tabIndent.js');
	tabIndent.renderAll();
	re_back = function() {
		window.location.href = "/";
	};
	
	String.prototype.replaceAll = function(reallyDo, replaceWith, ignoreCase) {  
		if (!RegExp.prototype.isPrototypeOf(reallyDo)) {
			return this.replace(new RegExp(reallyDo, (ignoreCase ? "gi": "g")), replaceWith);
		} else {
			return this.replace(reallyDo, replaceWith);
		}
	};
	$(".bs_b_s").click(function(){
		var this_title = $(".bs_p_title_t").val();
		var this_content = $(".bs_p_con_t").val();
		this_content = this_content.replaceAll(" "," ",true);
		this_content = this_content.replaceAll("\n","<br/>",true);
		$.post('/post',{title:this_title,content:this_content},function(callback){
			var data = callback;
			if(data.id === 0) {
				$(".bs_l_msg").text(data.msg);
				setTimeout(re_back,2000);
			} else {
				$(".bs_l_msg").text(data.msg);
			}
		},"json");
	});
});