const express = require('express')

const { getProvince } = require('../controllers/register-control')

const registerRoute = express.Router()

registerRoute.get('/getProvince', getProvince)


module.exports = registerRoute