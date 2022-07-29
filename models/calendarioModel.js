var pool=require('./bd');


async function buscaHorario1(fecha,horaInicio,horaFinal){

    
    var query1="select * from turnostaller where dia=? and (? between horaInicio and horaFinal)";
    var rows1 = await pool.query(query1,[fecha,horaInicio]);
    
    
    return rows1[0];
}

async function buscaHorario2(fecha,horaInicio,horaFinal){

    
    var query1="select * from turnostaller where dia=? and (? between horaInicio and horaFinal)";
    var rows1 = await pool.query(query1,[fecha,horaFinal]);
    
    
    return rows1[0];
}

async function buscaHorario3(fecha,horaInicio,horaFinal){

    
    var query1="select * from turnostaller where dia=? and (horaInicio<=? and horaFinal>=?) ";
    var rows1 = await pool.query(query1,[fecha,horaInicio,horaFinal]);
    
    
    return rows1[0];
}



async function getTurnosById(id){
    var query="select * from turnostaller where id = ?";
    var rows = await pool.query(query,[id]);
    return rows[0];
}


async function buscaDatosCliente(nombre,apellido,modelo){

    
    var query1="select * from clientestaller where nombre=? and apellido=? and modelo=? ";
    var rows1 = await pool.query(query1,[nombre,apellido,modelo]);
    
    
    return rows1[0];
}

async function insertTurno(obj){
    try{
        var query="insert into turnosTaller set ?";
        var rows=await pool.query(query,[obj]);
        return rows;
    } catch(error){
        console.log(error);
        throw error;
    }
}

async function getTurnos(){
    var query="select id,nombre,apellido,email,dia,TIME_FORMAT(horaInicio, '%h:%i %p') horaInicio,TIME_FORMAT(horaFinal, '%h:%i %p') horaFinal,auto,servicio,motor from turnosTaller order by horaInicio asc";
    var rows=await pool.query(query);
    return rows;
}

async function buscarTurno(busqueda){
    var query=" select * from turnostaller where nombre like ? OR apellido like ? OR email like dia OR horaInicio like ? OR horaFinal like ? OR auto like ? OR servicio like ? OR motor like ?";
    var rows= await pool.query(query, ['%'+ busqueda+'%','%'+ busqueda+'%','%'+ busqueda+'%','%'+ busqueda+'%','%'+ busqueda+'%','%'+ busqueda+'%','%'+ busqueda+'%','%'+ busqueda+'%','%'+ busqueda+'%']);
    return rows;
}

async function buscarDia(busqueda){
    var query=" select id,nombre,apellido,email,dia,TIME_FORMAT(horaInicio, '%h:%i %p') horaInicio,TIME_FORMAT(horaFinal, '%h:%i %p') horaFinal,auto,servicio,motor from turnostaller where dia like ?";
    var rows= await pool.query(query, ['%'+ busqueda+'%']);
    return rows;
}

async function deleteTurnoById(id){
    var query="delete from turnostaller where id = ?";
    var rows=await pool.query(query,[id]);
    return rows;
}
module.exports={buscaHorario1,buscaHorario2,buscaHorario3,getTurnosById,insertTurno,buscaDatosCliente,getTurnos,buscarTurno,buscarDia,deleteTurnoById}