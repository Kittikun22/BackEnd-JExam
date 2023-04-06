const mysql = require('mysql');

const db = mysql.createConnection({
    user: process.env.user,
    host: process.env.host,
    password: process.env.password,
    database: process.env.database
});

const getUserExams = (req, res) => {
    const user_id = req.body.user_id
    db.query("SELECT user_exams.exam_id, name, detail, pic, category_id, subject_id FROM user_exams INNER JOIN exams ON user_exams.exam_id = exams.exam_id WHERE user_id = ?",
        [user_id],
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.send(result)
            }
        })
}

const UserExam = (req, res) => {
    const user_id = req.body.user_id
    const exam_id = req.body.exam_id

    db.query("SELECT * FROM user_exams INNER JOIN exams ON user_exams.exam_id = exams.exam_id WHERE user_id = ? AND user_exams.exam_id = ?",
        [user_id, exam_id],
        (err, result) => {
            if (err) {
                console.log(err);
            }
            if (result.length == 0) {
                res.send({ message: 'error' })
            } else {
                res.send({ message: "ok", result: result })
            }
        })

}

module.exports = {
    getUserExams,
    UserExam
};