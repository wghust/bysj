define(function(require,exports,module){
	// var $ = require("jquery");
	require("./mobiscroll.custom-2.6.2.min.js");
	$(document).ready(function() {
		function date_format(a) {
			b = new Date();
			b.setFullYear(a.substr(6,4));
			b.setMonth(a.substr(3,2));
			b.setDate(a.substr(0,2));
			b.setHours(a.substr(11,2));
			b.setMinutes(a.substr(14,2));
			return b;
		}
		var now = new Date();
		var begin_set_date = new Date();
		var end_set_date = new Date();
		$(".bs_clock_begintime").scroller({
			preset:'datetime',
			lang:'zh',
			display:'bottom',
			theme:'android-ics light',
			minDate: new Date(now.getFullYear(), now.getMonth(), now.getDate()),
			onSelect: function(valueText,inst) {
				if(!$(".bs_clock_end_checkbox").is(":checked")) {
					$(".bs_clock_endtime").scroller('enable');
				} else {
					$(".bs_clock_endtime").scroller('disable');
				}
			},
			onClose: function(valueText,inst) {
				if($(".bs_clock_begintime").val().length!==0) {
					$(".bs_clock_endtime").scroller('enable');
				}
			}
		});
		$(".bs_clock_end_checkbox").click(function(){
			if($(".bs_clock_begintime").val().length!==0) {
				var _this_check = $(this);
				if(!_this_check.is(":checked")) {
					$(".bs_clock_endtime").scroller('enable');
				} else {
					$(".bs_clock_endtime").scroller('disable');
				}
			}
		});
		$(".bs_clock_endtime").scroller({
			preset:'datetime',
			lang:'zh',
			display:'bottom',
			theme:'android-ics light',
			minDate: new Date(now.getFullYear(), now.getMonth(), now.getDate()),
			onSelect: function(valueText,inst) {
				
			}
			// disabled:'true',
			// readonly:'true'
		});
		$(".bs_clock_endtime").scroller('disable');
		re_back = function() {
			window.location.href = "/";
		}
		$(".bs_clock_upload").click(function(){
			var begin_set_date = new Date();
			var end_set_date = new Date();
			begin_set_date = date_format($(".bs_clock_begintime").val());
			end_set_date = date_format($(".bs_clock_endtime").val());
			if(begin_set_date>=end_set_date) {
				alert("wrong");
			} else {
				var end_check_time;
				if($(".bs_clock_end_checkbox").is(":checked")) {
					end_check_time = "forever";
				} else {
					end_check_time = $(".bs_clock_endtime").val();
				}
				$.post('/addplan',{plan:$(".bs_clock_activity").val() , plan_begin:$(".bs_clock_begintime").val() , plan_end:end_check_time},function(callback){
					var data = callback;
					if(data.id) {
						$(".bs_l_msg").text(data.msg);
					} else {
						$(".bs_l_msg").text(data.msg);
						setTimeout(re_back,2000);
					}
				},"json");
			}
		});
	});
});