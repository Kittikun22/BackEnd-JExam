const mysql = require('mysql');

const db = mysql.createConnection({
    user: process.env.user,
    host: process.env.host,
    password: process.env.password,
    database: process.env.database
});

const getProvince = (req, res) => {
    db.query("SELECT * FROM provinces ORDER BY provinces.province_order ASC", (err, result) => {
        if (err) {
            console.log(err);
        } else {
            res.send(result);
        }
    });
};

const getTermAndCondition = (req,res) => {
    db.query("SELECT title, content FROM termandcondition",(err,result) => {
        if(err){
            console.log(err);
        }else{
            res.send(result)
        }
    })
}

const getExpectation = (req,res) => {
    db.query("SELECT expectation_value FROM expectation",(err,result) => {
        if(err){
            console.log(err);
        }else{
            res.send(result)
        }
    })
}

module.exports = {
    getProvince,
    getTermAndCondition,
    getExpectation
};