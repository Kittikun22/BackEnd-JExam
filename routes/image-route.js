const express = require('express')
const multer = require('multer');

const {
    uploadSlip,
    submitSlip,
    uploadExamPic,
    uploadQuestionPic
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

const examPicStorage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, './public/uploads/exams')
    },
    filename: function (req, file, cb) {
        cb(null, `${Date.now()}_${file.originalname}`)
    }
})

const questionPicStorage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, './public/uploads/question')
    },
    filename: function (req, file, cb) {
        cb(null, `${Date.now()}_${file.originalname}`)
    }
})


const slipUpload = multer({ storage: slipStorage });
const examPicUpload = multer({ storage: examPicStorage });
const questionPicUpload = multer({ storage: questionPicStorage });


imageRoute.post('/uploadSlip', slipUpload.single('file'), uploadSlip)
imageRoute.post('/uploadExamPic', examPicUpload.single('file'), uploadExamPic)
imageRoute.post('/uploadQuestionPic', questionPicUpload.single('file'), uploadQuestionPic)
imageRoute.post('/submitSlip', submitSlip)


module.exports = imageRoute