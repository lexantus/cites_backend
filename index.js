const express = require("express");
const formidable = require("express-formidable");
const bodyParser = require('body-parser');
const routerLogin = require("./login");
const routerCites = require("./routes/cites");
const routerAuthors = require("./routes/authors");

const app = express();

app.use(express.static('public'));

// app.use(
//   formidable({
//     uploadDir: "uploads/imgs",
//     multiples: false
//   })
// );

app.use(bodyParser.urlencoded({
  extended: true
}));
app.use("/", routerLogin);
app.use("/authors", routerAuthors);
app.use("/cites", routerCites);

module.exports = app;
