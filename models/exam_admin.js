var inmysql = require('./dbopr.js');
function exam_User(checkuser) {
	this.id = checkuser.id;
	this.username = checkuser.username;
	this.password = checkuser.password;
	this.email = checkuser.email;
}
module.exports = exam_User;
// console.log(exam_User.email);
exam_User.prototype.checklogin = function(callback) {
	var sql = "select * from exam_admin where email='"+this.email+"' and password='"+this.password+"'";
	console.log(sql);
	exammysql = new inmysql();
	exammysql.connect(function(err){});
	exammysql.select(sql,function(rs,err){
		var id = 0;
		if(rs.length === 1) {
			id = 1;
			exam_User.id = rs[0].id;
			exam_User.username = rs[0].username;
			callback(exam_User,err,id);
		} else {
			id = 0;
			callback(exam_User,err,id);
		}
	});
};