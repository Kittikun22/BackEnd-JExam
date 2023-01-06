const express = require('express')

const { checkoutCreditCard,
    checkoutInternetBanking,
    checkoutPromptpay } = require('../controllers/omise-control')

const omiseRoute = express.Router()

omiseRoute.post('/checkout-credit-card', checkoutCreditCard)
omiseRoute.post('/checkout-internet-banking', checkoutInternetBanking)
omiseRoute.post('/checkout-promptpay', checkoutPromptpay)

module.exports = omiseRoute 