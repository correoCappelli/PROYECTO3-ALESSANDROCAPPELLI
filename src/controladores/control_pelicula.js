

const { sequelize } = require("../configuracion/base_de_datos");
const { ActorPelicula,peliculasTabla,GeneroPelicula,CategoriaPelicula } = require("../configuracion/asociaciones");
const { Op } = require("sequelize");





async function agregarActoresAPeliculas(lista,nuevaPelicula){

  for(let item of lista){
      
      
      let buscarActor=await ActorPelicula.findOne({where: {nombre : item}})
      
        if (buscarActor==null){
            let nuevoActorCrear=await ActorPelicula.create({nombre:item});
            await nuevaPelicula.addActorPelicula(nuevoActorCrear);
            console.log(`Se creó actor ${nuevoActorCrear.nombre}. Se relaciona a la pelicula ${nuevaPelicula.idPelicula} `)
        }else{
            await nuevaPelicula.addActorPelicula(buscarActor);
            console.log(`El actor ${buscarActor.nombre} ya existe. Se relaciona a la pelicula ${nuevaPelicula.idPelicula} `)
          }
      }
    };

async function agregarGenerosAPeliculas(lista,nuevaPelicula){

   for(let item of lista){
        
             
            let buscarGenero=await GeneroPelicula.findOne({where: {nombre : item}})
            
              if (buscarGenero==null){
                  let nuevoGeneroCrear=await GeneroPelicula.create({nombre:item});
                  await nuevaPelicula.addGeneroPelicula(nuevoGeneroCrear);
                  console.log(`Se creó actor ${nuevoGeneroCrear.nombre}. Se relaciona a la pelicula ${nuevaPelicula.idPelicula} `)
              }else{
                  await nuevaPelicula.addGeneroPelicula(buscarGenero);
                  console.log(`El actor ${buscarGenero.nombre} ya existe. Se relaciona a la pelicula ${nuevaPelicula.idPelicula} `)
                }
            }
          };


async function agregarCategoriaAPeliculas(lista,nuevaPelicula){

            for(let item of lista){
                 
                     
                     let buscarCategoria=await CategoriaPelicula.findOne({where: {nombre : item}})
                     
                       if (buscarCategoria==null){
                           let nuevoCategoriaCrear=await CategoriaPelicula.create({nombre:item});
                           nuevaPelicula.setCategoriaPelicula(nuevoCategoriaCrear)
                           console.log(`Se creó categoria ${nuevoCategoriaCrear.nombre}. Se relaciona a la pelicula ${nuevaPelicula.idPelicula} `)
                       }else{
                           nuevaPelicula.setCategoriaPelicula(buscarCategoria)
                           console.log(`La categoria ${buscarCategoria.nombre} ya existe. Se relaciona a la pelicula ${nuevaPelicula.idPelicula} `)
                         }
                     }
                   };


const crearPelicula=async (req, res) => {
  
            try {
          
              const poster  =req.body.poster;
              const titulo =req.body.titulo;
              const categoria  =req.body.categoria;
              const genero  =req.body.genero;
              const resumen  =req.body.resumen;
              const temporadas =req.body.temporadas;
              const reparto =req.body.reparto;
              const trailer=req.body.trailer;
          
          // Conexión a la base de datos
          // conectarMySQL();    
          
          
              const nuevaPelicula= await peliculasTabla.create({poster,titulo,categoria,genero,resumen,temporadas,reparto,trailer});
          
              let actoresNuevaPelicula=nuevaPelicula.reparto;
              let generosNuevaPelicula=nuevaPelicula.genero;
              let categoriaNuevaPelicula=nuevaPelicula.categoria;
          
              let actoresNuevaPeliculaSplit=actoresNuevaPelicula.split(",");
              console.log(`Reparto de la Pelicula :${actoresNuevaPeliculaSplit}`);
          
              let generosNuevaPeliculaSplit=generosNuevaPelicula.split(",");
              console.log(`Generos de la Pelicula :${generosNuevaPeliculaSplit}`);
          
              let categoriaNuevaPeliculaSplit=categoriaNuevaPelicula.split(",");
              console.log(`Categoria de la Pelicula :${categoriaNuevaPeliculaSplit}`);

              agregarActoresAPeliculas(actoresNuevaPeliculaSplit,nuevaPelicula);
              agregarGenerosAPeliculas(generosNuevaPeliculaSplit,nuevaPelicula);
              agregarCategoriaAPeliculas(categoriaNuevaPeliculaSplit,nuevaPelicula);


              
            
          res.status(201).json(nuevaPelicula);
          
            } catch (error) {
              // Manejo de errores al agregar el producto
              console.log('Error al crear el elemento',error);
              res.status(500).send("Error al intentar agregar un nuevo elemento");
            } finally {
              // Desconexión de la base de datos
              // desconectarMySQL(sequelize);
            }
          };

const listarPeliculas= async (req, res) => {
  
            try {
          // Conexión a la base de datos
              const lista=await peliculasTabla.findAll();
             
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
          
const buscarPeliculaPorID =async (req, res) => {
            
            try {
              const {id}=req.params;
              const lista=await peliculasTabla.findByPk(id);
          
              (!lista||lista===0)?res.status(404).json({error:"Error al consultar / no encontrado"}):res.status(200).json(lista);
          
            } catch (error) {
              // Manejo de errores al agregar el producto
              console.log('Error al consultar los elementos',error);
              res.status(500).send("Error al consultar los elementos");
            } finally {
              // Desconexión de la base de datos
            }
          };

const eliminarPeliculaPorID= async (req, res) => {
            const iDpeliculaParaBorrar = parseInt(req.params.id);
            try {
                  // Conexión a la base de datos
              
              // Obtener la colección, buscar el elemento por su codigo y eliminarlo
              const peliculaParaBorrar=await peliculasTabla.findByPk(iDpeliculaParaBorrar);
              
              if(peliculaParaBorrar){
                await peliculaParaBorrar.destroy();
                //asegurar que existe la referencia ON DELETE CASCADE para la foreign-key 
                console.log("borrado");
                res.status(204).send();
              }else {
                res.status(404).json({error:"No se encontró el elemento"})
              }
            } catch (error) {
              // Manejo de errores al obtener los recursos
              res.status(500).send("Error al eliminar el recurso");
            } finally {
              // Desconexión de la base de datos
            //  await desconectarMySQL(sequelize);
            }
          };          
          //Prueba dl include dentro del findall
const buscarPeliculasPorGenero=async (req, res)=> {
            
            try {
          // Conexión a la base de datos
              // conectarMySQL(sequelize);
              
              const {genero}=req.params;
              const generoBuscarNombre=await GeneroPelicula.findOne({where:{nombre:genero}})
              
              const lista=await GeneroPelicula.findAll({
                where:{nombre:generoBuscarNombre.nombre},
                include:peliculasTabla
              })

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

const buscarPeliculasPorCategoria=async (req,res)=>{
    
            try {
                //conectar Mysql
                const {categoria}=req.params;
                const categoriaBuscarNombre=await CategoriaPelicula.findOne({where:{nombre:categoria}})
                const lista=await CategoriaPelicula.findByPk(categoriaBuscarNombre.categoriaID,{
                    include: peliculasTabla,
                })
                !lista?res.status(404).json({error:"Error al consultar los elementos"}):res.status(200).json(lista);
            } catch (error) {
                // Manejo de errores al agregar el producto
                console.log('Error al consultar los elementos',error);
                res.status(500).send("Error al consultar los elementos");
                
            } finally {
               //desconectar MySQL
            }
        }

const buscarPeliculasPorTituloParcial=async (req,res)=>{
try {
  const tituloQuery = req.params.titulo;
  let buscarTitulo = RegExp('^'+tituloQuery, "i");
  const lista=await peliculasTabla.findAll({
      where:{titulo:{[Op.substring]:tituloQuery}}
  })
  !lista?res.status(404).json({error:"Error al consultar los elementos"}):res.status(200).json(lista);
} catch (error) {
  // Manejo de errores al agregar el producto
                console.log('Error al consultar los elementos',error);
                res.status(500).send("Error al consultar los elementos");
}finally{

}



}


const actualizarPelicula=async (req, res) => {
  
  try {
    
    const idPelicula=req.params.id;
    const poster  =req.body.poster;
    const titulo =req.body.titulo;
    const categoria  =req.body.categoria;
    const genero  =req.body.genero;
    const resumen  =req.body.resumen;
    const temporadas =req.body.temporadas;
    const reparto =req.body.reparto;
    const trailer=req.body.trailer;

    const buscarPelicula=await peliculasTabla.findByPk(req.params.id);
    
    let actoresNuevaPelicula=reparto;
    let generosNuevaPelicula=genero;
    let categoriaNuevaPelicula=categoria;

    let actoresNuevaPeliculaSplit=actoresNuevaPelicula.split(",");
    console.log(`Nuevo reparto de la Pelicula :${actoresNuevaPeliculaSplit}`);

    let generosNuevaPeliculaSplit=generosNuevaPelicula.split(",");
    console.log(`Nuevos generos de la Pelicula :${generosNuevaPeliculaSplit}`);

    let categoriaNuevaPeliculaSplit=categoriaNuevaPelicula.split(",");
    console.log(`Nuevas categorias de la Pelicula :${categoriaNuevaPeliculaSplit}`);

    for(let item of actoresNuevaPeliculaSplit){
      let buscarActor=await ActorPelicula.findOne({where: {nombre : item}})
        if (buscarActor==null){
            let nuevoActorCrear=await ActorPelicula.create({nombre:item});
            console.log(`Se creó actor ${nuevoActorCrear.nombre}.`)
        }else{
            console.log(`El actor ${buscarActor.nombre} ya existe.`)
          }};
    
for(let item of generosNuevaPeliculaSplit){  
      let buscarGenero=await GeneroPelicula.findOne({where: {nombre : item}})
        if (buscarGenero==null){
                  let nuevoGeneroCrear=await GeneroPelicula.create({nombre:item});
                  console.log(`Se creó actor ${nuevoGeneroCrear.nombre}.`)
              }else{
                  console.log(`El actor ${buscarGenero.nombre} ya existe.`)
                }
            }

for(let item of categoriaNuevaPeliculaSplit){
      let buscarCategoria=await CategoriaPelicula.findOne({where: {nombre : item}})
                if (buscarCategoria==null){
                    let nuevoCategoriaCrear=await CategoriaPelicula.create({nombre:item});
                    console.log(`Se creó categoria ${nuevoCategoriaCrear.nombre}.`)
                }else{
                    console.log(`La categoria ${buscarCategoria.nombre} ya existe.`)
                  }
              }


const listaActores=await ActorPelicula.findAll({
      where:{
        nombre:{[Op.in]:actoresNuevaPeliculaSplit}
      }
  })

const listaGeneros=await GeneroPelicula.findAll({
    where:{
      nombre:{[Op.in]:generosNuevaPeliculaSplit}
    }
})

const listaCategorias=await CategoriaPelicula.findAll({
  where:{
    nombre:{[Op.in]:categoriaNuevaPeliculaSplit}
  }
})

  await buscarPelicula.setActorPeliculas(listaActores);  
  await buscarPelicula.setGeneroPeliculas(listaGeneros);  
  //La CATEGORIA ES UN Valor unico. Por lo que retorno el primer valor 
  await buscarPelicula.setCategoriaPelicula(listaCategorias[0].categoriaID);  
    
  const peliculaActualizada= await buscarPelicula.update({poster,titulo,categoria,genero,resumen,temporadas,reparto,trailer});


  res.status(201).json(peliculaActualizada);

  } catch (error) {
    // Manejo de errores al agregar el producto
    console.log('Error al crear el elemento',error);
    res.status(500).send("Error al intentar agregar un nuevo elemento");
  } finally {
    // Desconexión de la base de datos
    // desconectarMySQL(sequelize);
  }
};



module.exports={
  agregarActoresAPeliculas,
  agregarGenerosAPeliculas,
  crearPelicula,
  listarPeliculas,
  buscarPeliculaPorID,
  eliminarPeliculaPorID,
  buscarPeliculasPorGenero,
  agregarCategoriaAPeliculas,
  buscarPeliculasPorCategoria,
  buscarPeliculasPorTituloParcial,
  actualizarPelicula
};