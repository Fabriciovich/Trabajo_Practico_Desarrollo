const express = require('express');
const helmet = require('helmet');
const cors = require('cors');
const morgan = require('morgan');


const app = express();
require('ejs');

// Configurar middlewares
app.use(helmet());
app.use(cors()); 
app.use(morgan('dev')); 
app.use(express.json()); 

app.set("view engine", "ejs");


const dotenv = require('dotenv');
dotenv.config();

const PORT = process.env.PORT || 3000;
app.use(express.json());


app.listen(PORT, () => {
    console.log('server on port', PORT);
});
