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