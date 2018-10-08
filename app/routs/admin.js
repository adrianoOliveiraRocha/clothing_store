module.exports = function(application){

  application.get('/login', function(req, res){
    application.app.control.admin.login(req, res);
  });

  application.get('/signup', function (req, res) {
    application.app.control.admin.signup(req, res, application);
  });

  application.post('/signup', function (req, res) {
    application.app.control.admin.signup(req, res, application);
  });

}
