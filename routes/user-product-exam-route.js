const express = require('express')

const { 
    getUserProductAndExams,
    UserProduct
 } = require('../controllers/user-product-exam-control')

const userProductAndExamsRoute = express.Router()

userProductAndExamsRoute.post('/getuserproductandexams', getUserProductAndExams)
userProductAndExamsRoute.post('/UserProduct', UserProduct)

module.exports = userProductAndExamsRoute