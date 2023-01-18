const express = require('express')

const { getMyExams } = require('../controllers/myexam-control')

const myexamRoute = express.Router()

myexamRoute.post('/getMyexams', getMyExams)

module.exports = myexamRoute 