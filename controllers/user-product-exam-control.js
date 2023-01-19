const mysql = require('mysql');

const db = mysql.createConnection({
    user: "root",
    host: "localhost",
    password: "",
    database: "jknowledge-exam"
});

// const db = mysql.createConnection({
//     user: "jknowled_jexam",
//     host: "localhost",
//     password: "JHriAJzc6f",
//     database: "jknowled_jexam"
// });

const getUserProductAndExams = (req, res) => {
    const user_id = req.body.user_id
    db.query("SELECT amount, blueprint, category_id, detail,exam_id, id, name, pic, product_id, subject_id FROM user_product_exam INNER JOIN products ON user_product_exam.product_id = products.id WHERE user_id= ?",
        [user_id],
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.send(result)
            }
        })
}

const UserProductAndExams = (req, res) => {
    const user_id = req.body.user_id
    const product_id = req.body.product_id
    db.query("SELECT exams.exam_id, exams.exam_name, exams.exam_info, exams.exam_content, products.id as product_id, products.name, products.detail, products.blueprint, products.pic, products.category_id, products.subject_id FROM user_product_exam INNER JOIN products ON user_product_exam.product_id = products.id INNER JOIN exams ON user_product_exam.exam_id = exams.exam_id WHERE user_id=? AND product_id=?",
        [user_id, product_id],
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.send(result)
            }
        })
}

module.exports = {
    getUserProductAndExams,
    UserProductAndExams
};