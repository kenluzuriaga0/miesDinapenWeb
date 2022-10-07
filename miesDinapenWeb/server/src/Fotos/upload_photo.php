<?php

    header("Access-Control-Allow-Origin: https://miesdinapen.tk");
    header("Access-Control-Allow-Origin: http://localhost:4200");
    header('Content-Type: application/json;charset=utf-8');  
    header("Access-Control-Allow-Headers: X-API-KEY, Origin,  Content-Type, Accept, Access-Control-Request-Method");

    include_once "../db.php";
    require_once "Fotos.php";

    if($_SERVER['REQUEST_METHOD']=='POST'){
    
        $idpersona= $_POST['IDPersona'];
        $name = $_POST['Name'];
        $base64Img = $_POST['Base64Encode'];

        // RUTA DONDE SE GUARDARAN LAS IMAGENES
        // $path = "C:/Fotos/Uploads/$name.png";
        // $path = "/Uploads/$name.png";
        $actualpath = "https://miesdinapen.tk/api/Fotos/Uploads/$name.png";

        list(, $base64Img) = explode(';', $base64Img);
        list(, $base64Img) = explode(',', $base64Img);
        $datos = file_put_contents($path, base64_decode($base64Img));

        if($datos != NULL) {
            if(Fotos::updatePhotoPerson($idpersona, $path)) {
                echo json_encode(['Error' => FALSE, 'Message' => 'Imagen almacenada con éxito.', 'Path' => $path ]);
            } else {
                echo json_encode(['Error' => TRUE, 'Message' => 'Error al cargar la foto.']);
            }
        } else {
            echo json_encode(['Error' => TRUE, 'Message' => 'Ha ocurrido un error, por favor inténtelo nuevamente.']);
        }

        // echo "SE SUBIO EXITOSAMENTE";
    }