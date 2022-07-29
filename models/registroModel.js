
var pool=require('./bd');
var md5=require('md5');

async function insertCliente(obj){
    try{
        var query="insert into clientesTaller set ?";
        var rows=await pool.query(query,[obj]);
        return rows;
    } catch(error){
        console.log(error);
        throw error;
    }
}

async function getClienteByCode(codigo){
    var query="select id from clientesTaller where nverif = ?";
    var rows = await pool.query(query,[md5(codigo)]);
    return rows[0]['id'];
}

async function verificarCodigo(id){
    try{
        var query="update clientesTaller set verifi=true where id=?;";
        var rows=await pool.query(query,[id]);
        return rows;
    } catch (error){
        throw error;
    }
}






module.exports={insertCliente,getClienteByCode,verificarCodigo}