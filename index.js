const express = require('express');
const cors = require('cors');
require('dotenv').config()
const userRoutes = require('./routes/users-route')
const otpRoutes = require('./routes/otp-route')
const omiseRoutes = require('./routes/omise-route')
const registerRoutes = require('./routes/register-route')
const cartRoutes = require('./routes/cart-route')
const fakepaymentRoutes = require('./routes/fakepayment-route')
const userAndExamsRoute = require('./routes/user-exam-route')
const facultyRoutes = require('./routes/faculty-route')
const codePromotionRoutes = require('./routes/code-promotion-route')
const examinationRoutes = require('./routes/examination-route')
const examRoutes = require('./routes/exam-route')
const imageRoutes = require('./routes/image-route')

const app = express();
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }))

const path = require('path')

app.use('/public', express.static(path.join(__dirname, 'public')))

app.use(userRoutes);
app.use(otpRoutes)
app.use(omiseRoutes)
app.use(registerRoutes)
app.use(cartRoutes)
app.use(fakepaymentRoutes)
app.use(userAndExamsRoute)
app.use(facultyRoutes)
app.use(codePromotionRoutes)
app.use(examinationRoutes)
app.use(examRoutes)
app.use(imageRoutes)


app.listen(8000, () => {
    console.log("Server is running on port :8000");
});
