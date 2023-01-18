const express = require('express');
const cors = require('cors');
require('dotenv').config()
const userRoutes = require('./routes/users-route')
const otpRoutes = require('./routes/otp-route')
const omiseRoutes = require('./routes/omise-route')
const registerRoutes = require('./routes/register-route')
const cartRoutes = require('./routes/cart-route')
const productRoutes = require('./routes/product-route')
const fakepaymentRoutes = require('./routes/fakepayment-route')
const userproductandexams = require('./routes/user-product-exam-route')

const app = express();
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }))

app.use(userRoutes);
app.use(otpRoutes)
app.use(omiseRoutes)
app.use(registerRoutes)
app.use(cartRoutes)
app.use(productRoutes)
app.use(fakepaymentRoutes)
app.use(userproductandexams)



app.listen(8000, () => {
    console.log("Server is running on port :8000");
});
