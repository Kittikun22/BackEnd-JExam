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

const getExamInCart = (req, res) => {
    const exam_id = req.body.exam_id;

    if (exam_id?.length === 0) {
        //
    } else {
        db.query(
            "SELECT exam_id , name, amount,  detail, blueprint, pic, category_id, subject_id FROM exams WHERE exam_id in (?)",
            [exam_id],
            (err, result) => {
                if (err) {
                    console.log(err);
                } else {
                    res.send(result);
                }
            }
        );
    }
};

module.exports = {
    updateCart,
    getCart,
    getSelectedItem,
    getExamInCart
};