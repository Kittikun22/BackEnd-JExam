const express = require('express')

const { 
    getUserProductAndExams,
    checkUserProductAndExams
 } = require('../controllers/user-product-exam-control')

const userProductAndExamsRoute = express.Router()

userProductAndExamsRoute.post('/getuserproductandexams', getUserProductAndExams)
userProductAndExamsRoute.post('/checkUserProductAndExams', checkUserProductAndExams)

module.exports = userProductAndExamsRoute