module.exports.index = function(req, res){
  res.render('core/index.ejs');
}

module.exports.contact = function(req, res){
  res.render('core/contact.ejs');
}

module.exports.categories = function(req, res){
  res.render('core/categories.ejs');
}
