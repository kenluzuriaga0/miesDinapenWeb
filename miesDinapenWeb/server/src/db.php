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
/*
$contraseña = "12345"; #FacIndustrial
$usuario = "root"; #miesdinapen_root
$nombre_base_de_datos = "miesdinapen_MiesDinapen";
try {
    return new PDO('mysql:host=192.168.100.181;dbname=' . $nombre_base_de_datos, $usuario, $contraseña);
} catch (Exception $e) {
    echo "Ocurrió algo con la base de datos: " . $e->getMessage();
}
*/
class Connection extends Mysqli {
    function __construct() {
        parent::__construct('192.168.100.181', 'root', '12345', 'miesdinapen_MiesDinapen');
        $this->set_charset('utf8');
        $this->connect_error == NULL ? 'Conexión exítosa a la DB' : die('Error al conectarse a la BD');
    }//end __construct
}//end class Connection