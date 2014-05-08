
/*
 * GET home page.
 */
var User = require("../models/admin.js");
var Post = require("../models/post.js");
var Page = require("../models/page.js");
var jwt = require('jwt-simple');
var Plan = require("../models/plan.js");
var exam_User = require("../models/exam_admin.js");
var exam_Page = require("../models/addpage.js");
module.exports = function(app) {
	app.get('/',function(req,res){
		if(req.session.user) {
			newPost = new Post({
				id:1
			});
			newPost.getpost(function(err,posts){
				if(!err) {
					posts = [];
				}
				res.render('index',{
					title:'INDEX',
					posts:posts,
					user:req.session.user
				});
			});
		} else {
			res.redirect('/frontpage');
		}
	});
	app.get('/login',function(req,res){
		if(req.session.user) {
			res.redirect('/');
		} else {
			res.redirect('/frontpage');
		}
	});
	app.post('/login',function(req,res){
		res.header('Content-Type','text/plain');
		nowid = req.param("nowid");
		email = req.param("email");
		password = req.param("password");
		var newUser = new User({
			email:email,
			password:password
		});
		newUser.login(function(hereuser,err,id){
			if(id===0) {
				msg="不存在用户,请注册";
			} else {
				msg="登录成功";
				newUser.username = hereuser.username;
				newUser.id = hereuser.id;
				req.session.user = newUser;
				token = {
					short_name : "anamary",
					user_key : newUser.id,
					name : newUser.username
				};
				duoshuo_secret = "3acd6270c6a3ce38b084d6c179ad42ef";
				duoshuo_token = jwt.encode(token,duoshuo_secret);
				res.setHeader("Set-Cookie",["duoshuo_token="+duoshuo_token]);
				// console.log(req.session.user);
			}
			var back = {
				id:id,
				msg:msg
			};
			res.end(JSON.stringify(back));
		});
	});
	app.post('/reg',function(req,res){
		res.header('Content-Type','text/plain');
		nowid = req.param("nowid");
		email = req.param("email");
		password = req.param("password");
		username = req.param("username");
		var newUser = new User({
			email:email,
			username:username,
			password:password
		});
		newUser.checkUser(function(err,id) {
			if(id === 0) {
				newUser.reg(function(err,checkid) {
					if(checkid ===0) {
						msg = "注册成功";
						req.session.user = newUser;
						token = {
							short_name : "anamary",
							user_key : newUser.id,
							name : newUser.username
						};
						duoshuo_secret = "3acd6270c6a3ce38b084d6c179ad42ef";
						duoshuo_token = jwt.encode(token,duoshuo_secret);
						res.setHeader("Set-Cookie",["duoshuo_token="+duoshuo_token]);
					} else {
						msg="注册不成功";
					}
					var back = {
						id:checkid,
						msg:msg
					};
					res.end(JSON.stringify(back));
				});
			} else {
				msg = "用户已存在";
				var back = {
					id:id,
					msg:msg
				};
				res.end(JSON.stringify(back));
			}
		});
	});
	app.get('/frontpage',function(req,res){
		if(req.session.user) {
			res.redirect('/');
		} else {
			res.render('frontpage',{
				title:'user op'
			});
		}
	});
	app.get('/post',function(req,res){
		if(req.session.user) {
			res.render('post',{
				title:'POST',
				user:req.session.user
			});
		} else {
			res.redirect('/frontpage');
		}
	});
	app.post('/post',function(req,res){
		var title = req.param("title");
		var content = req.param("content");
		var myDate = new Date();
		var newPost = new Post({
			title:title,
			content:content,
			time:Math.round(myDate.getTime()/1000),
			userid:req.session.user.id,
			username:req.session.user.username
		});
		newPost.save(function(err,id){
			var msg;
			if(id===0) {
				msg = "保存成功";
			} else {
				msg = "不好意思";
			}
			var back = {
				id:id,
				msg:msg
			};
			res.end(JSON.stringify(back));
		});
	});

	app.get('/page/:page_id',function(req,res,next){
		var page_id=req.params.page_id;
		if(page_id) {
			var page = new Page();
			page.getOnePage(page_id,function(err,rs){
				var onepage = [];
				if(err) {
					onepage = rs;
				}
				if(req.session.user) {
					res.render('page.ejs',{
						title:'page',
						user:req.session.user,
						page_id:page_id,
						onepage:onepage
					});
				} else {
					res.render('page.ejs',{
						title:'page',
						user:null,
						page_id:page_id,
						onepage:onepage
					});
				}
			});
		} else {
			next();
		}
	});
	app.get('/page/',function(req,res){
		var page_id=1;
		var page = new Page();
		page.getOnePage(page_id,function(err,rs){
			var onepage = [];
			if(err) {
				onepage = rs;
			}
			if(req.session.user) {
				res.render('page.ejs',{
					title:'page',
					user:req.session.user,
					page_id:page_id,
					onepage:onepage
				});
			} else {
				res.render('page.ejs',{
					title:'page',
					user:null,
					page_id:page_id,
					onepage:onepage
				});
			}
		});
	});
	app.get('/page',function(req,res){
		var page_id=1;
		var page = new Page();
		page.getOnePage(page_id,function(err,rs){
			var onepage = [];
			if(err) {
				onepage = rs;
			}
			if(req.session.user) {
				res.render('page.ejs',{
					title:'page',
					user:req.session.user,
					page_id:page_id,
					onepage:onepage
				});
			} else {
				res.render('page.ejs',{
					title:'page',
					user:null,
					page_id:page_id,
					onepage:onepage
				});
			}
		});
	});
	app.post('/page',function(req,res){

	});
	app.get('/addplan',function(req,res){
		if(req.session.user) {
			res.render('addplan.ejs',{
				user:req.session.user,
				title:'ADD PLAN'
			});
		} else {
			res.redirect('/frontpage');
		}
	});
	app.post('/addplan',function(req,res){
		var plan = req.param("plan");
		var plan_begin = req.param("plan_begin");
		var plan_end = req.param("plan_end");
		var newplan = new Plan({
			user_id : req.session.user.id,
			username : req.session.user.username,
			plan : plan,
			plan_begin : plan_begin,
			plan_end : plan_end
		});
		newplan.save(function(err,id){
			var msg;
			if(id===0) {
				msg = "上传成功";
			} else {
				msg = "不好意思";
			}
			var back = {
				id:id,
				msg:msg
			};
			res.end(JSON.stringify(back));
		});
	});
	app.get('/plan',function(req,res){
		var getplan = new Plan({
			id:0
		});
		getplan.getsome(function(b,rs){
			var plan_post = [];
			if(b) {
				plan_post = rs;
				var here_str;
				if(req.session.user) {
					here_str = req.session.user.id+"_"+req.session.user.username;
				}
				for(i=0;i<plan_post.length;i++) {
					plan_post[i].carelist_show = plan_post[i].care_list.split(',');
					plan_post[i].is_care = 0;
					if(req.session.user) {
						for(j=0;j<plan_post[i].carelist_show.length;j++) {
							if(plan_post[i].carelist_show[j] === here_str) {
								plan_post[i].is_care = 1;
								break;
							}
						}
					}
				}
			}
			if(req.session.user) {
				res.render('plan.ejs',{
					title:'PLAN',
					user: req.session.user,
					plan_post: plan_post,
				});
			} else {
				res.render('plan.ejs',{
					title:'PLAN',
					user: null,
					plan_post: plan_post
				});
			}
		});
	});
	app.post('/addcare',function(req,res){
		var care_id = req.param("care_id");
		var plan_user_id = req.param("plan_user_id");
		var plan = req.param("plan");
		if(req.session.user) {
			var userid = req.session.user.id;
			var username = req.session.user.username;
			var care_back = userid+"_"+username;
			// var str = ","+userid+"_"+username;
			var add_care = new Plan({
				plan_id:care_id,
				user_id:plan_user_id,
				plan:plan
			});
			add_care.addcare_str = care_back;
			add_care.addcare(function(b){
				var back = {
					is_here:1,
					b:b,
					care_back: care_back
				};
				res.end(JSON.stringify(back));
			});
		} else {
			var back = {
				is_here:0,
				b:0,
				care_back: null
			};
			res.end(JSON.stringify(back));
		}
	});
	app.get('/logout',function(req,res){
		req.session.user = null;
		res.setHeader("Set-Cookie",["duoshuo_token="+null]);
		res.render('logout.ejs',{
			title:'LOGOUT',
		});
	});
	app.get('/examinee',function(req,res){
		// common
		var firstid = 0;
		var pagenum = 5;

		// schedule post get;
		var typeid = 0;
		var index_list = new exam_Page({
			article_type:typeid
		});
		index_list.firstid = firstid;
		index_list.pagenum = pagenum;
		var schedule_post = [];
		var paper_post = [];
		var experience_post = [];
		var links_post = [];
		function schedule (posts) {
			schedule_post = eval(posts);
			// schedule_post = JSON.stringify(posts);
		}
		function paper (posts) {
			paper_post = eval(posts);
			// paper_post = JSON.stringify(posts);
		}
		function experience (posts) {
			// experience_post = JSON.stringify(posts);
			experience_post = eval(posts);
		}
		function links(posts) {
			// links_post = JSON.stringify(posts);
			links_post = eval(posts);
		}
		index_list.getexamlistpage(function(b,rs){
			var schedule_post_in = [];
			if(b) {
				schedule_post_in = rs;
				for(i=0;i<schedule_post_in.length;i++) {
					schedule_post_in[i].uploadtime = getDate(schedule_post_in[i].uploadtime);
				}
			}
			// console.log(schedule_post);
			schedule(schedule_post_in);
		});
		
		// paper post get
		typeid = 1;
		var index_1_list = new exam_Page({
			article_type:typeid
		});
		index_1_list.firstid = firstid;
		index_1_list.pagenum = pagenum;
		index_1_list.getexamlistpage(function(b,rs){
			var paper_post = [];
			if(b) {
				paper_post = rs;
				for(i=0;i<paper_post.length;i++) {
					paper_post[i].uploadtime = getDate(paper_post[i].uploadtime);
				}
			}
			paper(paper_post);
		});

		// experience post get
		typeid = 2;
		var index_2_list = new exam_Page({
			article_type : typeid
		});
		index_2_list.firstid = firstid;
		index_2_list.pagenum = pagenum;
		index_2_list.getexamlistpage(function(b,rs){
			var experience_post = [];
			if(b) {
				experience_post = rs;
				for(i=0;i<experience_post.length;i++) {
					experience_post[i].uploadtime = getDate(experience_post[i].uploadtime);
				}
			}
			console.log(experience_post);
			experience(experience_post);
		});

		// links post get
		typeid = 3;
		var index_3_list = new exam_Page({
			article_type : typeid
		});
		index_3_list.firstid = firstid;
		index_3_list.pagenum = pagenum;
		index_3_list.getexamlistpage(function(b,rs){
			var links_post = [];
			if(b) {
				links_post = rs;
				for(i=0;i<links_post.length;i++) {
					links_post[i].uploadtime = getDate(links_post[i].uploadtime);
				}
			}
			links(links_post);
			res.render('./examinee/index.ejs',{
				title:"INDEX",
				schedule_post: schedule_post,
				paper_post: paper_post,
				experience_post: experience_post,
				links_post: links_post
			});
		});
	});
	app.get('/examinee/addpage',function(req,res) {
		if(req.session.examuser) {
			res.render('./examinee/addpage.ejs',{
				title:"ADD"
			});
		} else {
			res.redirect('../exam_admin');
		}
	});
	app.post('/examinee/addpage',function(req,res) {
		var title = req.param("title");
		var content = req.param("content");
		var uploadtime = req.param("uploadtime");
		var article_type = req.param("article_type");
		var exam_page = new exam_Page({
			title:title,
			content:content,
			uploadtime:uploadtime,
			article_type:article_type
		});
		exam_page.addpage(function(err,id){
			var msg;
			if(id ===0) {
				msg="保存成功";
			} else {
				msg="保存不成功";
			}
			var back = {
				id : id,
				msg : msg
			};
			res.end(JSON.stringify(back));
		});

	});
	app.get('/examinee/edit',function(req,res){
		if(req.session.examuser) {
			var exam_page = new exam_Page({
				id:0
			});
			exam_page.getallpage(function(b,rs){
				var examall = [];
				if(b) {
					examall = rs;
					for(i=0;i<examall.length;i++) {
						examall[i].uploadtime = getDate(examall[i].uploadtime);
					}
				}
				res.render('./examinee/exam_edit.ejs',{
					title: 'EDIT',
					examall: examall
				});
			});
		} else {
			res.redirect('../exam_admin');
		}
	});
	app.post('/examinee/hide',function(req,res){
		var id = req.param("id");
		var op = req.param("op");
		var exam_op = new exam_Page({
			id: id
		});
		console.log(op);
		if(op==="true") {
			exam_op.hide(function(b){
				var back = {
					b:b
				};
				res.end(JSON.stringify(back));
			});
		} else {
			console.log("here is show");
			exam_op.show(function(b){
				var back = {
					b:b
				};
				res.end(JSON.stringify(back));
			});
		}
	});
	app.post('/examinee/save',function(req,res){
		var id = req.param("id");
		var title = req.param("title");
		var content = req.param("content");
		var uploadtime = req.param("uploadtime");
		var exam_op = new exam_Page({
			id: id,
			title: title,
			content: content,
			uploadtime: uploadtime
		});
		exam_op.save(function(b){
			var back = {
				b:b,
				uploadtime:getDate(uploadtime)
			};
			res.end(JSON.stringify(back));
		});
	});
	app.get('/examinee/exam_admin',function(req,res){
		if(req.session.examuser) {
			res.redirect('../edit');
		} else {
			res.render('./examinee/exam_admin.ejs',{
				title:'login'
			});
		}
	});
	app.post('/examinee/exam_admin',function(req,res){
		var email = req.param("email");
		var password = req.param("password");
		// console.log(email);
		var checkuser = new exam_User({
			email:email,
			password:password
		});
		// console.log(checkuser.password);
		checkuser.checklogin(function(hereuser,err,id) {
			// console.log(hereuser.id);
			if(id === 1) {
				checkuser.id = hereuser.id;
				checkuser.username = hereuser.username;
				req.session.examuser = checkuser;
				msg = "登陆成功";
			} else {
				msg = "管理员账号不存在";
			}
			var back = {
				id:id,
				msg:msg
			};
			res.end(JSON.stringify(back));
		});

	});
	app.get('/examinee/ex_page/:ex_page_id', function(req,res){
		var ex_page_id = req.param("ex_page_id");
		if(ex_page_id) {

		} else {
			ex_page_id = 1;
		}
		var exam_onepage = new exam_Page({
			id:ex_page_id
		});
		exam_onepage.getexamonepage(function(b,rs){
			var exam_post = [];
			if(b) {
				exam_post = rs;
				exam_post[0].uploadtime = getDate(exam_post[0].uploadtime);
			}
			res.render('./examinee/ex_page.ejs', {
				title : "PAGE",
				oneexam : exam_post
			});
		});
	});
	app.get('/examinee/ex_page',function(req,res){
		var ex_page_id = 1;
		var exam_onepage = new exam_Page({
			id:ex_page_id
		});
		exam_onepage.getexamonepage(function(b,rs) {
			var exam_post = [];
			if(b) {
				exam_post = rs;
				exam_post[0].uploadtime = getDate(exam_post[0].uploadtime);
			}
			res.render('./examinee/ex_page.ejs', {
				title : "PAGE",
				oneexam : exam_post
			});
		});
		exam_onepage.firstid = 7;
		exam_onepage.pagenum = 2;
		exam_onepage.article_type = 0;
		exam_onepage.getexamlistpage();
	});
	app.get('/examinee/list/:typeid',function(req,res){
		var typeid = req.param("typeid");
		exam_onepage = new exam_Page({
			article_type : typeid
		});
		exam_onepage.firstid = 0;
		exam_onepage.pagenum = 5;
		exam_onepage.getexamlistpage(function(b,rs){
			var exam_post = [];
			if(b) {
				exam_post = rs;
				for(i=0;i<exam_post.length;i++) {
					exam_post[i].uploadtime = getDate(exam_post[i].uploadtime);
				}
			}
			res.render('./examinee/list.ejs',{
				title: "LIST",
				typeid : typeid,
				oneexam : exam_post
			});
		});
	});
	app.post('/examinee/list',function(req,res){
		var typeid = req.param("typeid");
		var firstid = req.param("firstid");
		console.log(firstid);
		exam_onepage = new exam_Page({
			article_type : typeid
		});
		exam_onepage.firstid = firstid;
		exam_onepage.getexamlistpage(function(b,rs){
			var exam_post = [];
			console.log(b);
			if(b) {
				exam_post = rs;
				for(i=0;i<exam_post.length;i++) {
					exam_post[i].uploadtime = getDate(exam_post[i].uploadtime);
				}
			}
			var back = {
				b:b,
				exam_post:exam_post
				
			};
			res.end(JSON.stringify(back));
		});
	});
	app.get('/clock',function(req,res){
		if(req.session.user) {
			res.render('clock.ejs',{
				title:"CLOCK",
				user: req.session.user
			});
		} else {
			res.render('clock.ejs',{
				title:"CLOCK",
				user: null
			});
		}
	});
	app.get('/user/:id',function(req,res){
		var here_user_id = req.param("id");
		var userifm = [];
		function get_userifm(posts) {
			userifm = posts;
			console.log(userifm);
		}
		var userplan = [];
		function get_plan(posts) {
			userplan = eval(posts);
		}
		var get_user = new User({
			id:here_user_id
		});
		get_user.getuserifm(function(rs,id){
			var userifm = [];
			if(id) {
				userifm = rs;
			}
			get_userifm(userifm);
		});
		get_user_plan = new Plan({
			user_id:here_user_id
		});
		get_user_plan.getuserplan(function(id,rs){
			var userplan = [];
			if(id) {
				userplan = rs;
			}
			var here_str;
			if(req.session.user) {
				here_str = req.session.user.id+"_"+req.session.user.username;
			}
			for(i=0;i<userplan.length;i++) {
				userplan[i].carelist_show = userplan[i].care_list.split(',');
				userplan[i].is_care = 0;
				if(req.session.user) {
					for(j=0;j<userplan[i].carelist_show.length;j++) {
						if(userplan[i].carelist_show[j] === here_str) {
							userplan[i].is_care = 1;
							break;
						}
					}
				}
			}
			get_plan(userplan);
			console.log(userifm);
			if(req.session.user) {
				res.render('user.ejs',{
					title:'USER',
					user:req.session.user,
					userifm:userifm,
					userplan:userplan
				});
			} else {
				res.render('user.ejs',{
					title:'USER',
					user:null,
					userifm:userifm,
					userplan:userplan
				});
			}
		});
	});
	function getDate(tm){
		var tt=new Date(parseInt(tm) * 1000).toLocaleString().substr(0,16);
		return tt;
	}
	app.get('/examinee/examlogout',function(req,res){
		req.session.examuser = null;
		res.render('./examinee/examlogout.ejs',{
			title:'LOGOUT',
		});
	});
};