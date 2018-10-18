class Product {

  constructor(connection = null) {
    this._connection = connection;
  }

  save(data, callback) {
    let stm = `insert into product 
    (title, description, price, promotional_price, color, size, quantity, 
      delivery_free, likes, category)
      values('${data.title}', '${data.description}', ${data.price}, 
      ${data.promotional_price}, '${data.color}', '${data.size}', 
      ${data.quantity}, ${data.delivery_free}, ${data.likes}, 
      ${data.category})
      )`;
    this._connection.query(stm, callback);
  }

  show(callback) {
    let stm = `select * from product`;
    this._connection.query(stm, callback);
  }

}

module.exports = function () {
  return Product;
}