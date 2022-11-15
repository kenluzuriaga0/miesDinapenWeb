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
        public static function insert($IDProvincia,$Provincia, $IDNacionalidad) {
            $db = new Connection();
            $query = "INSERT INTO ListaIDProvincias (IDProvincia,Provincia,IDNacionalidad)
             VALUES($IDProvincia,'$Provincia', ".($IDNacionalidad? : 0).")";
            if($db->query($query)=== TRUE) {
                return TRUE;
            }
            echo $db->error."\n";
            return FALSE;
        }

        public static function update($IDProvincia,$Provincia, $IDNacionalidad) {
            $db = new Connection();
            $query = "UPDATE ListaIDProvincias SET 
            IDProvincia=".($IDProvincia? : 'NULL').",IDNacionalidad=".($IDNacionalidad? : 'NULL').", Provincia='$Provincia'
            WHERE IDProvincia=$IDProvincia";
            $db->query($query);
            if($db->affected_rows>0) {
                return TRUE;
            }
            echo $db->error."\n";
            return FALSE;
        }
    }