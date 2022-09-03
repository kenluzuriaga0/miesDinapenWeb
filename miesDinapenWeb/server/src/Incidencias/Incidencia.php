<?php
    require_once "../Modelos.php";
    
    class Incidencia{

        public static function insert($IDOperador, $IDOrganCoo, $IDPersona, $Latitud, $Longitud, $FechaRegistro) {
            $db = new Connection();
            $query = "INSERT INTO Intervenciones (IDOperador,IDOrganCooperante,IDPersonaIntervenida,Latitud,Longitud,FechaRegistro)
            VALUES('".$IDOperador."', '".$IDOrganCoo."', '".$IDPersona."', '".$Latitud."', '".$Longitud."', '".$FechaRegistro."')";
            if($db->query($query)=== TRUE) {
                echo "incidencia_" . $db->insert_id;
                return TRUE;
            }
            echo $db->error."\n";
            return FALSE;
        }
    }
