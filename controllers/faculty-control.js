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

const getFaculty = (req, res) => {
    db.query("SELECT * FROM faculty ",
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.json(result)
            }
        })
}

const getMajor = (req, res) => {
    const faculty_id = req.body.faculty_id
    db.query("SELECT * FROM major WHERE faculty_id = ?",
        [faculty_id],
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.json(result)
            }
        })
}

module.exports = {
    getFaculty,
    getMajor
};