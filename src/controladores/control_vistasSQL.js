const { QueryTypes } = require("sequelize");
const { peliculasTabla } = require("../modelos/pelicula");
const { vistaPeliculasGeneros } = require("../vistas/vistaPeliculasGeneros");
const { vistaPeliculasActores} = require("../vistas/vistaPeliculasActores");
const { sequelize } = require("../configuracion/base_de_datos");

require('dotenv').config();


const queryActores=`

CREATE OR REPLACE VIEW catalogoDePeliculasYActores 
AS SELECT P.titulo,A.nombre AS Actores FROM pelicula P 
INNER JOIN pelicula_actor PA ON PA.peliculasTablaIdPelicula=P.idPelicula 
INNER JOIN actorpeliculas A ON A.idActor=PA.actorPeliculaIdActor;
`;

const queryGeneros=`

CREATE OR REPLACE VIEW catalogoDePeliculasYGeneros
AS SELECT P.titulo,G.nombre AS Generos
FROM pelicula P
INNER JOIN pelicula_genero PG ON PG.peliculasTablaIdPelicula=P.idPelicula
INNER JOIN generopeliculas G ON G.idGenero=PG.generoPeliculaIdGenero;
`;

const listarPeliculasGenerosVistasSQL= async (req, res) => {
  
    try {
  // Conexión a la base de datos
      
     await sequelize.query(queryGeneros);
     const lista = await sequelize.query(`SELECT * FROM ${process.env.DATABASE}.catalogodepeliculasygeneros`, {
         model: vistaPeliculasGeneros,
         mapToModel: true 
       });
     const listaTabla=JSON.stringify(lista);
     const lista2=JSON.parse(listaTabla, function (k, v) {
      if (k === "") return v;
      return v; 
    });
     
    
      console.table(lista2);
      !lista?res.status(404).json({error:"Error al consultar los elementos"}):res.status(200).json(lista);
  
    } catch (error) {
      // Manejo de errores al agregar el producto
      console.log('Error al consultar los elementos',error);
      res.status(500).send("Error al consultar los elementos");
    } finally {
      // Desconexión de la base de datos
      // desconectarMySQL(sequelize);
    }
  };

  const listarPeliculasActoresVistasSQL= async (req, res) => {
  
    try {
  // Conexión a la base de datos
      
     await sequelize.query(queryActores); 
     const lista = await sequelize.query(`SELECT * FROM ${process.env.DATABASE}.catalogodepeliculasyactores`, {
         model: vistaPeliculasActores,
         mapToModel: true 
       });
       const listaTabla=JSON.stringify(lista);
       const lista2=JSON.parse(listaTabla, function (k, v) {
        if (k === "") return v;
        return v; 
      });
       
      
        console.table(lista2);
      !lista?res.status(404).json({error:"Error al consultar los elementos"}):res.status(200).json(lista);
  
    } catch (error) {
      // Manejo de errores al agregar el producto
      console.log('Error al consultar los elementos',error);
      res.status(500).send("Error al consultar los elementos");
    } finally {
      // Desconexión de la base de datos
      // desconectarMySQL(sequelize);
    }
  };

  module.exports={listarPeliculasGenerosVistasSQL,listarPeliculasActoresVistasSQL};