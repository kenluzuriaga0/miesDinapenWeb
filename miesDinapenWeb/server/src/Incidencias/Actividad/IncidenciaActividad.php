<?php
    require_once "../../Modelos.php";
    
    class IncidenciaActividad{

        public static function insert($IDIntervencion, $IDTipoActividad) {
            $db = new Connection();
            $query = "INSERT INTO IntervencionesTipoActividad (IDIntervencion,IDTipoActividad)
            VALUES($IDIntervencion, $IDTipoActividad)";
            if($db->query($query)=== TRUE) {
                return TRUE;
            }
            echo $db->error."\n";
            return FALSE;
        }

        public static function getIntervencionesActividadById($IDIntervencion) {
            $db = new Connection();
            $query = "SELECT * FROM IntervencionesTipoActividad WHERE IDIntervencion = $IDIntervencion";
            $resultado = $db->query($query);
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()) {
                    $datos[]=[
                        'IDIntervencion' => $row['IDIntervencion'],
                        'IDTipoActividad' => $row['IDTipoActividad']
                    ];
                }
                return $datos;
            }
            return $datos;
        }


        public static function update($IDOperador, $IDPersonaIntervenida) {
            $db = new Connection();
            $query = "UPDATE Intervenciones SET 
            IDOperador=$IDOperador,IDPersonaIntervenida=$IDPersonaIntervenida
            WHERE IDIntervencion=$ID";
            echo $query.'\n';
            $db->query($query);
            if($db->affected_rows>0) {
                echo "Actualizado";
                return TRUE;
            }
            echo $db->error."\n";
            return FALSE;
        }
    }
