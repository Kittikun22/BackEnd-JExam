const mysql = require('mysql');

const db = mysql.createConnection({
    user: process.env.user,
    host: process.env.host,
    password: process.env.password,
    database: process.env.database
});

const getMyExams = (req, res) => {
    const product_id = req.body.product_id
    db.query("SELECT * FROM products WHERE id in (?)",
        [product_id],
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