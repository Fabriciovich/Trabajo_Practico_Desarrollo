const cors = require('cors');
const helmet = require('helmet');
const morgan = require('morgan');
const cloudinary = require('cloudinary');
const fileUpload = require('express-fileupload');

const express = require('express');
require('dotenv').config(); // Importa el módulo 'dotenv' para cargar variables de entorno desde el archivo .env
const port = process.env.PORT || 4000; // Establece el puerto del servidor obteniendo el valor de la variable de entorno PORT o usa el puerto 3000 por defecto

const path = require('path');

const app = express();
require('ejs');

// Middlewares

app.use(cors());
app.use(helmet()); 
app.use(morgan("dev"));
app.use(express.json());
app.use(fileUpload());

//Configuracion motor de plantillas
app.use(express.static(path.join(__dirname, 'public')));
app.set("views", path.join(__dirname, "views"));
app.set("view engine", "ejs");

// Routes
app.use(require('./routes/galeria.routes'));

// Starting the server
app.listen(port, () => console.log(`Server on port ${port}`)); 

