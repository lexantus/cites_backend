const express = require("express");
const bodyParser = require('body-parser');
const textParser = bodyParser.text();
const db = require("../db");
const router = express.Router();

router.get("/", (req, res) => {
  db.query(`SELECT text AS "cite", name AS "author" FROM cites JOIN author ON cites.author_id = author.id`,
    (err, rows) => {
      if (err) throw err;
      res.json(rows);
    }
  );
});

router.post("/create", textParser, (req, res) => {
  const postParams = JSON.parse(req.body);
  db.query(`INSERT INTO cites (author_id, text) VALUES (${postParams.author.id}, "${postParams.cite}")`, err => {
    if (err) throw err;
    res.json({status: 'ok', message: 'Cite is successfully added', req: postParams});
  });
});

router.post("/update", (req, res) => {
  res.send("HELLO UPDATE");
});

module.exports = router;
