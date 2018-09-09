const express = require("express");
const formidable = require("express-formidable");
const router = require("./routes/index");

const app = express();

app.all("/*", function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Cache-Control, Pragma, Origin, Authorization, Content-Type, X-Requested-With");
  res.header("Access-Control-Allow-Methods", "GET, PUT, POST");
  return next();
});

app.use(
  formidable({
    uploadDir: "uploads/imgs",
    multiples: false
  })
);

app.use("/", router);

app.get("/", (req, res) => res.send("Hello world11223!!!"));

module.exports = app;