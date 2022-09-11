<?php
    header("Access-Control-Allow-Origin: https://miesdinapen.cf");
    header("Access-Control-Allow-Origin: http://localhost:4200");
    header('Content-Type: application/json;charset=utf-8');  
    header("Access-Control-Allow-Headers: X-API-KEY, Origin,  Content-Type, Accept, Access-Control-Request-Method");
   
    include_once "../db.php";
    require_once "Audios.php";
    
    $datos = json_decode(file_get_contents('php://input'));
    if($datos != NULL) {
        if(Audio::insert($datos->IDIntervencion, $datos->Audio, $datos->FechaRegistro)) {
        }else {
            echo json_encode(['Error' => FALSE]);
        }
    }else {
        echo json_encode(['Error' => FALSE]);
    }