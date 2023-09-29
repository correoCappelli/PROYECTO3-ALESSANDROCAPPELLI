const express = require("express");
const router = express.Router();
const peliculasControlador = require('../controladores/control_pelicula');


// Ruta para CREAR una nueva plicula
router.post("/peliculas", peliculasControlador.crearPelicula);

//Ruta para LISTAR todas las peliculas
router.get("/peliculas",peliculasControlador.listarPeliculas);

//Ruta para UPDATE una pelicula por su ID
router.put("/peliculas/update/:id",peliculasControlador.actualizarPelicula);

//Ruta para ELIMINAR una pelicula por su ID
router.delete("/peliculas/:id",peliculasControlador.eliminarPeliculaPorID);

//Ruta para BUSCAR una pelicula por su ID
router.get("/peliculas/:id",peliculasControlador.buscarPeliculaPorID);

//Ruta para BUSCAR peliculas por GENERO 
router.get("/peliculas/genero/:genero",peliculasControlador.buscarPeliculasPorGenero);

//Ruta para BUSCAR pliculas por CATEGORIA
router.get("/peliculas/categoria/:categoria", peliculasControlador.buscarPeliculasPorCategoria);

//Ruta para BUSCAR peliculas por TITULO o por TITULO PARCIAL
router.get("/peliculas/titulo/:titulo", peliculasControlador.buscarPeliculasPorTituloParcial);


module.exports=router;

