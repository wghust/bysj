var inmysql = require('./dbopr.js');
function Page() {
}
module.exports = Page;
Page.prototype.getOnePage = function(page_id,callback) {
	var sql = "select * from postcontent where id = '"+page_id+"';";
	getmysql = new inmysql();
	getmysql.connect(function(err){});
	getmysql.select(sql,function(rs,err){
		if(rs.length === 0) {
			callback(false,rs);
		} else {
			callback(true,rs);
		}
	});
};