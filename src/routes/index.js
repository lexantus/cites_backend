const express = require("express");
const router = express.Router();
let db = require('../db');

router.put("/cites", (req, res) => {
  res.send("PUT CITES");
});

router.post('/get', function (req, res) {
  db.query(`SELECT text, name FROM cites JOIN author ON cites.author_id = author.id`, function (err, rows) {
    if (err) throw err;
    res.json({status: 'ok', rows: rows});
  });
});

module.exports = router;
