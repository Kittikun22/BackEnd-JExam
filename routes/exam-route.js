const express = require("express");

const { getExamId,
    getAnswered,
    getHistory
} = require("../controllers/exam-control");

const examRoute = express.Router();

examRoute.post("/getExamId", getExamId);
examRoute.post("/getAnswered", getAnswered);
examRoute.post("/getHistory", getHistory)

module.exports = examRoute;
