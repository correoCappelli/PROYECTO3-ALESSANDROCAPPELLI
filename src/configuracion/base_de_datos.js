
require('dotenv').config();
const Sequelize=require('sequelize');

const sequelize=new Sequelize(process.env.DATABASE,process.env.USUARIO,process.env.PASSWORD,{
  host:process.env.HOST,
  port:process.env.PORTSQL,
  dialect:'mysql',
  dialectOptions:{
    options:{encrypt:true},
    multiplestatements: true
  },
  define:{timestamps:false},
  pool: {
    max: 3, // Máximo de conexiones en el grupo
    min: 0, // Mínimo de conexiones en el grupo
    acquire: 30000, // Tiempo máximo, para liberar conexiones inactivas
    idle: 10000, // Tiempo máximo para cerrar conexiones inactivas
  },
});


async function conectarMySQL(inst){
    try {
      await inst.authenticate();
      console.log('Conexion a MySQL establecida correctamnte.');
    } catch (error) {
      console.error('No se pudo establecer una conexion con MySQL ', error);
    }
    }

async function desconectarMySQL(inst){
    try {
       await inst.close();
          console.log('Conexion a MySQL cerrada correctamnte.');
        } catch (error) {
          console.error('No se pudo cerrar la conexion con MySQL ', error);
        }
        }

module.exports={conectarMySQL,desconectarMySQL,sequelize};        