const express = require("express");
const formidable = require("express-formidable");
const router = require("./routes/index");
const bodyParser = require("body-parser");

const app = express();
app.use(express.static('public'));
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

app.use(
  formidable({
    uploadDir: "uploads/imgs",
    multiples: false
  })
);

app.use("/cites", router);

module.exports = app;