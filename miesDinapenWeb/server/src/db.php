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

class Connection extends Mysqli {
    function __construct() {
        parent::__construct('localhost', 'root', '12345', 'miesdinapen_MiesDinapen');
        //parent::__construct('148.72.177.172', 'miesdinapen_root', 'FacIndustrial', 'miesdinapen_zzMiesDinapen');
        $this->set_charset('utf8');
        $this->connect_error == NULL ? 'Conexión exítosa a la DB' : die('Error al conectarse a la BD');
    }
}