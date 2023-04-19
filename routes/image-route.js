const express = require('express')
const multer = require('multer');

const {
    uploadSlip,
    submitSlip
} = require('../controllers/image-control')

const imageRoute = express.Router()

const slipStorage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, './public/uploads/slip')
    },
    filename: function (req, file, cb) {
        cb(null, `${Date.now()}_${file.originalname}`)
    }
})

const slipUpload = multer({ storage: slipStorage });

imageRoute.post('/uploadSlip', slipUpload.single('file'), uploadSlip)
imageRoute.post('/submitSlip', submitSlip)


module.exports = imageRoute