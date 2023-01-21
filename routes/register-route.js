const express = require('express')

const { getProvince,
    getTermAndCondition,
    getExpectation } = require('../controllers/register-control')

const registerRoute = express.Router()

registerRoute.get('/getProvince', getProvince)
registerRoute.get('/getTermAndCondition', getTermAndCondition)
registerRoute.get('/getExpectation', getExpectation)


module.exports = registerRoute