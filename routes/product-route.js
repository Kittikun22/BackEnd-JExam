const express = require('express')

const {
    getAllProduct,
    getProductInCart,
    getTGAT,
    getTPAT,
    getALEVEL,
    getNETSAT,
    getProduct,
    updateSelectItem
} = require('../controllers/product-control')

const productRoute = express.Router()

productRoute.get('/getAllProduct', getAllProduct)
productRoute.post('/getProductInCart', getProductInCart)
productRoute.get('/getTGAT', getTGAT)
productRoute.get('/getTPAT', getTPAT)
productRoute.get('/getALEVEL', getALEVEL)
productRoute.get('/getNETSAT', getNETSAT)
productRoute.get('/getProduct/:product_id', getProduct)
productRoute.put('/updateSelectItem', updateSelectItem)

module.exports = productRoute