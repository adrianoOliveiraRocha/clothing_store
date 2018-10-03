module.exports = function(application){

  application.get('/login', function(req, res){
    application.app.control.admin.login(req, res);
  });

}
