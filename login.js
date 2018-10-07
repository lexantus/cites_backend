const express = require("express");
const bcrypt = require("bcrypt");
const sha1 = require("sha1");
const jwt = require("jsonwebtoken");
const db = require("./db");
const redis = require("redis");
const redisClient = redis.createClient();
const router = express.Router();

const handleAuthToken = (token, res) => {
  return redisClient.get(token, (err, reply) => {
    if (err || !reply) {
      return res.status(400).json({ success: true, message: "Unauthorithed" });
    }
    return res.json({ success: true, id: reply });
  });
};

const createSession = user => {
  const { name, id } = user;
  const token = jwt.sign({ name }, process.env.JWT_SECRET, {
    expiresIn: "2 days"
  });
  return redisClient
    .set(token, id)
    .then(() => ({ success: true, id, token }))
    .catch(err => {
      throw err;
    });
};

const signin = (req, res) => {
  const { login, password } = req;
  if (!login || !password)
    res
      .status(400)
      .json({ success: false, message: "Need login and password" });

  try {
    db.query(
      `SELECT id, name, password FROM users WHERE name="${login}"`,
      (err, rows) => {
        if (err) throw err;
        const isValid = bcrypt.compareSync(password, rows[0].password);
        if (isValid) {
          const { id, name } = rows[0];
          createSession({ id, name })
            .then(user => {
              if (user.success) {
                res.json(user);
              } else {
                throw new Error("Session creation fails");
              }
            })
            .catch(err => {
              throw err;
            });
        } else {
          throw new Error("Wrong username/password");
        }
      }
    );
  } catch (e) {
    console.log("[LOGIN ERROR]", e);
    res.status(400).json({ success: false, message: e.message });
  }
};

const checkUserNotExist = login => {
  return new Promise((resolve, reject) => {
    db.query(`SELECT * FROM users WHERE name="${login}"`, (err, rows) => {
      if (err) return reject(err);
      if (!rows.length) resolve();
      return reject(new Error("User already exist"));
    });
  });
};

router.post("/register", (req, res) => {
  console.log("body", req.body);
  const { login, password } = req.body;
  console.log("LOGIN ", login, " PASSWORD ", password);
  if (!login || !password) {
    res
      .status(400)
      .json({ success: false, message: "Need login and password to register" });
    return;
  }

  checkUserNotExist(login)
    .then(() => {
      db.query(
        `INSERT INTO users (name, password) VALUES ("${login}", UNHEX("${sha1(
          password
        )}"))`,
        (err, row) => {
          if (err) throw err;
          res.json({ success: true, id: row.insertId });
        }
      );
    })
    .catch(err => {
      res.status(400).send({ success: false, message: err.message });
    });
});

router.post("/signin", (req, res) => {
  const { authorization: token } = req.headers;
  if (token) {
    handleAuthToken(token, res);
  } else {
    signin(req, res);
  }
});

module.exports = router;
