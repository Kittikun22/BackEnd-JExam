require('dotenv').config()
const express = require('express')
const { body, validationResult } = require('express-validator');

const { RequestOtp,
    VerifyOtp } = require('../controllers/otp-control')

const otpRoute = express.Router()

otpRoute.post('/request-otp', body('phone_number').isMobilePhone('th-TH'), RequestOtp)
otpRoute.post('/verify-otp', body('token').notEmpty(), body('otp_code').notEmpty(), VerifyOtp)

module.exports = otpRoute