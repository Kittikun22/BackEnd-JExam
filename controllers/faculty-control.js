const mysql = require('mysql');

const db = mysql.createConnection({
    user: process.env.user,
    host: process.env.host,
    password: process.env.password,
    database: process.env.database
});

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