let mysql = require('mysql');
let config = require('./config');
let userDB = mysql.createConnection({
  host: config.host,
  user: config.user,
  password: config.password,
  database: config.database
});
userDB.connect();

module.exports = userDB;