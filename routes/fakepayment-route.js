const express = require('express')

const { fakepay } = require('../controllers/fakepayment-control')

const fakepaymentRoute = express.Router()

fakepaymentRoute.post('/fakepay', fakepay)


module.exports = fakepaymentRoute