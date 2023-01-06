require('dotenv').config()
const thaibulksmsApi = require('thaibulksms-api')
const { body, validationResult } = require('express-validator');

const options = {
    apiKey: process.env.OTP_KEY,
    apiSecret: process.env.OTP_SECRET,
}

const otp = thaibulksmsApi.otp(options)

const RequestOtp = async (req, res) => {

    const errors = validationResult(req);
    if (!errors.isEmpty()) {
        return res.status(400).json({ errors: errors.array() });
    }

    try {
        let phoneNumber = req.body.phone_number
        const response = await otp.request(phoneNumber)
        res.json(response.data)

    } catch (error) {
        return res.status(500).json({ errors: error });
    }

}


const VerifyOtp = async (req, res) => {

    const errors = validationResult(req);
    if (!errors.isEmpty()) {
        return res.status(400).json({ errors: errors.array() });
    }
    try {
        let token = req.body.token
        let otpCode = req.body.otp_code

        const response = await otp.verify(token, otpCode)
        res.json(response.data)
    } catch (error) {
        return res.status(500).json({ errors: error });
    }
}

module.exports = {
    RequestOtp,
    VerifyOtp
};