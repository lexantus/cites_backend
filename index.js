const express = require("express");
const formidable = require("express-formidable");
const router = require("./routes/index");

const app = express();
app.use(express.static('public'));

app.use(
  formidable({
    uploadDir: "uploads/imgs",
    multiples: false
  })
);

app.use("/", router);

module.exports = app;