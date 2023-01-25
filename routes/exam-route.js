const express = require('express')
const bodyParser = require('body-parser');
const jsonParser = bodyParser.json();

const { 
    getAnswer,
    saveAnswer,
    getProduct,
    getTaking,
    getTakingAnswer,
    getHistory,
    getPoint,
    getTakingAnalysis,
    getExamscript} = require('../controllers/exam-control')

const examRoute = express.Router()

examRoute.post('/saveAnswer', jsonParser, saveAnswer)
examRoute.post('/getAnswer', jsonParser, getAnswer)
examRoute.post('/getProduct', jsonParser, getProduct)
examRoute.post('/getTaking', jsonParser, getTaking)
examRoute.post('/getTakingAnswer', jsonParser, getTakingAnswer)
examRoute.post('/getTakingAnalysis', jsonParser, getTakingAnalysis)
examRoute.post('/getHistory', jsonParser, getHistory)
examRoute.post('/getPoint', jsonParser, getPoint)
examRoute.post('/getExamscript', jsonParser, getExamscript)
module.exports = examRoute
