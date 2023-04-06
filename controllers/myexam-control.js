const mysql = require('mysql');

const db = mysql.createConnection({
    user: process.env.user,
    host: process.env.host,
    password: process.env.password,
    database: process.env.database
});

const getMyExams = (req, res) => {
    const exam_id = req.body.exam_id
    db.query("SELECT * FROM exams WHERE id in (?)",
        [exam_id],
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.json(result)
            }
        })
}

module.exports = {
    getMyExams
};