<?php
    header("Access-Control-Allow-Origin: https://miesdinapen.tk");
    header("Access-Control-Allow-Origin: http://localhost:4200");
    header('Content-Type: application/json;charset=utf-8');  
    header("Access-Control-Allow-Headers: X-API-KEY, Origin,  Content-Type, Accept, Access-Control-Request-Method");
   
    include_once "../../db.php";
    require_once "IncidenciaActividad.php";
    
    $datos = json_decode(file_get_contents('php://input'));
    if($datos != NULL) {
        if(IncidenciaActividad::insert($datos->IDIntervencion, $datos->IDTipoActividad)) {
            echo json_encode(['insert' => TRUE]);
        }else {
            echo json_encode(['insert' => FALSE]);
        }
    }else {
        echo json_encode(['insert' => FALSE]);
    }