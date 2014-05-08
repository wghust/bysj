define(function(require,exports,module){
	$(document).ready(function() {
		$(".bs_plan_care").click(function(){
			var _this = $(this);
			var plan = _this.siblings('.bs_plan_block_content_show').text().slice(0,20);
			var care_id = _this.parent(".bs_plan_block_content").parent(".bs_plan_block").attr('id').split('_')[1];
			var plan_user_id = _this.parent(".bs_plan_block_content").parent(".bs_plan_block").attr('id').split('_')[2];
			var data = {
				care_id: care_id,
				plan_user_id: plan_user_id,
				plan:plan
			};
			$.post('/addcare',data,function(callback){
				var back = callback;
				if(back.is_here) {
					if(back.b) {
						_this.siblings('.bs_plan_block_content_carelist').prepend("<a href='/user/"+back.care_back.split("_")[0]+"'>@"+back.care_back.split("_")[1]+"</a>");
						_this.attr({
							disabled:"disabled"
						});
						_this.val("tracking");
					} else {
						alert("not success");
					}
				} else {
					window.location.href = "/frontpage";
				}
			},"json");
		});
	});
});