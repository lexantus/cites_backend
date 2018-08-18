const express = require("express");
const formidable = require("express-formidable");
const router = require("./routes");

const app = express();

app.use(
  formidable({
    uploadDir: "uploads/imgs",
    multiples: false
  })
);
app.use("/", router);

app.get("/", (req, res) => res.send("Hello world"));

app.listen(3003, () => console.log("Run cites_backend on port:3003"));
