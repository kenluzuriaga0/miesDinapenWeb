<?php
    require_once "../Modelos.php";
    
    class Cantones{

        public static function getAllCantones() {
            $db = new Connection();
            $query = "SELECT * FROM ListaIDCantones AS can
            INNER JOIN ListaIDProvincias AS pro ON pro.IDProvincia = can.IDProvincia";
            $resultado = $db->query($query);
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()) {
                    $provincia = new ProvinciaModel($row['IDProvincia'],$row['Provincia'],$row['IDNacionalidad']);
                    $datos[]=[
                        'IDCanton' => $row['IDCanton'],
                        'Canton' => $row['Canton'],
                        'provincia' => $provincia
                    ];
                }
                return $datos;
            }
            return $datos;
        }

        public static function insert($Canton, $provincia) {
            $db = new Connection();
            $query = "INSERT INTO ListaIDCantones (Canton,provincia)
            VALUES('$Canton, $provincia')";
            if($db->query($query)=== TRUE) {
                return TRUE;
            }
            echo $db->error."\n";
            return FALSE;
        }
    }
