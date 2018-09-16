const express = require("express");
const bodyParser = require('body-parser');
const textParser = bodyParser.text();
const db = require("../db");
const router = express.Router();

const getCites = (res) => {
    db.query(`SELECT cites.id, text AS "cite", name AS "author" FROM cites JOIN author ON cites.author_id = author.id ORDER BY cites.id DESC`,
      (err, rows) => {
          if (err) throw err;
          res.json(rows);
      }
    );
};

router.get("/", (req, res) => {
    getCites(res);
});

router.post("/create", textParser, (req, res) => {
  const postParams = JSON.parse(req.body);
  try {
      db.query(`INSERT INTO cites (author_id, text) VALUES (${postParams.author.id}, "${postParams.cite}")`, err => {
          if (err) throw err;
      });
  } catch (e) {
      console.log('ERROR FOR /create is ', e)
  } finally {
      getCites(res);
  }
});

router.post("/update", (req, res) => {
  res.send("HELLO UPDATE");
});

module.exports = router;
