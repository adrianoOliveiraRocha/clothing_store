module.exports = function (application) {

  application.get('/novo_produto', function (req, res) {
    application.app.control.product.new(req, res, application);
  });

  application.post('/novo_produto', function (req, res) {
    application.app.control.product.new(req, res, application);
  });

  application.get('/exibir_produtos', function (req, res) {
    application.app.control.product.show(req, res, application);
  });

}