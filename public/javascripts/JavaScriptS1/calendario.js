let combustibleCombo=document.querySelector(".combustibleCombo");
let serviceCombo=document.querySelector(".serviceCombo");
let tareasTitulo=document.querySelector(".tareasTitulo");
let tareas=document.querySelector(".tareas");
let hora=document.querySelector(".hora");




combustibleCombo.addEventListener("change",function(){
    combustible=combustibleCombo.value;
    if(combustible==1){
        

        let servExistentes=document.querySelectorAll(".serviceComboKm2");

        for(let serViejos of servExistentes){    
            serviceCombo.removeChild(serViejos);
        }

        let im1 = document.createElement('option');
        im1.setAttribute("value","15000kmn"); 
        im1.textContent="15000km";
        im1.classList.add("serviceComboKm1");
        serviceCombo.appendChild(im1); 
              
                

        let im2 = document.createElement('option');
        im2.setAttribute("value","30000kmn"); 
        im2.textContent="30000km";
        im2.classList.add("serviceComboKm1");
        serviceCombo.appendChild(im2); 
        

        let im3 = document.createElement('option');
        im3.setAttribute("value","45000kmn"); 
        im3.textContent="45000km";
        im3.classList.add("serviceComboKm1");
        serviceCombo.appendChild(im3); 
       

        let im4 = document.createElement('option');
        im4.setAttribute("value","65000kmn"); 
        im4.textContent="60000km";
        im4.classList.add("serviceComboKm1");
        serviceCombo.appendChild(im4); 
        
    }

    if(combustible==2){
       

        let servExistentes=document.querySelectorAll(".serviceComboKm1");

        for(let serViejos of servExistentes){    
            
            serviceCombo.removeChild(serViejos);
        }
        

        let im1 = document.createElement('option');
        im1.setAttribute("value","10000kmd"); 
        im1.textContent="10000km";
        im1.classList.add("serviceComboKm2");
        serviceCombo.appendChild(im1); 
              
                

        let im2 = document.createElement('option');
        im2.setAttribute("value","20000kmd"); 
        im2.textContent="20000km";
        im2.classList.add("serviceComboKm2");
        serviceCombo.appendChild(im2); 
        

        let im3 = document.createElement('option');
        im3.setAttribute("value","30000kmd"); 
        im3.textContent="30000km";
        im3.classList.add("serviceComboKm2");
        serviceCombo.appendChild(im3); 
       

        let im4 = document.createElement('option');
        im4.setAttribute("value","40000kmd"); 
        im4.textContent="40000km";
        im4.classList.add("serviceComboKm2");
        serviceCombo.appendChild(im4); 
        
    }
    
});

serviceCombo.addEventListener("change",function(){
    combustible=combustibleCombo.value;
    service=serviceCombo.selectedIndex;
    if(combustible==1){

        tareasTitulo.textContent="Service vehiculos nafteros";
        if(service==1){
            tareas.innerHTML="Inspección <br> Cambio de aceite y filtro aceite<br> Cambio de filtro de aire <br>"
        }
        if(service==2){
            tareas.innerHTML="Mantenimiento preventivo <br> Cambio de aceite y filtro aceite<br> Cambio de filtro de aire <br>Cambio de filtro de combustible <br>Cambio de filtro de polen <br>"
        }
        if(service==3){
            tareas.innerHTML="Inspección <br> Cambio de aceite y filtro aceite<br> Cambio de filtro de aire <br>"
        }
        if(service==4){
            tareas.innerHTML="Mantenimiento preventivo <br> Cambio de aceite y filtro aceite<br> Cambio de filtro de aire <br>Cambio de filtro de combustible <br>Cambio de filtro de polen <br>"
        }

        
    }
    if(combustible==2){
        tareasTitulo.textContent="Service vehiculos diesel";

        if(service==1){
            tareas.innerHTML="Inspección <br> Cambio de aceite y filtro aceite<br> Cambio de filtro de aire <br>"
        }
        if(service==2){
            tareas.innerHTML="Inspección <br> Cambio de aceite y filtro aceite<br> Cambio de filtro de aire <br>"
        }
        if(service==3){
            tareas.innerHTML="Mantenimiento preventivo <br> Cambio de aceite y filtro aceite<br> Cambio de filtro de aire <br>Cambio de filtro de combustible <br>Cambio de filtro de polen <br>"
        }
        if(service==4){
            tareas.innerHTML="Inspección <br> Cambio de aceite y filtro aceite<br> Cambio de filtro de aire <br>"
        }
    }
    
});

hora.addEventListener("change",function(){

horaElegida=hora.value.split(':');

if(horaElegida[1]<'30' && horaElegida[1]!='00'){
    minutos='00';
}
if(horaElegida[1]>='30'){
    minutos='30';
}


horaFinal=horaElegida[0]+":"+minutos;

if(horaElegida[0]<'09'){
    alert("Nuestro horario de atención es de 9am a 17hs");
    horaFinal='00:00';
}

if(horaElegida[0]>'16'){
    alert("Nuestro horario de atención es de 9am a 17pm");
    horaFinal='00:00';
}

hora.value=horaFinal;

});


