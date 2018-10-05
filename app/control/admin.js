module.exports.login = function(req, res){
  res.render('admin/login.ejs');
}

module.exports.register = function (req, res, application) {
  if (req['method'] == 'GET') {
    res.render('admin/register.ejs', { data: {}, validation: {} });    
  } else {
    var data = req.body;
    req.assert('name', 'Nome é obrigatório').notEmpty();
    req.assert('email', 'Email é obrigatório').notEmpty();
    req.assert('email', 'Por favor, digite seu email corretamente').isEmail();
    req.assert('pwd', 'Senha é obrigatório').notEmpty(); 
    if (data.cpf) {
      req.assert('cpf', 'O CPF deve ter 11 números').isLength({ min: 11 });
      req.assert('cpf', 'O CPF deve ter 11 números').isLength({ max: 11 });  
    }    
    req.assert('pwd2', 'Por favor, digite a senha novamente').notEmpty();   
    var errors = req.validationErrors();
        
    if (errors) {
      res.render('admin/register.ejs', { data: data, validation: errors });      
    } else {
      if (data.pwd == data.pwd2) {
        res.send('ok');
      } else {// the passwords are differents
        let pwd2 = [
          {
            location: 'body',
            location: 'pwd2',
            msg: 'As senhas são diferentes. Por favor, tente novamente',
            value: data.pwd2
          },
        ]
        res.render('admin/register.ejs', { data: data, validation: pwd2 });        
      }
    }   
    
  }
}
