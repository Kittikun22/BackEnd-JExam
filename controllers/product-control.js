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
    db.query("SELECT * FROM products",
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
    db.query("SELECT * FROM products INNER JOIN category ON products.category_id=category.category_id INNER JOIN subject ON products.subject_id=subject.subject_id WHERE products.id=?", [product_id],
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