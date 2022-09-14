<?php
    header("Access-Control-Allow-Origin: https://miesdinapen.tk");
    header("Access-Control-Allow-Origin: http://localhost:4200");
    header('Content-Type: application/json;charset=utf-8');  
    header("Access-Control-Allow-Headers: X-API-KEY, Origin,  Content-Type, Accept, Access-Control-Request-Method");
   
    include_once "../../db.php";
    require_once "IncidenciaActividad.php";

    if(isset($_GET['idIntervencion'])) {
        echo json_encode(IncidenciaActividad::getIntervencionesActividadById($_GET['idIntervencion']));
    }