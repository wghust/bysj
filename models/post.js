var inmysql = require('./dbopr.js');
function Post(post) {
	this.title = post.title;
	this.content = post.content;
	this.time = post.time;
	this.userid = post.userid;
	this.username = post.username;
	// this.content_short = post.content_short;
}
module.exports = Post;
Post.prototype.save = function(callback){
	var content_short = this.content.substring(0,50);
	var sql = "insert into postcontent (userid,username,title,content,content_short,posttime) values('"+this.userid+"','"+this.username+"','"+this.title+"','"+this.content+"','"+content_short+"','"+this.time+"')";
	// console.log(sql);
	postmysql = new inmysql();
	postmysql.connect(function(err){});
	postmysql.insert(sql,function(err){
		if(!err) {
			id = 0;
		} else {
			id = 1;
		}
		callback(err,id);
	});
};
Post.prototype.getpost = function(callback) {
	var sql = "select * from postcontent order by id desc";
	getmysql = new inmysql();
	getmysql.connect(function(err){});
	getmysql.select(sql,function(rs,err){
		// console.log(rs);
		if(rs!=null) {
			callback(true,rs);
		} else {
			callback(null,rs);
		}
		// if(!err) {
		// 	callback(err,r);
		// } else {
		// 	callback(null,rs);
		// }
	});
};