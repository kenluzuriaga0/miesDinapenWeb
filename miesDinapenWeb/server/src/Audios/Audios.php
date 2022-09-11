<?php

    require_once "../Modelos.php";
    
    class Audio{

        public static function insert($IDIntervencion, $Audio,$FechaRegistro) {
            $db = new Connection();
            $query = "INSERT INTO IntervencionesAudios (IDIntervencion,Audio,FechaRegistro)
            VALUES($IDIntervencion, '".$Audio."', '".$FechaRegistro."')";
            echo $query;
            if($db->query($query)=== TRUE) {
                echo "Insert Winner" . $db->insert_id;
                return TRUE;
            }
            echo $db->error."\n";
            return FALSE;
        }
    }
