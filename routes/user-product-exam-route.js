const express = require('express')

const { 
    getUserProductAndExams,
    UserProductAndExams
 } = require('../controllers/user-product-exam-control')

const userProductAndExamsRoute = express.Router()

userProductAndExamsRoute.post('/getuserproductandexams', getUserProductAndExams)
userProductAndExamsRoute.post('/UserProductAndExams', UserProductAndExams)

module.exports = userProductAndExamsRoute