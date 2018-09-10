const express = require("express");
const db = require("../db");
const router = express.Router();

router.get("/", (req, res) => {
  db.query(
    `SELECT text AS "cite", name AS "author" FROM cites JOIN author ON cites.author_id = author.id`,
    (err, rows) => {
      if (err) throw err;
      res.json(rows);
    }
  );
});

router.post("/create", function(req, res) {
  // db.query(`INSERT INTO cites (author_id, text) VALUES (${req.body.author}, "${req.body.cite}")`, function (err) {
  //   if (err) throw err;
  //   res.json({status: 'ok', message: 'Cite is successfully added', req: req.body});
  // });
  console.log("HEELLOOO WORLD");
  res.send("Good");
});

module.exports = router;
