var plan_mysql = require('./dbopr.js');
function Plan(plan) {
	this.plan_id = plan.plan_id;
	this.user_id = plan.user_id;
	this.username = plan.username;
	this.plan = plan.plan;
	this.plan_begin = plan.plan_begin;
	this.plan_end = plan.plan_end;
	this.care_list = plan.care_list;
	this.image_list = plan.image_list;
}
module.exports = Plan;
Plan.prototype.save = function(callback) {
	var sql = "insert into plan (user_id,username,plan,plan_begin,plan_end) values('"+this.user_id+"','"+this.username+"','"+this.plan+"','"+this.plan_begin+"','"+this.plan_end+"')";
	planmysql = new plan_mysql();
	planmysql.connect(function(err){});
	planmysql.insert(sql,function(err){
		if(!err) {
			id = 0;
		} else {
			id = 1;
		}
		callback(err,id);
	});
};
Plan.prototype.firstid = 0;
Plan.prototype.pagenum = 8;
Plan.prototype.getsome = function(callback) {
	var sql = "select * from plan order by plan_id desc limit "+this.firstid+","+this.pagenum;
	planmysql = new plan_mysql();
	planmysql.connect(function(err){});
	planmysql.select(sql,function(rs,err){
		if(rs.length !== 0 ) {
			callback(true, rs);
		} else {
			callback(false, rs);
		}
	});
};
Plan.prototype.addcare_str = '';
Plan.prototype.addcare = function(callback) {
	var sql = "update plan set care_list=concat('"+this.addcare_str+"',',',care_list) where plan_id="+this.plan_id;
	// console.log(sql);
	var care_user_id = this.addcare_str.split("_")[0];
	var sql_2 = "insert into user_care (user_id,plan_id,plan_user_id,plan) values('"+care_user_id+"','"+this.plan_id+"','"+this.user_id+"','"+this.plan+"')";
	planmysql = new plan_mysql();
	planmysql.connect(function(err){});
	planmysql.update(sql,function(err){
		var b = 0;
		if(!err) {
			planmysql.insert(sql_2,function(err2){
				if(!err) {
					b = 1;
				} else {
					b = 0;
				}
				callback(b);
			});
		} else {
			b = 0;
			callback(b);
		}
	});
};
Plan.prototype.getuserplan = function(callback) {
	var sql = "select * from plan where user_id='"+this.user_id+"' order by plan_id desc";
	console.log(sql);
	planmysql = new plan_mysql();
	planmysql.connect(function(err){});
	planmysql.select(sql,function(rs,err){
		if(rs.length !== 0 ) {
			callback(true, rs);
		} else {
			callback(false, rs);
		}
	});
};