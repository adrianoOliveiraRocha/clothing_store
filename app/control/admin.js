module.exports.login = function (req, res, application){
  if (req.method == 'GET') {
    res.render('admin/login.ejs', { data: {}, validation: {} });
  } else {
    var data = req.body;
    req.assert('email', 'Digite seu email corretamente!').isEmail();
    req.assert('pwd', 'Senha é obrigatório!').notEmpty(); 
    var errors = req.validationErrors();

    if (errors) {
      res.render('admin/login.ejs', { data: data, validation: errors });
    } else {
      var connection = application.config.connect();
      var user = new application.app.models.User(connection);
      user.auth(data, function (error, result) {
        if (error !== null && error.fatal == true) {
          res.send(error.sqlMessage);
        } else {

          if (result.length > 0) {// user exists
            req.session.loged = true;
            req.session.email = data.email;
            req.session.pwd = data.pwd;
            if (result[0].is_staff === 0) {// is not admin
              res.redirect('/');  
            } else {// is admin
              res.redirect('/admin');
            }
            
          } else {// user not exists
            let msg = "Usuário não encontrado";
            res.render('core/error/index.ejs', { msg: msg });
          }
        }
      });
    }

  }
  
}

module.exports.logout = function (req, res) {
  req.session.destroy();
  res.redirect('/');
}

module.exports.signup = function (req, res, application) {
  if (req['method'] == 'GET') {
    res.render('admin/signup.ejs', { data: {}, validation: {} });    
  } else {    
    var data = req.body;
    req.assert('email', 'Digite seu email corretamente!').isEmail();
    req.assert('pwd', 'Senha é obrigatório!').notEmpty(); 
    req.assert('pwd2', 'Confirme a senha!').notEmpty();   
    var errors = req.validationErrors();
        
    if (errors) {
      res.render('admin/signup.ejs', { data: data, validation: errors });      
    } else {

      if (data.pwd == data.pwd2) {

        var connection = application.config.connect();
        var user = new application.app.models.User(connection);    
        user.save(data, function (error, result) {
          if (error) {
            res.send(error);
          } else {
            req.session.loged = true;
            req.session.email = data.email;
            req.session.pwd = data.pwd;
            res.redirect('/');
          }          
        });      

      } else {// the passwords are differents
        var pwd2 = [
          {
            location: 'body',
            location: 'pwd2',
            msg: 'As senhas são diferentes. Por favor, tente novamente!',
            value: data.pwd2
          },
        ]
        res.render('admin/signup.ejs', { data: data, validation: pwd2 });        
      }

    } 
    
  }
}

module.exports.admin = function (req, res, application) {
  res.render('admin/index.ejs');
}

module.exports.calendar = function (req, res, application) {
  res.render('admin/calendar.ejs');
}

module.exports.stats = function (req, res, application) {
  res.render('admin/stats.ejs');
}

module.exports.tables = function (req, res, application) {
  res.render('admin/tables.ejs');
}
