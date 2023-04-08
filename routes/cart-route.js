const express = require('express')

const {
    updateCart,
    getCart,
    getSelectedItem,
    getExamInCart
} = require('../controllers/cart-control')

const cartRoute = express.Router()

cartRoute.post('/getCart', getCart)
cartRoute.put('/updateCart', updateCart)
cartRoute.post('/getSelectedItem', getSelectedItem)
cartRoute.post('/getExamInCart', getExamInCart)


module.exports = cartRoute