const express = require("express");

const {
    getAnswered,
    getAllExam,
    getTGAT,
    getTPAT,
    getALEVEL,
    getNETSAT,
    getExam,
    updateSelectItem,
    getFavExams,
    increaseFavExams,
    updateFavExams,
    getMostFav,
    getNewestExam,
    decreaseFavExams
} = require("../controllers/exam-control");

const examRoute = express.Router();

examRoute.post("/getAnswered", getAnswered);
examRoute.get('/getAllExam', getAllExam)
examRoute.get('/getTGAT', getTGAT)
examRoute.get('/getTPAT', getTPAT)
examRoute.get('/getALEVEL', getALEVEL)
examRoute.get('/getNETSAT', getNETSAT)
examRoute.get('/getExam/:exam_id', getExam)
examRoute.put('/updateSelectItem', updateSelectItem)
examRoute.post("/getFavExams", getFavExams);
examRoute.put('/increaseFavExams', increaseFavExams)
examRoute.put('/decreaseFavExams', decreaseFavExams)
examRoute.put('/updateFavExams', updateFavExams)
examRoute.get('/getMostFav', getMostFav)
examRoute.get('/getNewestExam', getNewestExam)


module.exports = examRoute;