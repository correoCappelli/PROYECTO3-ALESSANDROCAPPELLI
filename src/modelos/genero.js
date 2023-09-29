

var DataTypes = require('sequelize/lib/data-types');
const dataTypes = require("sequelize/lib/data-types");
const { sequelize } = require('../configuracion/base_de_datos');





const GeneroPelicula = sequelize.define('generoPelicula', {
    // Model attributes are defined here
    idGenero: {
      type: dataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    },
    nombre: {
      type: dataTypes.STRING,
      allowNull: false
    }},{ timestamps: false,
      timestamps: false,
      indexes: [
        // Create a unique index on email
        {
          unique: true,
          fields: ['nombre']
        }] 
      });


    module.exports={GeneroPelicula};