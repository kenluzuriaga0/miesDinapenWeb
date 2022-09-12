<?php
    header("Access-Control-Allow-Origin: https://miesdinapen.cf");
    header("Access-Control-Allow-Origin: http://localhost:4200");
    header('Content-Type: application/json;charset=utf-8');  
    header("Access-Control-Allow-Headers: X-API-KEY, Origin,  Content-Type, Accept, Access-Control-Request-Method");
   
    include_once "../db.php";
    require_once "Personas.php";
    
    $datos = json_decode(file_get_contents('php://input'));
    if($datos != NULL) {
        if(Personas::insert($datos->Apellido1, $datos->Apellido2, $datos->Nombre1, 
        $datos->Nombre2, $datos->Cedula, $datos->FechaNacim, $datos->genero,$datos->nacionalidad,$datos->parroquia,
        $datos->etnia,$datos->estadoCivil, $datos->GrupoEtario, $datos->canton, $datos->provincia,$datos->discapacidad, $datos->nivelDiscapacidad)) {
        }else {
            echo json_encode(['insert' => FALSE]);
        }
    }else {
        echo json_encode(['insert' => FALSE]);
    }