const express = require("express");
const router = express.Router();
const db = require('../db');

router.get('/cites', function (req, res) {
  db.query(`SELECT text AS "cite", name AS "author" FROM cites JOIN author ON cites.author_id = author.id`, function (err, rows) {
    if (err) throw err;
    console.log('rows', rows);
    res.json(rows);
  });
});

module.exports = router;
