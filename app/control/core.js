module.exports.index = function(req, res){
  console.log(req.session);
  
  if (req.session.loged) {
    console.log('loged');    
  } else {
    console.log('no loged');
  }
  res.render('core/index.ejs');

}

module.exports.contact = function(req, res){
  console.log('contact');  
  res.render('core/contact.ejs');
}

module.exports.categories = function(req, res){
  console.log('categories tes');  
  res.render('core/categories.ejs');
}

module.exports.single = function(req, res){
  console.log('single');
  res.render('core/single.ejs');
}
