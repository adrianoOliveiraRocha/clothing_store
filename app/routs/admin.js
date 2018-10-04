module.exports = function(application){

  application.get('/login', function(req, res){
    application.app.control.admin.login(req, res);
  });

  application.get('/register', function (req, res) {
    application.app.control.admin.register(req, res, application);
  });

  application.post('/register', function (req, res) {
    application.app.control.admin.register(req, res, application);
  });

}
