<?php
    header("Access-Control-Allow-Origin: https://miesdinapen.tk");
    header("Access-Control-Allow-Origin: http://localhost:4200");
    header('Content-Type: application/json;charset=utf-8');  
    header("Access-Control-Allow-Headers: X-API-KEY, Origin,  Content-Type, Accept, Access-Control-Request-Method");
   
    include_once "../db.php";
    require_once "Incidencia.php";

    //echo json_encode(Incidencia::getAllIntervenciones());

    if(isset($_GET['token'])) {
        echo json_encode(Incidencia::getAllIntervenciones($_GET['token']));
    } else {
        echo json_encode(['Success' => false, 'Message' => 'Access token not found']);
    }