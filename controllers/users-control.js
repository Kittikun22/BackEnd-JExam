const mysql = require('mysql');
const bcrypt = require('bcrypt');
const saltRounds = 10;
const jwt = require('jsonwebtoken');
const secret = 'Jknowledge-login-nodejs-login-21-10-22'

const db = mysql.createConnection({
    user: process.env.user,
    host: process.env.host,
    password: process.env.password,
    database: process.env.database
});

const createUser = (req, res) => {
    const phone = req.body.phone;
    const password = req.body.password;
    const fname = req.body.fname;
    const lname = req.body.lname;
    const email = req.body.email;
    const user_role = req.body.user_role;
    const role_id = req.body.role_id;
    const school = req.body.school;
    const province = req.body.province;
    const expectation = req.body.expectation;
    const grade = req.body.grade;
    const parentJob = req.body.parentJob;
    const termCondition = req.body.termCondition;
    const cart = req.body.cart;

    bcrypt.hash(password, saltRounds, (err, hashPassword) => {
        db.query("INSERT INTO users (phone, password, fname, lname, email, user_role, role_id) VALUES (?,?,?,?,?,?,?)",
            [phone, hashPassword, fname, lname, email, user_role, role_id],
            (err, result) => {
                if (err) {
                    console.log(err);
                } else {
                    db.query("INSERT INTO users_meta (user_id, grade, school, province, expectation, parentJob,cart, termCondition) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?)"
                        , [result.insertId, grade, school, province, expectation, parentJob, cart, termCondition]
                        , (err, resmeta) => {
                            if (err) {
                                console.log(err);
                            } else {
                                res.send(resmeta)
                                console.log(resmeta);
                            }
                        })
                }
            }

        );
    });
};

const Signin = (req, res) => {
    const phone = req.body.phone;
    const password = req.body.password;

    db.query("SELECT users.user_id, users.password, users.phone, users.fname, users.lname, users.email, users.user_pic, users_meta.grade, users_meta.school, users_meta.province, users_meta.dream1, users_meta.dream2, users_meta.cart FROM users INNER JOIN users_meta ON users.user_id=users_meta.user_id INNER JOIN user_role ON users.role_id=user_role.role_id WHERE users.phone=?", [phone],
        (err, result) => {
            if (err) {
                res.json({ status: 'error', message: err });
            }
            if (result.length == 0) {
                res.json({ status: 'error', message: 'ไม่พบเบอร์โทรศัพท์!' })
            }
            if (result.length > 0) {
                bcrypt.compare(password, result[0].password, (err, isLogin) => {
                    if (isLogin) {
                        const token = jwt.sign({
                            phone: result[0].phone,
                            user_id: result[0].user_id,
                            role_id: result[0].role_id,
                            fname: result[0].fname,
                            lname: result[0].lname,
                            email: result[0].email,
                            user_pic: result[0].user_pic,
                            grade: result[0].grade,
                            school: result[0].school,
                            province: result[0].province,
                            dream1: result[0].dream1,
                            dream2: result[0].dream2
                        }, secret);
                        const userInfo = [{
                            phone: result[0].phone,
                            user_id: result[0].user_id,
                            role_id: result[0].role_id,
                            fname: result[0].fname,
                            lname: result[0].lname,
                            email: result[0].email,
                            user_pic: result[0].user_pic,
                            grade: result[0].grade,
                            school: result[0].school,
                            province: result[0].province,
                            dream1: result[0].dream1,
                            dream2: result[0].dream2,
                        }]
                        const cart = result[0].cart
                        res.json({ status: 'ok', message: userInfo, token, cart })
                    } else {
                        res.json({ status: 'error', message: 'รหัสผ่านไม่ถูกต้อง' })
                    }
                });
            }
        })
}

const phoneAvailable = (req, res) => {

    const phone = req.body.phone;

    db.query("SELECT phone FROM users WHERE phone= ?", phone, (err, result) => {
        if (err) {
            console.log(err);
        }
        if (result.length > 0) {
            res.json({ status: 'error', message: 'เบอร์โทรศัพท์นี้ถูกใช้งานไปแล้ว' })
        }
        else {
            res.json({ status: 'ok', message: 'สามารถใช้เบอร์โทรศัพท์นี้ได้' })

        }
    })
}

const authToken = (req, res) => {
    try {
        const token = req.body.headers.Authorization.split(' ')[1];
        const decoded = jwt.verify(token, secret);
        res.send({ status: 'ok', decoded });
    } catch (err) {
        res.send({ status: 'error', message: err.message })
    }
}

const getAUser = (req, res) => {
    const user_id = req.params.user_id;
    db.query("SELECT * FROM users INNER JOIN users_meta ON users.user_id=users_meta.user_id INNER JOIN user_role ON users.role_id=user_role.role_id WHERE users.user_id=?", user_id, (err, result) => {
        if (err) {
            console.log(err);
        } else {
            res.send(result)
        }
    })
}

const updateAUser = (req, res) => {
    const user_id = req.body.user_id;
    const fname = req.body.fname;
    const lname = req.body.lname;
    const email = req.body.email;
    const user_pic = req.body.user_pic;

    db.query("UPDATE users SET fname = ? , lname = ? , email = ?, user_pic = ? WHERE user_id =?",
        [fname, lname, email, user_pic, user_id],
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.send(result);
            }
        })
}

const updateDreamFac = (req, res) => {
    const user_id = req.body.user_id
    const dream1 = req.body.dream1
    const dream2 = req.body.dream2
    const major1 = req.body.major1
    const major2 = req.body.major2

    db.query("UPDATE users_meta SET dream1 = ?, dream2 = ?, major1 = ? , major2 = ? WHERE user_id = ?",
        [dream1, dream2, major1, major2, user_id],
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.send(result)
            }
        })
}

const updateRoleUser = (req, res) => {
    const user_id = req.body.user_id;
    const role_id = req.body.role_id;
    db.query("UPDATE users SET role_id = ? WHERE user_id = ?",
        [role_id, user_id],
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.send(result);
            }
        });
};

const deleteUser = (req, res) => {
    const id = req.params.id;
    db.query("DELETE FROM users WHERE user_id = ?", id, (err, result) => {
        if (err) {
            console.log(err);
        } else {
            res.send(result);
        }
    });
};

const getProfilePic = (req, res) => {
    db.query("SELECT * FROM profile_picture", (err, result) => {
        if (err) {
            console.log(err);
        } else {
            res.send(result);
        }
    });
};

const getAPassword = (req, res) => {
    const id = req.body.user_id
    const password = req.body.password

    db.query("SELECT password From users WHERE user_id=?", id, (err, result) => {
        if (err) {
            console.log(err);
        } else {
            bcrypt.compare(password, result[0].password, (err, isSuccess) => {
                if (isSuccess) {
                    res.json({ status: 'ok', message: 'รหัสผ่านถูกต้อง' })
                } else {
                    res.json({ status: 'error', message: 'รหัสผ่านไม่ถูกต้อง' })
                }
            });
        }
    })
}

const ChangePassword = (req, res) => {
    const id = req.body.user_id
    const newPassword = req.body.newPassword

    bcrypt.hash(newPassword, saltRounds, (err, hashPassword) => {
        db.query("UPDATE users SET password = ? WHERE user_id = ?", [hashPassword, id], (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.json({ status: 'ok', message: 'เปลี่ยนรหัสผ่านสำเร็จ' })
            }
        })
    })
}

const ForgotPassword = (req, res) => {
    const phone = req.body.phone;
    const password = req.body.password;

    bcrypt.hash(password, saltRounds, (err, hashPassword) => {
        db.query("UPDATE users SET password = ? WHERE phone =?", [hashPassword, phone], (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.send(result);
            }
        })
    })
}

const paymentHistory = (req, res) => {
    const user_id = req.body.user_id

    db.query('SELECT payment_id, transaction, amount, net_amount, payment_method, products, status, paid_at FROM payment WHERE user_id = ? ORDER BY paid_at DESC',
        user_id,
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.send(result)
            }
        }
    )
}

module.exports = {
    createUser,
    updateRoleUser,
    deleteUser,
    Signin,
    authToken,
    getAUser,
    updateAUser,
    phoneAvailable,
    getProfilePic,
    ForgotPassword,
    getAPassword,
    ChangePassword,
    updateDreamFac,
    paymentHistory
};