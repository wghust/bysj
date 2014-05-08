var inmysql = require('./dbopr.js');
function User(user) {
	this.id = user.id;
	this.username = user.username;
	this.password = user.password;
	this.email = user.email;
}
module.exports = User;
User.prototype.login = function(callback) {
	var sql="select * from userifm where email='"+this.email+"' and password='"+this.password+"'";
	thismysql = new inmysql();
	thismysql.connect(function(err){});
	thismysql.select(sql,function(rs,err){
		var id = 0;
		if(rs.length === 1) {
			id = 1;
			User.id = rs[0].id;
			User.username = rs[0].username;
			callback(User,err,id);
		} else {
			id=0;
			callback(User,err,id);
		}
	});
	// thismysql.end();
};
User.prototype.checkUser = function(callback) {
	var sql="select * from userifm where email='"+this.email+"' and password='"+this.password+"'";
	// console.log(sql);
	thismysql = new inmysql();
	thismysql.connect(function(err){});
	thismysql.select(sql,function(rs,err){
		var id = 0;
		if(rs.length === 1) {
			id = 1;
			callback(err,id);
		} else {
			id = 0;
			callback(err,id);
		}
	});
	// thismysql.end();
};
User.prototype.reg = function(callback) {
	var sql = "insert into userifm (username,email,password) values('"+this.username+"','"+this.email+"','"+this.password+"')";
	// console.log(sql);
	thismysql.insert(sql,function(err){
		console.log(err);
		if(!err){
			id = 0;
		} else {
			id = 2;
		}
		callback(err,id);
	});
	// thismysql.end();
};
User.prototype.getuserifm = function(callback) {
	var sql = "select * from userifm where id='"+this.id+"'";
	getmysql = new inmysql();
	getmysql.connect(function(err){});
	getmysql.select(sql,function(rs,err){
		if(rs.length === 0) {
			callback(rs,false);
		} else {
			callback(rs,true);
		}
	});
};