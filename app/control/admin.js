module.exports.login = function(req, res){
  res.render('admin/login.ejs');
}

module.exports.register = function (req, res, application) {
  if (req['method'] == 'GET') {
    res.render('admin/register.ejs');    
  } else {
    // var data = req.body;
    res.send('data');  
  }
}
