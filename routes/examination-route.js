const express = require('express')

const {
    submitExam
} = require('../controllers/examination-control')

const examinationRoute = express.Router()

examinationRoute.post('/submitExam', submitExam)

module.exports = examinationRoute