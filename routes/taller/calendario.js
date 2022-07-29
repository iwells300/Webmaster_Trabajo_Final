var express=require('express');
var router=express.Router();
var registroModel=require('./../../models/registroModel');
var moment=require('moment');
var md5=require('md5');
var nodemailer=require('nodemailer');
var calendarioModel=require('../../models/calendarioModel');

router.get('/',function(req,res,next){
    res.render('taller/calendario',{
        layout:'taller/layout',
        title: 'Seleccionar dia'
    });
});


router.post('/agendar/:n/:a/:m',async(req,res,next)=>{
    
    try {
        var dia =req.body.dia;        
        var horaInicio=req.body.hora;
        var nombre=req.params.n;
        var apellido=req.params.a;
        var modelo=req.params.m;
        

        var tiempoTrabajo=0;
        combustibleCombobox=req.body.combustible;
        var ser=req.body.service;

        kilometraje=ser.split('km')[0];
        motor=ser.split('km')[1];

        if(motor=='n'){
            switch(kilometraje){
                case '15000':
                    tiempoTrabajo=1;
                    break;
                case '30000':
                    tiempoTrabajo=2;
                    break;
                case '45000':
                    tiempoTrabajo=1;
                    break;
                case '60000':
                    tiempoTrabajo=2;
                    break;
                default:
                    tiempoTrabajo=0.5;

            }

        } else {
            switch(kilometraje){
                case '10000':
                    tiempoTrabajo=1;
                    break;
                case '20000':
                    tiempoTrabajo=1;
                    break;
                case '30000':
                    tiempoTrabajo=2;
                    break;
                case '40000':
                    tiempoTrabajo=1;
                    break;
                default:
                    tiempoTrabajo=0.5;

            }
        }

        if (motor=='n'){motor='Nafta';}else{motor='Diesel';}

    

        fechaInicio=moment(dia+" "+horaInicio,"YYYY-MM-DD hh:mm");
        fechaFinal=moment(dia+" "+horaInicio,"YYYY-MM-DD hh:mm").add(tiempoTrabajo,'hours');
        horaFinal=fechaFinal.format('HH:mm:ss');
        
        fechaInicio=fechaInicio.add(1,'seconds');
        fechaFinal=fechaFinal.subtract(1,'seconds');
        
        h1=fechaInicio.format('HH:mm:ss');
        h2=fechaFinal.format('HH:mm:ss');
        
        dia1=fechaInicio.format('YYYY-MM-DD');
        
        

        var data1=await calendarioModel.buscaHorario1(dia1,h1,h2);
        var data2=await calendarioModel.buscaHorario2(dia1,h1,h2);
        var data3=await calendarioModel.buscaHorario3(dia1,h1,h2);
        
        if(data1===undefined && data2===undefined && data3===undefined){
            
            var cliente=await calendarioModel.buscaDatosCliente(nombre,apellido,modelo);

            let obj={
                nombre:nombre,
                apellido:apellido,
                email:cliente.email,
                dia:dia1,
                horaInicio:horaInicio,
                horaFinal:horaFinal,
                auto:modelo,
                servicio:kilometraje,
                motor:motor

              }
            
            await calendarioModel.insertTurno(obj);

            
            req.requestTime = Date.now();
            moment.locale('es');
            fechaEnvio=moment().format('MMMM Do YYYY, h:mm a');
            req.body.fecha=fechaEnvio;

            var obj1={
                to:cliente.email,
                subject:'Registro Concesionaria Silver S.A.',
                html: "<div style='border: 2px solid darkblue;border-radius: 2em;display: flex;flex-direction: column; justify-content: center;align-items: center; color: darkblue;'><h1 style='color:darkblue;'>Bienvenido a los servicios de Concesionaria Silver</h1><br><h2>"+cliente.nombre+" "+cliente.apellido+" gracias por reservar un turno en nuestro taller</h2><br><p> Sera atendido para el service de "+kilometraje+"km el dia:</p>        <br><h3><strong>"+dia+" a las "+horaInicio+"</strong> </h3> <br><p>Se tolerara solo 15 minutos de espera al tiempo asignado al turno.</p><br><p> Si usted no pidio ningun turno con nosotros por favor ignore este mail.</p><br><p>Saludos.</p>       <br><h2><strong>Concesionaria Silver</strong></h2><br><p>"+fechaEnvio+"</p> </div>"
            }
            
            var transport=nodemailer.createTransport({
                host: process.env.SMTP_HOST,
                port: process.env.SMTP_PORT,
                auth:{
                user:process.env.SMTP_USER,
                pass:process.env.SMTP_PASS
                }
            });
            
            var info=await transport.sendMail(obj1);

            res.render('taller/calendario',{
                layout:'taller/layout',
                message:'Mensaje enviado correctamente',
                turnoExitoso:true,
                mensaje:'Su turno se ha registrado exitosamente. Le enviamos por mail un recordatorio del turno',
                nombre:cliente.nombre,
                apellido:cliente.apellido
            });

        }else{
            
            if(data1!=undefined){
                data=data1;
            }else if (data2!=undefined){
                data=data2;
            }else if (data3!=undefined){
                data=data3;
            }
            

            var turnoTomado= await calendarioModel.getTurnosById(data.id);
            h4=turnoTomado.horaInicio;
            h5=turnoTomado.horaFinal;
            
            mensaje="En el horario de "+h4.slice(0,-3)+"hs a "+h5.slice(0,-3)+"hs el taller se encuentra ocupado. Por favor intente agendar otro turno.";
            
            res.render('taller/calendario',{
                layout:'taller/layout',
                title: 'Turnos',
                dia:dia,
                hora:horaInicio,
                combustible:combustibleCombobox,
                service:ser,
                mensaje:mensaje,
                nombre:nombre,
                apellido:apellido,
                modelo:modelo
            })
        }
        

        
    }catch(error){
        console.log(error);
        res.redirect('/taller');

    }
        
});

module.exports=router;