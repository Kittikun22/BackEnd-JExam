const mysql = require('mysql');

const db = mysql.createConnection({
    user: process.env.user,
    host: process.env.host,
    password: process.env.password,
    database: process.env.database
});

const getCart = (req, res) => {
    const user_id = req.body.user_id
    db.query("SELECT cart FROM users_meta WHERE user_id = ?",
        [user_id],
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.json(result)
            }
        })
}

const getSelectedItem = (req, res) => {
    const user_id = req.body.user_id
    db.query("SELECT itemSelected FROM users_meta WHERE user_id = ?",
        [user_id],
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
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
    getTest,
    getSelectedItem
};