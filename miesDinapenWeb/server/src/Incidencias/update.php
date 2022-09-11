<?php
    header("Access-Control-Allow-Origin: https://miesdinapen.cf");
    header("Access-Control-Allow-Origin: http://localhost:4200");
    header('Content-Type: application/json;charset=utf-8');  
    header("Access-Control-Allow-Headers: X-API-KEY, Origin,  Content-Type, Accept, Access-Control-Request-Method");
   
    include_once "../db.php";
    require_once "Incidencia.php";
    
    $datos = json_decode(file_get_contents('php://input'));
    if($datos != NULL) {
        if(Incidencia::update($datos->operador->IDOperador,  $datos->persona->IDPersona, $datos->organizacion->IDOrganizacion,$datos->FechaIntervencion,  $datos->IDIntervencion,
        $datos->NumPerGrupo,$datos->DerivEspecifi,$datos->IDEstudio,$datos->NoEstudio,$datos->UltAnioEstudio,$datos->InsEduEstudio,
        $datos->NumHijos,$datos->IDViveCon,$datos->IDCircunstancia,$datos->IDCondicion)) {
        }else {
            echo json_encode(['actualizado' => FALSE]);
        }
    }else {
        echo json_encode(['Error' => FALSE]);
    }