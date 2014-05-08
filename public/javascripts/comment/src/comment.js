define(function(require,exports,module){
	var $ = require('jquery');
	$(document).ready(function() {
		$(".bs_i_c_up").click(function(){
			var comment_display = $(".bs_i_c_up").data('now');
			if(comment_display=="0") {
				$(".bs_i_c_up").data({
					'now':'1'
				});
				$(".bs_i_c_content").css({
					'display':'block'
				});
				$(".bs_i_c_up").val('D');
			} else {
				$(".bs_i_c_up").data({
					'now':'0'
				});
				$(".bs_i_c_content").css({
					'display':'none'
				});
				$(".bs_i_c_up").val('U');
			}
		});
	});
});