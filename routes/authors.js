const express = require("express");
const db = require("../db");
const router = express.Router();

router.get("/", (req, res) => {
    db.query('SELECT * FROM author', function (err, rows) {
        if (err) throw err;
        console.log('ROOWS', rows);
        res.json(rows);
    });
});

module.exports = router;
