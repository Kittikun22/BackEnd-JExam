const mysql = require('mysql');

const db = mysql.createConnection({
    user: "root",
    host: "localhost",
    password: "",
    database: "jknowledge-exam"
});

const fakepay = (req, res) => {
    const payment_id = req.body.payment_id
    const user_id = req.body.user_id
    const transaction = req.body.transaction
    const amount = req.body.amount
    const net_amount = req.body.net_amount
    const payment_method = req.body.payment_method
    const products = req.body.products
    const status = 'success'

    const productName = products.map((val) => val.name)
    const productArr = products.map((val) => '(' + user_id + ',' + val.exam_id + ',' + val.id + ')')

    db.query("INSERT INTO payment (payment_id, user_id, transaction, amount, net_amount, payment_method, products,status) VALUES (?,?,?,?,?,?,?,?)",
        [payment_id, user_id, transaction, amount, net_amount, payment_method, JSON.stringify(productName), status],
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                db.query('INSERT INTO user_product_exam (user_id, exam_id, product_id) VALUES ' + productArr.join(','),
                    productArr,
                    (err, result) => {
                        if (err) {
                            console.log(err);
                        } else {
                            res.send({ message: 'success' })
                        }
                    })
            }
        })
}

module.exports = {
    fakepay
};