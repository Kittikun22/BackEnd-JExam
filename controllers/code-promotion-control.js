const mysql = require('mysql');

const db = mysql.createConnection({
    user: process.env.user,
    host: process.env.host,
    password: process.env.password,
    database: process.env.database
});

const getCode = (req, res) => {
    db.query("SELECT * FROM code ",
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.json(result)
            }
        })
}

const getPromotion = (req, res) => {
    db.query("SELECT * FROM promotion ",
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.json(result)
            }
        })
}

module.exports = {
    getCode,
    getPromotion
};