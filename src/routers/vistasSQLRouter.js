const express = require("express");
const router = express.Router();
const vistasSQLControlador = require('../controladores/control_vistasSQL');


// Ruta para LISTAR vistas SQL
router.get("/peliculas/vistas/peliculaygeneros", vistasSQLControlador.listarPeliculasGenerosVistasSQL);

router.get("/peliculas/vistas/peliculayactores", vistasSQLControlador.listarPeliculasActoresVistasSQL);

module.exports=router;