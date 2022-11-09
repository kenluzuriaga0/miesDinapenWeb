<?php
    require_once "../Modelos.php";
    
    class Fotos{

        public static function insert($IDIntervencion, $FotoIncidente,$FechaRegistro) {
            $db = new Connection();
            $query = "INSERT INTO IntervencionesFotos (IDIntervencion,FotoIncidente,FechaRegistro)
            VALUES('".$IDIntervencion."', '".$FotoIncidente."', '".$FechaRegistro."')";
            if($db->query($query)=== TRUE) {
                echo "Insert Winner" . $db->insert_id;
                return TRUE;
            }
            echo $db->error."\n";
            return FALSE;
        }

        public static function getFotosByIntervencion($IDIntervencion) {
            $db = new Connection();
            $query = "SELECT * FROM IntervencionesFotos WHERE IDIntervencion = $IDIntervencion";
            $resultado = $db->query($query);
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()) {
                    $datos[]=[
                        'IDIntervencion' => $row['IDIntervencion'],
                        'FotoIncidente' => $row['FotoIncidente'],
                        'FechaRegistro' => $row['FechaRegistro'],
                    ];
                }
                return $datos;
            }
            return $datos;
        }

        public static function updatePhotoPerson($IDPersona, $urlPath) {
            $db = new Connection();
            $query = "UPDATE ListaIDPersonas SET Fotos_Personas = '".$urlPath."' WHERE IDPersona = $IDPersona";
            if($db->query($query)=== TRUE) {
                return TRUE;
            }
           
            return FALSE;
        }
        
    }
