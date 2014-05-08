define(function(require,exports,module){
	require("./tinymce/tinymce.min.js");
	$(document).ready(function() {
		tinymce.init({
			selector: ".edittable",
			plugins: [
			"advlist autolink lists link image charmap print preview anchor",
			"searchreplace visualblocks code fullscreen",
			"insertdatetime media table contextmenu paste"],
			toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
		});
		// $(".bs_exam_select").change(function(event) {
		// 	/* Act on the event */
		// 	var _this = $(this);
		// 	var article_type = _this.val();
		// 	if(article_type == "3") {
		// 		$("#mce_34").hide();
		// 	} else {
		// 		$("#mce_34").show();
		// 	}
		// });
		re_back = function() {
			window.location.href = "./";
		};
		$(".bs_examadd_input").click(function(){
			var article_type = $(".bs_exam_select").val();
			var page_content = tinymce.get('edittable').getContent();
			var page_title = $(".bs_examadd_title").val();
			var nowDate = new Date();
			var uploadtime = Math.round(nowDate.getTime()/1000);
			var data = {
				title:page_title,
				content:page_content,
				uploadtime:uploadtime,
				article_type:article_type
			};
			$.post('/examinee/addpage',data,function(callback){
				var data = callback;
					if(data.id === 0) {
						$(".bs_msg_red").text(data.msg);
						setTimeout(re_back,2000);
					} else {
						$(".bs_msg_red").text(data.msg);
					}
			},"json");
			// console.log(tinymce.get('edittable').getContent());
		});
	});
});