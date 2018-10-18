module.exports.new = function (req, res, application) {
  
  var msg = req.session.message;
  req.session.message = '';

  if (req.method == 'GET') {
    
    res.render('admin/category/new.ejs',
    {
      data: {},
      validation: {},
      msg: msg,
    });
  } else {
    var data = req.body;
    req.assert('title', 'O campo título é obrigatório!').notEmpty();
    var errors = req.validationErrors();
    if (errors) {
      res.render('admin/category/new.ejs', 
      { 
        data: data, 
        validation: errors,
        msg: msg 
      });
    } else {
      var connection = application.config.connect();
      var category = new application.app.models.Category(connection);
      category.save(data, function (error, result) {
        if (error !== null && error.fatal == true) {
          res.send(error.sqlMessage);
        } else {
          req.session.message = 'Categoria salva com sucesso!';
          res.redirect('/nova_categoria');
        }
      });
    }
  }
}

module.exports.show = function (req, res, application){
  var msg = req.session.message;
  req.session.message = '';

  var connection = application.config.connect();
  var category = new application.app.models.Category(connection);

  var data = category.show(function(error, result){
    if (error !== null && error.fatal == true) {
      res.send(error.sqlMessage);
    } else {
      res.render('admin/category/show.ejs',
      {
        data: result,
        msg: msg
      });
    }
  });
}