const mysql = require('mysql');

const db = mysql.createConnection({
    user: process.env.user,
    host: process.env.host,
    password: process.env.password,
    database: process.env.database
});

const fakepay = (req, res) => {
    const payment_id = req.body.payment_id
    const user_id = req.body.user_id
    const transaction = req.body.transaction
    const amount = req.body.amount
    const net_amount = req.body.net_amount
    const payment_method = req.body.payment_method
    const exams = req.body.exams
    const status = 'success'

    const examName = exams.map((val) => val.name)
    const examArr = exams.map((val) => '(' + user_id + ',' + val.exam_id + ')')

    db.query("INSERT INTO payment (payment_id, user_id, transaction, amount, net_amount, payment_method, exams,status) VALUES (?,?,?,?,?,?,?,?)",
        [payment_id, user_id, transaction, amount, net_amount, payment_method, JSON.stringify(examName), status],
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                db.query('INSERT INTO user_exams (user_id, exam_id) VALUES ' + examArr.join(','),
                    examArr,
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