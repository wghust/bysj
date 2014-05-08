var mysqldec = require('../settings');
var mysql = require("mysql");
var permysql;
var beginmysql;
function mysqlop() {
	this.host = mysqldec.host;
	this.user = mysqldec.user;
	this.password = mysqldec.password;
	this.db = mysqldec.db;
}
module.exports = mysqlop;
mysqlop.prototype.connect = function(callback) {
	permysql = mysql.createConnection({
		host:this.host,
		user:this.user,
		password:this.password,
		database:this.db
	});
	beginmysql = permysql.connect();
	return callback(beginmysql);
};
mysqlop.prototype.select = function(sqls,callback) {
	permysql.query(sqls,function(err,rs,fields){
		callback(rs,err);
	});
};
mysqlop.prototype.insert = function(sqls,callback) {
	permysql.query(sqls,function(err){
		callback(err);
	});
};
mysqlop.prototype.update = function(sqls,callback) {
	permysql.query(sqls,function(err){
		callback(err);
	});
};
mysqlop.prototype.end = function() {
	permysql.end();
};