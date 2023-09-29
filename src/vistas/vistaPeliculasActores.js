const dataTypes = require("sequelize/lib/data-types");
const { sequelize } = require('../configuracion/base_de_datos');
require('dotenv').config();




const vistaPeliculasActores = sequelize.define('catalogodepeliculasyactores', {
    
    titulo: {
        type: dataTypes.STRING,
      },
    nombre: {
      type: dataTypes.STRING,
      
    }},
    { 
      
        tableName:'catalogodepeliculasyactores',
        timestamps: false,
       
    });


    module.exports={vistaPeliculasActores};