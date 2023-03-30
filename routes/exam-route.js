const express = require("express");

const { getExamId,
    getAnswered,
} = require("../controllers/exam-control");

const examRoute = express.Router();

examRoute.post("/getExamId", getExamId);
examRoute.post("/getAnswered", getAnswered);

module.exports = examRoute;