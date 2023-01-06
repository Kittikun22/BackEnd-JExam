const express = require('express')

const {
    updateCart,
    getCart,
    getTest
} = require('../controllers/cart-control')

const cartRoute = express.Router()

cartRoute.post('/getCart', getCart)
cartRoute.put('/updateCart', updateCart)
cartRoute.get('/getTest', getTest)


module.exports = cartRoute