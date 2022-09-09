<?php
    //require_once "db.php";
    class Provincias{

        public static function getAllProvincias() {
            $db = new Connection();
            $query = "SELECT * FROM ListaIDProvincias ORDER BY Provincia asc";
            $resultado = $db->query($query);
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()) {
                    $datos[]=[
                        'IDProvincia' => $row['IDProvincia'],
                        'Provincia' => $row['Provincia']
                    ];
                }
                return $datos;
            }
            return $datos;
        }
        public static function insert($Provincia, $IDNacionalidad) {
            $db = new Connection();
            $query = "INSERT INTO ListaIDProvincias (Provincia,IDNacionalidad)
             VALUES('$Provincia', $IDNacionalidad)";
            if($db->query($query)=== TRUE) {
                return TRUE;
            }
            echo $db->error."\n";
            return FALSE;
        }
    }