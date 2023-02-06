const express = require("express");

const { getExamAnswer, getAnswered } = require("../controllers/exam-control");

const examRoute = express.Router();

examRoute.post("/getExamAnswer", getExamAnswer);
examRoute.post("/getAnswered", getAnswered);

module.exports = examRoute;
