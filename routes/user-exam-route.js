const express = require('express')

const { 
    getUserExams,
    UserExam
 } = require('../controllers/user-exam-control')

const userAndExamsRoute = express.Router()

userAndExamsRoute.post('/getUserExams', getUserExams)
userAndExamsRoute.post('/UserExam', UserExam)

module.exports = userAndExamsRoute