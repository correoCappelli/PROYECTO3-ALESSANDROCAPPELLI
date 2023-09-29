const { ActorPelicula } = require("../modelos/actor");
const CategoriaPelicula = require("../modelos/categoria");
const { GeneroPelicula } = require("../modelos/genero");
const { peliculasTabla } = require("../modelos/pelicula");



//Asociaciones Has Many - Una categoria tiene muchas peliculas. Una plicula tiene una categoria
CategoriaPelicula.hasMany(peliculasTabla,{foreignKey:'categoria_ID'});
peliculasTabla.belongsTo(CategoriaPelicula,{foreignKey:'categoria_ID'});

//Asociaiones Many-to-Many relacionales
GeneroPelicula.belongsToMany(peliculasTabla, { through: 'pelicula_genero' });
peliculasTabla.belongsToMany(GeneroPelicula, { through: 'pelicula_genero' });
peliculasTabla.belongsToMany(ActorPelicula, { through: 'pelicula_actor' });
ActorPelicula.belongsToMany(peliculasTabla, { through: 'pelicula_actor' });


module.exports={
    ActorPelicula,
    CategoriaPelicula,
    peliculasTabla,
    GeneroPelicula
};