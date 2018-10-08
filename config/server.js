var express = require('express');
var consign = require('consign');
var bodyParser = require('body-parser');
var cookieParser = require('cookie-parser');
var expressValidator = require('express-validator');
var expressSession = require('express-session');

var app = express();
app.set('view engine', 'ejs'); // Define the template engine
// Atention! This module is called in app.js. Then, take care with the address
//of directory views
app.set('views', './app/views'); // Define where is the views

app.use(cookieParser());
app.use(bodyParser.urlencoded({extended: true}));
app.use(expressValidator());
app.use(express.static('./app/public'));

app.use(expressSession({
  cookieName: 'expressSession',
  secret: 'weareprogrammers-frombrazil-thatisweareit',
  resave: false,
  saveUninitialized: false
}));

consign()
      .include('app/routs')
      .then('config/connect.js') //you must put the extension
      .then('app/models')
      .then('app/control')
      .into(app);

module.exports = app;
