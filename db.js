let mysql = require('mysql');
console.log('DB HOST', process.env.MYSQL_ROOT_HOST);
console.log('DB USER', process.env.MYSQL_USER);
console.log('DB PASSWORD', process.env.MYSQL_ROOT_PASSWORD);
console.log('DB NAME', process.env.MYSQL_DATABASE);

let userDB = mysql.createConnection({
  host: process.env.MYSQL_ROOT_HOST,
  user: process.env.MYSQL_USER,
  password: process.env.MYSQL_ROOT_PASSWORD,
  database: process.env.MYSQL_DATABASE
});
userDB.connect();

module.exports = userDB;