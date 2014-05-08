define(function(require,exports,module){
	var $ = require('jquery');
	$(document).ready(function() {
		re_back = function() {
			window.location.href = './edit';
		};
		$(".bs_exam_login").click(function(){
			var email = $(".bs_exam_email").val();
			var password = $(".bs_exam_password").val();
			$.post('/examinee/exam_admin',{email:email,password:password},function(callback){
				var data = callback;
				if(data.id == 1) {
					$(".bs_l_msg").text(data.msg);
					setTimeout(re_back,2000);
				} else {
					$(".bs_l_msg").text(data.msg);
				}
			},"json");
		});
	});
});