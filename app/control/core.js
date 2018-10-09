module.exports.index = function(req, res){
  var user = {};
  if (req.session.loged) {
    user.email = req.session.email;    
  }

  res.render('core/index.ejs', { user: user });

}

module.exports.contact = function(req, res){
  var user = {};
  if (req.session.loged) {
    user.email = req.session.email;
  }

  res.render('core/contact.ejs', { user: user });
}

module.exports.categories = function(req, res){
  var user = {};
  if (req.session.loged) {
    user.email = req.session.email;
  }

  res.render('core/categories.ejs', { user: user });
}

module.exports.single = function(req, res){
  var user = {};
  if (req.session.loged) {
    user.email = req.session.email;
  }

  res.render('core/single.ejs', { user: user });
}
