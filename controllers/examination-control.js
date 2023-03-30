const mysql = require('mysql');

const db = mysql.createConnection({
    user: process.env.user,
    host: process.env.host,
    password: process.env.password,
    database: process.env.database
});

const submitExam = (req, res) => {
    const user_id = req.body.user_id
    const exam_id = req.body.exam_id
    const answer = req.body.answer
    const score = req.body.score
    const fullScore = req.body.fullScore
    const timeSpend = req.body.timeSpend

    db.query("INSERT INTO exams_meta (user_id, exam_id, answer, score, fullScore, timeSpend) VALUES (?,?,?,?,?,?)",
        [user_id, exam_id, answer, score, fullScore, timeSpend],
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.send({ message: 'success' })
            }
        })
}
    

module.exports = {
    submitExam
};