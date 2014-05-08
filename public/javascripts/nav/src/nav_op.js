define(function(require,exports,module){
	// var $ = require('jquery');
	$(document).ready(function() {
		$(".open_menu img").click(function(event) {
			var _this = $(this);
			if(_this.parent(".open_menu").data("check")=="1") {
				$(".main_personal").animate({'top':'45px'}, 'slow');
				_this.parent(".open_menu").data({"check":"0"});
			} else {
				$(".main_personal").animate({'top':'-300px'}, 'slow');
				_this.parent(".open_menu").data({"check":"1"});
			}
		});
	});
})