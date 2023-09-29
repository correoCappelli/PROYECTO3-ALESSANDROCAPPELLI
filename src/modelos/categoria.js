var DataTypes = require('sequelize/lib/data-types');
const dataTypes = require("sequelize/lib/data-types");
const { sequelize } = require('../configuracion/base_de_datos');



  const CategoriaPelicula = sequelize.define('categoriaPelicula', {
    categoriaID: {
      type: dataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    },
    nombre: {
      type: dataTypes.STRING,
      allowNull: false
    }
  }, {timestamps: false,
    indexes: [
      // Create a unique index on email
      {
        unique: true,
        fields: ['nombre']
      }]
    });

  module.exports = CategoriaPelicula;
