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
            res.redirect('/');
          } else {// user not exists
            res.render('error/index.ejs');
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
            // req.session.save(function(err){
            //   if (err) {
            //     console.log('dont was possible save this session');
            //   } else {
            //     console.log('session saved');
            //   }
            // });
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
