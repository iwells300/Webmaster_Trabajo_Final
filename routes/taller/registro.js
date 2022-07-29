var express=require('express');
var router=express.Router();
var registroModel=require('./../../models/registroModel');
var moment=require('moment');
var md5=require('md5');
var nodemailer=require('nodemailer');

router.get('/',function(req,res,next){
    res.render('taller/registro',{
        layout:'taller/layout',
        title: 'Registro'
    });
});

router.post('/agregar', async (req,res,next)=>{
    try{
      if(req.body.apellido != "" && req.body.email != "" && req.body.password != ""){  
          
        numeroVerificacion=Math.floor(Math.random() * 999999);
        req.body.nverif=md5(numeroVerificacion.toString());
        req.body.verifi=false;
        req.body.password=md5(req.body.password);

        await registroModel.insertCliente(req.body);

      var nombre=req.body.nombre;
      var apellido=req.body.apellido;
      var email=req.body.email;
      req.requestTime = Date.now();
      moment.locale('es');
      fechaEnvio=moment().format('MMMM Do YYYY, h:mm a');
      req.body.fecha=fechaEnvio;

      var obj={
        to:email,
        subject:'Registro Concesionaria Silver S.A.',
        html: "<div style='border: 2px solid darkblue;border-radius: 2em;display: flex;flex-direction: column; justify-content: center;align-items: center; color: darkblue;'><h1 style='color:darkblue;'>Bienvenido a los servicios de Concesionaria Silver</h1><br><h2>"+nombre+" "+apellido+" gracias por registrarse en nuestro taller</h2><br><p> Por favor verifique su email con el siguiente codigo.</p>        <br><h3><strong>"+numeroVerificacion+"</strong> </h3> <br><p>Las cuentas no verificadas se eliminar automaticamente.</p><br><p> Si usted no se registro por favor ignore este mail.</p><br><p>Saludos.</p>       <br><h2><strong>Concesionaria Silver</strong></h2><br><p>"+fechaEnvio+"</p> </div>"
      }
      
      var transport=nodemailer.createTransport({
        host: process.env.SMTP_HOST,
        port: process.env.SMTP_PORT,
        auth:{
          user:process.env.SMTP_USER,
          pass:process.env.SMTP_PASS
        }
      });
    
      var info=await transport.sendMail(obj);
      
      res.render('taller/registro',{
        layout:'taller/layout',
        message:'Mensaje enviado correctamente',
        campoCodigo:true,
        nombre:req.body.nombre,
        apellido:req.body.apellido,
        direccion:req.body.direccion,
        email:req.body.email,
        telefono:req.body.telefono,
        modelo:req.body.modelo,
        anio:req.body.anio,
        password:req.body.password
      });
        


      } else {
        res.render('taller/registro',{
          layout:'taller/layout',
          error:true,
          message:'Todos los campos son requeridos'
        })
      }

      


    } catch(error){
      console.log(error)
      res.render('taller/registro', {
        layout:'taller/layout',
        error:true,
        message:'El registro falló'
      });
    }
  });


  router.post('/verificar', async (req,res,next)=>{
    try{
      if(req.body.codigo != ""){          
        
        
        var codigo=req.body.codigo;
        var data=await registroModel.getClienteByCode(codigo);
        
        await registroModel.verificarCodigo(data);

        res.render('taller/registro',{
          layout:'taller/layout',
          registroCompleto:true
        })

      } else {
        res.render('taller/registro',{
          layout:'taller/layout',
          error:true,
          message:'Todos los campos son requeridos'
        })
      }
    } catch(error){
      console.log(error)
      res.render('taller/registro', {
        layout:'taller/layout',
        error:true,
        message:'El codigo es invalido'
      });
    }
  });
  



module.exports=router;