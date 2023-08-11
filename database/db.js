// Se importan las clases de la librería
const { Sequelize, Model, DataTypes } = require('sequelize');
require('dotenv').config();
const { DB_NAME, DB_USER, DB_HOST, DB_PORT, DB_DIALECT } = process.env;
// Se crea una instancia de la conexión a la base de datos
const sequelize = new Sequelize(DB_NAME, DB_USER, '', { // Crea una nueva instancia de Sequelize y la asigna a la variable 'sequelize'
    host: DB_HOST,
    dialect: DB_DIALECT
});

// Se exportan la conexión a Model y DataTypes para poder usarlas en los modelos
module.exports = {
    sequelize,
    DataTypes,
    Model
}