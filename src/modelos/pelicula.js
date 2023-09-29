// idPelicula int AI PK 
// poster varchar(200) 
// titulo varchar(200) 
// categoria varchar(30) 
// genero varchar(200) 
// resumen text 
// temporadas varchar(30) 
// trailer varchar(200)


const dataTypes = require("sequelize/lib/data-types");
const { sequelize } = require("../configuracion/base_de_datos");




const peliculasTabla = sequelize.define('peliculasTabla', {
    // Model attributes are defined here
    idPelicula: {
      type: dataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    },
    poster: {
      type: dataTypes.STRING(200),
      defaultValue:null,
      // allowNull defaults to true
    },
    titulo: {
        type: dataTypes.STRING(200),
        allowNull:false,
        // allowNull defaults to true
      },
    categoria: {
      type: dataTypes.STRING(30),
      defaultValue:null,
      // allowNull defaults to true
    }, 
    genero: {
        type: dataTypes.STRING(200),
        defaultValue:null,
        // allowNull defaults to true
      },
      resumen: {
        type: dataTypes.TEXT,
        defaultValue:null,
        // allowNull defaults to true
      },
      temporadas: {
        type: dataTypes.STRING(30),
        defaultValue:null,
        // allowNull defaults to true
      },
      reparto: {
        type: dataTypes.TEXT,
        defaultValue:null,
        // allowNull defaults to true
      },
      trailer: {
        type: dataTypes.STRING(200),
        defaultValue:null,
        // allowNull defaults to true
      },   
    
  }, {
    // Other model options go here
    tableName:'pelicula',
    timestamps: false,
    indexes: [
      // Create a unique index on email
      {
        unique: true,
        fields: ['titulo']
      }]
  });

  module.exports={peliculasTabla};