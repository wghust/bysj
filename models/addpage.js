var inmysql = require('./dbopr.js');
function exam_Page(exampage) {
	this.id = exampage.id;
	this.title = exampage.title;
	this.content = exampage.content;
	this.uploadtime = exampage.uploadtime;
	this.article_type = exampage.article_type;
}
module.exports = exam_Page;
exam_Page.prototype.addpage = function(callback) {
	var sql = "insert into exam_content (title,content,uploadtime,article_type) values('"+this.title+"','"+this.content+"','"+this.uploadtime+"','"+this.article_type+"')";
	var exammysql = new inmysql();
	exammysql.connect(function(err){});
	exammysql.insert(sql, function(err){
		if(!err) {
			id = 0;
		} else {
			id = 1;
		}
		callback(err,id);
	});
};
exam_Page.prototype.getexamonepage = function(callback) {
	var sql = "select * from exam_content where id='"+this.id+"'";
	var exammysql = new inmysql();
	exammysql.connect(function(err){});
	exammysql.select(sql, function(rs,err){
		// console.log(rs);
		if(rs.length !== 0) {
			callback(true, rs);
		} else {
			callback(false, rs);
		}
	});
};
exam_Page.prototype.pagenum = 10;
exam_Page.prototype.firstid = 2;
exam_Page.prototype.getexamlistpage = function(callback) {
	var sql = "select id,title,uploadtime,article_type,is_hide from exam_content where article_type='"+this.article_type+"' AND is_hide=0 order by id desc limit "+this.firstid+","+this.pagenum;
	// console.log(sql);
	// var sql = "select * from exam_content lime "
	var exammysql = new inmysql();
	exammysql.connect(function(){});
	exammysql.select(sql, function(rs,err){
		if(rs.length !==0) {
			callback(true, rs);
		} else {
			callback(false, rs);
		}
		// console.log(rs.length);
	});
	this.firstid = this.firstid+this.pagenum;
};
exam_Page.prototype.getallpage = function(callback) {
	var sql = "select * from exam_content order by id desc";
	var exammysql = new inmysql();
	exammysql.connect(function(){});
	exammysql.select(sql,function(rs,err){
		if(rs.length !==0) {
			callback(true, rs);
		} else {
			callback(false, rs);
		}
	});
};
exam_Page.prototype.hide = function(callback) {
	var sql = "update exam_content set is_hide = 1 where id='"+this.id+"'";
	var exammysql = new inmysql();
	exammysql.connect(function(){});
	exammysql.update(sql,function(err) {
		var b = 0;
		if(!err) {
			b = 1;
		} else {
			b = 0;
		}
		callback(b);
	});
};
exam_Page.prototype.show = function(callback) {
	var sql = "update exam_content set is_hide = 0 where id='"+this.id+"'";
	var exammysql = new inmysql();
	exammysql.connect(function(){});
	exammysql.update(sql,function(err) {
		var b = 0;
		if(!err) {
			b = 1;
		} else {
			b = 0;
		}
		callback(b);
	});
};
exam_Page.prototype.save = function(callback) {
	var sql = "update exam_content set title='"+this.title+"',content='"+this.content+"',uploadtime='"+this.uploadtime+"' where id='"+this.id+"'";
	var exammysql = new inmysql();
	exammysql.connect(function(){});
	exammysql.update(sql,function(err){
		var b = 0;
		if(!err) {
			b = 1;
		} else {
			b = 0;
		}
		callback(b);
	});
}
