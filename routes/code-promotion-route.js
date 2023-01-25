const express = require('express')

const {
    getPromotion,
    getCode,
} = require('../controllers/code-promotion-control')

const codePromotionRoute = express.Router()

codePromotionRoute.get('/getCode', getCode)
codePromotionRoute.get('/getPromotion', getPromotion)

module.exports = codePromotionRoute