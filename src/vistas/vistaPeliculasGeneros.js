


const dataTypes = require("sequelize/lib/data-types");
const { sequelize } = require('../configuracion/base_de_datos');





const vistaPeliculasGeneros = sequelize.define('catalogodepeliculasygeneros', {
    
    titulo: {
        type: dataTypes.STRING,
      },
    nombre: {
      type: dataTypes.STRING,
      
    }},
    { 
        
        tableName:'catalogodepeliculasygeneros',
        timestamps: false,
       
    });


    module.exports={vistaPeliculasGeneros};