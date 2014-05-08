define(function(require,exports,module) {
	$(document).ready(function() {
		var firstid = 5;
		var pagenum = 5;
		$(".bs_list_more").click(function(){
			var _this = $(this);
			var data = {
				firstid:firstid,
				typeid:$(".bs_exam_block_title p").attr('id').substr(5,1)
			};
			$.post('/examinee/list',data,function(callback) {
				var back = callback;
				console.log(back);
				if(!back.b) {
					_this.attr("disabled","disabled");
				} else {
					for(i=0;i<back.exam_post.length;i++) {
						$(".bs_one_block_ul").append("<li><a href='/examinee/ex_page/"+back.exam_post[i].id+"'>"+back.exam_post[i].title+"</a></li>");
					}
				}
			},"json");
			firstid = firstid+pagenum;
		});
	});
});