<?php
    header("Access-Control-Allow-Origin: https://miesdinapen.tk");
    header("Access-Control-Allow-Origin: http://localhost:4200");
    header('Content-Type: application/json;charset=utf-8');  
    header("Access-Control-Allow-Headers: X-API-KEY, Origin,  Content-Type, Accept, Access-Control-Request-Method");
   
    include_once "../db.php";
    require_once "Personas.php";
    
    $datos = json_decode(file_get_contents('php://input'));
    if($datos != NULL) {
        if(Personas::update($datos->IDPersona,$datos->cabelloColor->IDColorCabello,$datos->cabelloTipo->IDCabelloTipo,
        $datos->contextura->IDContextura,$datos->estatura->IDEstatura,$datos->CondicionMedica->IDCondicionMedica,$datos->Enfermedad,$datos->LugarAtencionMedica)) {
        }else {
            echo json_encode(['actualizado' => FALSE]);
        }
    }else {
        echo json_encode(['Error' => FALSE]);
    }