const express = require('express')

const {
    updateCart,
    getCart,
    getTest,
    getSelectedItem,
    getExamInCart
} = require('../controllers/cart-control')

const cartRoute = express.Router()

cartRoute.post('/getCart', getCart)
cartRoute.put('/updateCart', updateCart)
cartRoute.get('/getTest', getTest)
cartRoute.post('/getSelectedItem', getSelectedItem)
cartRoute.post('/getExamInCart', getExamInCart)


module.exports = cartRoute