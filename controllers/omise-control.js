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

var omise = require('omise')({
    'publicKey': process.env.OMISE_PUBLIC_KEY,
    'secretKey': process.env.OMISE_SECRET_KEY,
});

const checkoutCreditCard = async (req, res, next) => {
    const { email, name, amount, token } = req.body
    const user_id = req.body.user_id
    const products = req.body.products
    const payment_method = req.body.payment_method
    try {
        const customer = await omise.customers.create({
            email: email,
            description: name,
            card: token
        });

        const charge = await omise.charges.create({
            amount: amount,
            currency: "thb",
            customer: customer.id
        });

        db.query("INSERT INTO payment (user_id,transaction, amount, net_amount, payment_method, products, status) VALUES (?, ?, ?, ?, ?, ?, ?)",
            [user_id, charge.transaction, charge.amount / 100, charge.net / 100, payment_method, products, charge.status], (err, result) => {
                if (err) {
                    console.log(err);
                }
            })

        res.send({
            amount: charge.amount,
            status: charge.status
        })

    } catch (err) {
        console.log(err);
    }
    next()
};

const checkoutInternetBanking = async (req, res, next) => {
    const { amount, token } = req.body
    try {
        const charge = await omise.charges.create({
            'amount': amount,
            'source': token,
            'currency': 'thb',
            'return_uri': 'http://localhost:3000/message',
        });

        res.send({
            authorizeUri: charge.authorize_uri
        });

    } catch (err) {
        console.log(err);
    }
    next()
};

const checkoutPromptpay = async (req, res, next) => {
    const { email, name, amount, token } = req.body
    try {
        const charge = await omise.charges.create({
            'amount': amount,
            'source': token,
            'currency': 'thb',
            'return_uri': 'http://localhost:3000/message',
        });

        res.send({
            download_uri: charge.source.scannable_code.image.download_uri
        });

    } catch (err) {
        console.log(err);
    }
    next()
};

module.exports = {
    checkoutCreditCard,
    checkoutInternetBanking,
    checkoutPromptpay
}