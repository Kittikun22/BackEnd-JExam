const mysql = require("mysql");

const db = mysql.createConnection({
  user: process.env.user,
  host: process.env.host,
  password: process.env.password,
  database: process.env.database,
});

const getExamAnswer = (req, res) => {
  const user_id = req.body.user_id;
  const product_id = req.body.product_id;
  db.query(
    "SELECT * FROM user_product_exam  INNER JOIN product_exam ON user_product_exam.product_id = product_exam.product_id INNER JOIN exams ON exams.exam_id = product_exam.exam_id WHERE user_id=? AND user_product_exam.product_id = ?",
    [user_id, product_id],
    (err, result) => {
      if (err) {
        console.log(err);
      }
      if (result.length == 0) {
        res.send({ message: "error" });
      } else {
        db.query(
          "SELECT product_exam.product_id, product_exam.exam_id, exam_name, exam_info, exam_content, products.pic FROM product_exam INNER JOIN exams ON product_exam.exam_id = exams.exam_id INNER JOIN products ON product_exam.product_id = products.product_id WHERE product_exam.product_id =?",
          [product_id],
          (err, examresult) => {
            if (err) {
              console.log(err);
            } else {
              res.send({ message: "ok", result: examresult });
            }
          }
        );
      }
    }
  );
};

const getAnswered = (req, res) => {
  const exam_id = req.body.exam_id;
  const user_id = req.body.user_id;

  db.query(
    "SELECT answer FROM exams_meta WHERE user_id =? AND exam_id = ?",
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

module.exports = {
  getExamAnswer,
  getAnswered
};
