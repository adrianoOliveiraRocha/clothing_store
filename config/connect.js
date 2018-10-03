var mysql = require('mysql');
var connMySQL = function(){
  return mysql.createConnection({
    host     : 'localhost',
    user     : 'adriano',
    password : '453231',
    database : 'clothing_store'
  });
}
module.exports = function(){
  return connMySQL;
}
