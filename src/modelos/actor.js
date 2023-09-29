
// idActor int AI PK 
// nombre varchar(30)

const dataTypes = require("sequelize/lib/data-types");
const { sequelize } = require("../configuracion/base_de_datos");
const { DataTypes } = require("sequelize");





const ActorPelicula = sequelize.define('actorPelicula', {
  // Model attributes are defined here
  idActor: {
    type: dataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
    allowNull: false
  },
  nombre: {
    type: dataTypes.STRING,
    allowNull: false
  }},{ 
    timestamps: false,
    indexes: [
      // Create a unique index on email
      {
        unique: true,
        fields: ['nombre']
      }]
   }
    );


  module.exports={ActorPelicula};