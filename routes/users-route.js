const express = require('express')
const bodyParser = require('body-parser');
const jsonParser = bodyParser.json();


const { getUsers,
    createUser,
    updateRoleUser,
    deleteUser,
    Signin,
    authToken,
    getAUser,
    updateAUser,
    phoneAvailable,
    getProfilePic,
    ForgotPassword,
    getAPassword,
    ChangePassword,
    updateDreamFac,
    paymentHistory } = require('../controllers/users-control')

const userRoute = express.Router()

userRoute.get('/users', getUsers)
userRoute.post('/create-user', jsonParser, createUser)
userRoute.post('/checkAvailable', phoneAvailable)
userRoute.put('/update', updateRoleUser)
userRoute.delete('/delete/:id', deleteUser)
userRoute.post('/signin', jsonParser, Signin)
userRoute.post('/authsignin', jsonParser, authToken)
userRoute.get('/getAUser/:user_id', getAUser)
userRoute.put('/updateAUser', updateAUser)
userRoute.get('/getProfilePicture', getProfilePic)
userRoute.post('/forgotPassword', ForgotPassword)
userRoute.post('/getAPassword', getAPassword)
userRoute.put('/changePassword', ChangePassword)
userRoute.put('/updateDreamFac', updateDreamFac)
userRoute.post('/paymentHistory', paymentHistory)

module.exports = userRoute