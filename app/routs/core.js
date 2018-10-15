module.exports = function(application){

  application.get('/', function(req, res){
    application.app.control.core.index(req, res);
  });

  application.get('/contact', function(req, res){
    application.app.control.core.contact(req, res);
  });

  application.get('/categories', function(req, res){
    application.app.control.core.categories(req, res);
  });

  application.get('/single', function(req, res){
    application.app.control.core.single(req, res);
  });

}
