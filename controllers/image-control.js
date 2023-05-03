const mysql = require('mysql');
const fs = require('fs');

const db = mysql.createConnection({
    user: process.env.user,
    host: process.env.host,
    password: process.env.password,
    database: process.env.database
});


const uploadSlip = (req, res) => {
    var host = req.headers.host;
    var protocol = req.protocol

    res.send({ message: 'upload successfully', image_src: protocol + '://' + host + '/' + req.file.path })
}

const submitSlip = (req, res) => {
    const image_src = req.body.image_src
    const exams = req.body.exams
    const user_id = req.body.user_id
    const amount = req.body.amount
    const net_amount = req.body.net_amount
    const status = "รออนุมัติ"

    const examIdArr = exams.map((val) => val.exam_id)

    db.query("INSERT INTO slip (user_id, amount, net_amount, exams, status, image_src) VALUES (?,?,?,?,?,?)",
        [user_id, amount, net_amount, JSON.stringify(examIdArr), status, image_src],
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.send({ message: 'successfully' })
            }
        })
}

const uploadExamPic = (req, res) => {
    var host = req.headers.host;
    var protocol = req.protocol

    res.send({ message: 'upload successfully', image_src: protocol + '://' + host + '/' + req.file.path })
}

const uploadQuestionPic = (req, res) => {
    var host = req.headers.host;
    var protocol = req.protocol

    res.send({ message: 'upload successfully', image_src: protocol + '://' + host + '/' + req.file.path })
}

module.exports = {
    uploadSlip,
    submitSlip,
    uploadExamPic,
    uploadQuestionPic
}