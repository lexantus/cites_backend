const express = require("express");
const formidable = require("express-formidable");
const bodyParser = require('body-parser');
const router = require("./routes/index");

const app = express();

app.use(express.static('public'));

// app.use(
//   formidable({
//     uploadDir: "uploads/imgs",
//     multiples: false
//   })
// );

app.use("/cites", router);

module.exports = app;
