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

const getAllProduct = (req, res) => {
    db.query("SELECT * FROM product_exam INNER JOIN products ON product_exam.product_id = products.id",
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.json(result)
            }
        })
}

const getProduct = (req, res) => {
    const product_id = req.params.product_id
    db.query("SELECT product_id, exams.exam_id, exam_info, exam_content, name, amount, detail, blueprint, pic, subject_name, category_name FROM product_exam INNER JOIN exams ON product_exam.exam_id=exams.exam_id INNER JOIN products ON product_exam.product_id=products.id INNER JOIN subject ON products.subject_id=subject.subject_id INNER JOIN category ON products.category_id=category.category_id WHERE product_exam.product_id=?", [product_id],
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.json(result)
            }
        })
}

const getProductInCart = (req, res) => {
    const product_id = req.body.product_id
    db.query("SELECT * FROM product_exam INNER JOIN products ON product_exam.product_id = products.id WHERE product_id in (?)",
        [product_id],
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.json(result)
            }
        })
}

const updateSelectItem = (req, res) => {
    const user_id = req.body.user_id
    const itemSelected = req.body.itemSelected

    db.query("UPDATE users_meta SET itemSelected = ? WHERE user_id =? ",
        [itemSelected, user_id],
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.send(result)
            }
        })
}

const getTGAT = (req, res) => {
    db.query("SELECT * FROM products WHERE category_id = 1",
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.json(result)
            }
        })
}

const getTPAT = (req, res) => {
    db.query("SELECT * FROM products WHERE category_id = 2",
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.json(result)
            }
        })
}

const getALEVEL = (req, res) => {
    db.query("SELECT * FROM products WHERE category_id = 3",
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.json(result)
            }
        })
}

const getNETSAT = (req, res) => {
    db.query("SELECT * FROM products WHERE category_id = 4",
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.json(result)
            }
        })
}

module.exports = {
    getAllProduct,
    getProductInCart,
    getTGAT,
    getTPAT,
    getALEVEL,
    getNETSAT,
    getProduct,
    updateSelectItem
};