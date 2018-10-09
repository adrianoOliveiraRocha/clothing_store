class User {

  constructor(connection){
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

}

module.exports = function () {
  return User;
}