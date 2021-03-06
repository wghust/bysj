/**
 * Module dependencies.
 */

var express = require('express')
    // , routes = require('./routes')
    ,
    index = require('./routes/index')
    // , user = require('./routes/user')
    ,
    flash = require('connect-flash'),
    settings = require('./settings'),
    http = require('http'),
    path = require('path');

var app = express();

app.configure(function() {
    app.set('port', process.env.PORT || 3000);
    app.set('views', __dirname + '/views');
    app.set('view engine', 'ejs');
    app.use(flash());
    app.use(express.favicon());
    app.use(express.logger('dev'));
    app.use(express.bodyParser());
    app.use(express.methodOverride());
    app.use(express.cookieParser('your secret here'));
    app.use(express.session({
        secret: settings.cookieSecret,
        key: settings.db,
        cookie: {
            maxAge: 1000 * 60 * 60 * 24 * 30
        }
    }));
    app.use(app.router);
    app.use(express.static(path.join(__dirname, 'public')));
});

app.configure('development', function() {
    app.use(express.errorHandler());
});

// app.get('/', routes.index);
// app.get('/users', user.list);

http.createServer(app).listen(app.get('port'), function() {
    console.log("Express server listening on port " + app.get('port'));
});
index(app);