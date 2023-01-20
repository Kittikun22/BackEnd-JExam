const express = require('express')

const {
    getFaculty,
    getMajor
} = require('../controllers/faculty-control')

const facultyRoute = express.Router()

facultyRoute.get('/getFaculty', getFaculty)
facultyRoute.post('/getMajor', getMajor)


module.exports = facultyRoute