<?php
/*
    Ken Luzuriaga - Universidad de Guayaquil
                                        
    888     888  .d8888b.  
    888     888 d88P  Y88b 
    888     888 888    888 
    888     888 888        
    888     888 888  88888 
    888     888 888    888 
    Y88b. .d88P Y88b  d88P 
    "Y88888P"   "Y8888P88 
                                         
*/ ?>
<?php
$contraseña = "12345"; #FacIndustrial
$usuario = "root"; #miesdinapen_root
$nombre_base_de_datos = "miesdinapen_MiesDinapen";
try {
    return new PDO('mysql:host=192.168.100.162;dbname=' . $nombre_base_de_datos, $usuario, $contraseña);
} catch (Exception $e) {
    echo "Ocurrió algo con la base de datos: " . $e->getMessage();
}
