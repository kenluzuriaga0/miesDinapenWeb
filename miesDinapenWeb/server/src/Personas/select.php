<?php
    //header("Access-Control-Allow-Origin: https://miesdinapen.cf");
    header("Access-Control-Allow-Origin: http://localhost:4200");
    header('Content-Type: application/json;charset=utf-8');  
    header("Access-Control-Allow-Headers: X-API-KEY, Origin,  Content-Type, Accept, Access-Control-Request-Method");
   
    include_once "../db.php";
    require_once "Personas.php";

    if(isset($_GET['cedula'])) {
        echo json_encode(Personas::getPersonaByCedula($_GET['cedula']));
    }elseif(isset($_GET['last']) or isset($_GET['name'])){
        echo json_encode(Personas::getPersonaByName($_GET['last'],$_GET['name']));
    }else{
        echo json_encode(Personas::getAllPersonas());
    }