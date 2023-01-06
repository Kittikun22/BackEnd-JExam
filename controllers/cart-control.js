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

const getCart = (req, res) => {
    const user_id = req.body.user_id
    db.query("SELECT cart FROM users_meta WHERE user_id = ?",
        [user_id],
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                console.log(result[0].cart);
                res.json(result)
            }
        })
}

const updateCart = (req, res) => {
    const user_id = req.body.user_id;
    const updateCart = req.body.updateCart
    db.query("UPDATE users_meta SET cart = ? WHERE user_id = ?",
        [updateCart, user_id],
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.send(result);
            }
        });
};

const getTest = (req, res) => {
    db.query("SELECT exam, info FROM test WHERE test_id = 1",
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.send(result[0])
            }
        })
}

module.exports = {
    updateCart,
    getCart,
    getTest
};