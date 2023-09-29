const express = require("express");
require('dotenv').config();
const app = express();
const PORT = process.env.PORT || 3000;
const path=require('path');



// plantillas EJS para mostrar paginas estaticas y posters de peliculas
app.set("view engine","ejs");
app.set('views',path.join(__dirname,'plantillas_ejs'))
app.use(express.static('plantillas_ejs'));
app.use(express.static('public'));



const { peliculasTabla, ActorPelicula, CategoriaPelicula, GeneroPelicula } = require("./src/configuracion/asociaciones");

const { sequelize } = require("./src/configuracion/base_de_datos");
const { vistaPeliculasGeneros } = require("./src/vistas/vistaPeliculasGeneros");
const { vistaPeliculasActores } = require("./src/vistas/vistaPeliculasActores");



// Middleware para reconocrcomo JSON las solicitudes entrantes
app.use(express.json());

// Middleware - conexion base de datos con pool de conexiones -Hago undrop() en las Vistas para que no se modelen antes de crearlas
app.use(async (req, res, next) => {
  try {
        await sequelize.authenticate();
        await sequelize.sync();
        await vistaPeliculasActores.drop();
        await vistaPeliculasGeneros.drop();
        
        
        console.log("Conexion a MySQL establecida correctamente");
        next();
  } catch (error) {
        res.status(500).json({ error: 'Error en el servidor', description: error.message });
  }
});

app.use((req, res, next) => {
  res.header("Content-Type", "application/json; charset=utf-8");
  next();
});

//EndPoints de acceso a las tablas y vistas SQL

app.get("/", (req, res) => {
  res.status(200).end("Bienvenido a la API con MySQL y Sequelize");
});

peliculasRouter=require("./src/routers/peliculasRouter");
vistasSQLRouter=require("./src/routers/vistasSQLRouter");


app.use("/api",peliculasRouter);
app.use("/api",vistasSQLRouter);


// EJS - para vistas de poster y titulo por pelicula ID

app.get("/peliculas/poster/",async (req,res)=>{
  res.set("Content-Type", "text/html; charset=utf-8");
  try {
    const pelis=await peliculasTabla.findAll();
    const data={
      title:'POSTERS DE PELICULAS',
      texto:'Unicamente se incluyen posters para 10 pliculas',
      pelicula:pelis}
      res.render('peliculaposter',data);    
  } catch (error) {
    // Manejo de errores al agregar el producto
    console.log('Error al consultar los elementos',error);
    res.status(500).send("Error al consultar los elementos");
  } finally {
    // Desconexión de la base de datos
  }
  });


// Iniciar el servidor
app.listen(PORT, () => {
  console.log(`Servidor escuchando en el puerto ${PORT}`);
});












