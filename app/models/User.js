class User {

  constructor(connection=null){
    this._connection = connection;
  }  

  save(data, callback){
    let stm = `insert into user (email, password) 
    values('${data['email']}', '${data['pwd']}')`;
    this._connection.query(stm, callback);
  }

  auth(data, callback){
    let stm = `select * from user 
    where email = '${data.email}' and password = '${data.pwd}'`;
    this._connection.query(stm, callback);
  }

  static update(connection){
    return 'i am programmer but i need speak english too!'
  }

}

module.exports = function () {
  return User;
}