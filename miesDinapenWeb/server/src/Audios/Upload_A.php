<?php

if($_SERVER['REQUEST_METHOD']=='POST'){
 
    $imagen= $_POST['audio'];
    $nombre = $_POST['nombre'];

    // RUTA DONDE SE GUARDARAN LAS IMAGENES
    $path = "Uploads/$nombre.mp3";

    $actualpath = "https://miesdinapen.tk/api/Archivos/Audios/$path";

    file_put_contents($path, base64_decode($imagen));

    echo "SE SUBIO EXITOSAMENTE";
}
