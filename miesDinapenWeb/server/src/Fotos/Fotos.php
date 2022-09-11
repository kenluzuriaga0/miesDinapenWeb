<?php
    require_once "../Modelos.php";
    
    class Fotos{

        public static function insert($IDIntervencion, $FotoIncidente,$FechaRegistro) {
            $db = new Connection();
            $query = "INSERT INTO IntervencionesAudios (IDIntervencion,FotoIncidente,FechaRegistro)
            VALUES('".$IDIntervencion."', '".$FotoIncidente."', '".$FechaRegistro."')";
            if($db->query($query)=== TRUE) {
                echo "Insert Winner" . $db->insert_id;
                return TRUE;
            }
            echo $db->error."\n";
            return FALSE;
        }
    }
