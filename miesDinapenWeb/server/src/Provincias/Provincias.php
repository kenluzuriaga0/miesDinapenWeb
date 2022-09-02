<?php
    //require_once "db.php";
    class Provincias{

        public static function getAllProvincias() {
            $db = new Connection();
            $query = "SELECT * FROM ListaIDProvincias";
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
    }