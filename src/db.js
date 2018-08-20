let mysql = require('mysql');
let userDB = mysql.createConnection({
  host: process.env.MYSQL_ROOT_HOST,
  user: process.env.MYSQL_USER,
  password: process.env.MYSQL_ROOT_PASSWORD,
  database: process.env.MYSQL_DATABASE
});
userDB.connect();

module.exports = userDB;