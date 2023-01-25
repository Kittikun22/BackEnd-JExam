const mysql = require("mysql");

const db = mysql.createConnection({
  user: "root",
  host: "localhost",
  password: "",
  database: "test",
});

const saveAnswer = (req, res) => {
  const user_id = req.body.user_id;
  const exam_id = req.body.exam_id;
  const answer = req.body.answer;   
  const point = req.body.point;
  const catpoint = req.body.catpoint;
  const score = req.body.score;

  db.query(
    "INSERT INTO exams_meta (user_id, exam_id, answer, point, categorypoint, score) VALUES ( ?, ?, ?, ?, ?, ?)",
    [user_id, exam_id, answer, point, catpoint, score],
    (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.send(result);
      }
    }
  );
};

const getAnswer = (req, res) => {
  const user_id = req.body.user_id;
  const exam_id = req.body.exam_id;
  db.query(
    "SELECT * FROM exams_meta WHERE user_id= ? AND exam_id= ?",
    [user_id, exam_id],
    (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.send(result);
      }
    }
  );
};

const getPoint = (req, res) => {
  const user_id = req.body.user_id;
  const exam_id = req.body.exam_id;
  db.query(
    "SELECT * FROM exams_meta WHERE user_id= ? AND exam_id= ?",
    [user_id, exam_id],
    (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.send(result);
      }
    }
  );
};

const getProduct = (req, res) => {
  const user_id = req.body.user_id;
  db.query(
    "SELECT products FROM payment WHERE user_id= ?",
    [user_id],
    (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.send(result);
      }
    }
  );
};

const getTakingAnalysis = (req, res) => {
  const user_id = req.body.user_id;
  const exam_id = req.body.exam_id;
  db.query(
    "SELECT answer FROM exams_meta WHERE user_id= ? AND exam_id= ?",
    [user_id, exam_id],
    (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.send(result);
      }
    }
  );
};

const getTaking = (req, res) => {
  const user_id = req.body.user_id;
  const exam_id = req.body.exam_id;
  db.query(
    "SELECT exam_id FROM exams_meta WHERE user_id= ? ORDER BY exam_id ASC",
    [user_id],
    (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.send(result);
      }
    }
  );
};

const getTakingAnswer = (req, res) => {
  const user_id = req.body.user_id;
  const exam_id = req.body.exam_id;
  db.query(
    "SELECT answer FROM exams_meta WHERE user_id= ? AND exam_id= ?",
    [user_id, exam_id],
    (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.send(result);
      }
    }
  );
};

const getHistory = (req, res) => {
  const user_id = req.body.user_id;
  db.query(
    "SELECT * FROM exams_meta WHERE user_id= ?",
    [user_id],
    (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.send(result);
      }
    }
  );
};

const getExamscript = (req, res) => {
  const exam_id = req.body.exam_id;
  db.query(
    "SELECT questioninfo FROM examscript WHERE exam_id= ?",
    [exam_id],
    (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.send(result);
      }
    }
  );
};

module.exports = {
  saveAnswer,
  getAnswer,
  getProduct,
  getTaking,
  getTakingAnswer,
  getTakingAnalysis,
  getHistory,
  getPoint,
  getExamscript
};
