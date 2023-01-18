const express = require('express')

const {
    updateCart,
    getCart,
    getTest,
    getSelectedItem
} = require('../controllers/cart-control')

const cartRoute = express.Router()

cartRoute.post('/getCart', getCart)
cartRoute.put('/updateCart', updateCart)
cartRoute.get('/getTest', getTest)
cartRoute.post('/getSelectedItem', getSelectedItem)


module.exports = cartRoute