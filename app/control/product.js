module.exports.new = function(req, res, application){
  
  var msg = req.session.message;
  req.session.message = '';

  if (req.method == 'GET') {
    res.render('admin/product/new.ejs', 
    {
      msg: msg,
      validation: {},
      data: {}
    });
  } else {
    res.send('post');
  }
}