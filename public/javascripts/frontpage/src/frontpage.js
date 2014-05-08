define(function(require,exports,module){
	// alert("right");
	// var $ = require('jquery');
	$(document).ready(function() {
		$(".bs_frontpage").height($(window).height());
		var email_check = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		get_in_success = function() {
			$(".bs_frontpage").slideUp(function(){
				$(this).hide();
				window.location.href = "/";
			});
		};
		user_begin_op = function() {
			$(".bs_login").click(function(){
				$(".bs_msg").text("");
				if($(".bs_op_hidden").attr('id')==='login') {
					var nowop = $(".bs_op_hidden").attr('id');
					var email = $(".bs_u_email").val();
					var password = $(".bs_u_password").val();
					var msg = "";
					if(!email||!password) {
						msg ="别让输入框空了";
						$(".bs_msg").text(msg);
					} else {
						if(!email_check.test(email)) {
							msg ="邮箱不正确";
							$(".bs_msg").text(msg);
						} else {
							msg = "";
							$.post("/login",{'nowop':nowop,'email':email,'password':password},function(callback){
								var data = callback;
								if(data.id==0) {
									msg=data.msg;
									$(".bs_msg").text(msg);
								} else {
									msg=data.msg;
									$(".bs_msg").text(msg);
									setTimeout(get_in_success,2000);
								}
							},"json");
						}
					}

				} else {
					$(".bs_op_hidden").attr({
						'id':'login'
					});
					$("#bs_op_reg").css({
						'display':"none"
					});
					$("#bs_op_login").css({
						'display':'block'
					});
					$(".bs_u_username").css({
						'display':'none'
					});
					$(".bs_login").css({
						'background-color':'#71BC22',
						'color':'white'
					});
					$(".bs_reg").css({
						'background-color':'white',
						'color':'black'
					});
				}
			});
			$(".bs_reg").click(function(){
				$(".bs_msg").text("");
				if($(".bs_op_hidden").attr('id')=='reg') {
					var nowop = $(".bs_op_hidden").attr('id');
					var username = $(".bs_u_username").val();
					var email = $(".bs_u_email").val();
					var password = $(".bs_u_password").val();
					var msg="";
					if(!username||!email||!password) {
						msg ="别让输入框空了";
						$(".bs_msg").text(msg);
					} else {
						if(!email_check.test(email)) {
							msg ="邮箱不正确";
							$(".bs_msg").text(msg);
						} else {
							msg="";
							$.post("/reg",{'nowop':nowop,'username':username,'email':email,'password':password},function(callback){
								var data = callback;
								if(data.id == 0) {
									msg = data.msg;
									$(".bs_msg").text(msg);
									setTimeout(get_in_success,2000);
								} else {
									if(data.id == 1) {
										msg = data.msg;
										$(".bs_msg").text(msg);
									} else {
										msg = data.msg;
										$(".bs_msg").text(msg);
									}
								}
							},"json");
						}
					}
				} else {
					$(".bs_op_hidden").attr({
						'id':'reg'
					});
					$("#bs_op_reg").css({
						'display':"block"
					});
					$("#bs_op_login").css({
						'display':'none'
					});
					$(".bs_u_username").css({
						'display':'block'
					});
					$(".bs_login").css({
						'background-color':'white',
						'color':'black'
					});
					$(".bs_reg").css({
						'background-color':'#71BC22',
						'color':'white'
					});
				}
			});
		};
		$("#beginview").click(function(){
			$(".bs_w_p2").hide();
			$(".firstselect").css({
				'display':'inline'
			});
		});
		$("#iamexaminee").click(function(){
			window.location.href = "/examinee/";
		});
		$("#iamlearn").click(function(){
			$(".bs_welcome").hide();
			$(".bs_f_op").css({
				'display':'block'
			});
			user_begin_op();
		});
		$(".bs_front_top").click(function(){
			$(".bs_front_top").css({
						'display':'none',
						'box-shadow':'none'
			});
			$(".bs_frontpage").slideDown(function(){
				
			});
		});
	});
});