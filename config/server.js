var express = require('express');
var consign = require('consign');
var bodyParser = require('body-parser');
var expressValidator = require('express-validator');

var app = express();
app.set('view engine', 'ejs'); // Define the template engine
// Atention! This module is called in app.js. Then, take care with the address
//of directory views
app.set('views', './app/views'); // Define where is the views

app.use(bodyParser.urlencoded({extended: true}));
app.use(expressValidator());
app.use(express.static('./app/public'));

consign()
      .include('app/routs')
      .then('config/connect.js') //you must put the extension
      .then('app/models')
      .then('app/control')
      .into(app);

module.exports = app;
