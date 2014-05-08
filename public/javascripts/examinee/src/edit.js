define(function(require, exports, module){
	$(document).ready(function() {
		$(".is_hide").click(function(){
			var _this = $(this);
			var now_check = parseInt(_this.data("ishide"));
			var nowallclass = _this.parent("td").parent("tr").attr('class').split(' ');
			var nowid = parseInt(nowallclass[0].substr(12,nowallclass[0].length));
			if(now_check === 0) {
				var data_1 = {
					id:nowid,
					op:true
				};
				$.post("/examinee/hide",data_1,function(call){
					var back = call;
					if(back.b) {
						_this.data("ishide",1);
						_this.val("SHOW");
						_this.parent("td").parent("tr").removeClass("show_color").addClass("hide_color");
					} else {
						alert("not success");
					}
				},"json");
			} else {
				var data_2 = {
					id:nowid,
					op:false
				};
				$.post("/examinee/hide",data_2,function(call){
					var back = call;
					if(back.b) {
						_this.data("ishide",0);
						_this.val("HIDE");
						_this.parent("td").parent("tr").removeClass("hide_color").addClass("show_color");
					} else {
						alert("not success");
					}
				},"json");
			}
		});
		$(".exam_save").click(function(){
			var s_this = $(this);
			var s_tr = s_this.parent("td").parent("tr");
			var nowDate = new Date();
			var uploadtime = Math.round(nowDate.getTime()/1000);
			var data = {
				id: parseInt(s_tr.children('td').eq(0).text()),
				title: s_tr.children('td').eq(1).children('div').html(),
				content: s_tr.children('td').eq(2).children('div').html(),
				uploadtime: uploadtime
			};
			$.post("/examinee/save",data,function(call){
				var back = call;
				if(back.b) {
					alert("success");
					s_tr.children('td').eq(3).html(back.uploadtime);
				} else {
					alert("not success");
				}
			},"json");
		});
	});
});