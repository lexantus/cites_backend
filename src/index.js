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

app.get("/", (req, res) => res.send("Hello world11223!!!"));

app.listen(3003, () => console.log("Running cites_backend on port:3003"));
