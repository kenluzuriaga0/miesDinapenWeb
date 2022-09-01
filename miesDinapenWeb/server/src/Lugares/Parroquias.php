<?php
    //require_once "db.php";
    class Parroquias{

        public static function getAllParroquias($id_act) {
            $db = new Connection();
            $query = "SELECT * FROM ListaIDParroquias";
            $resultado = $db->query($query);
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()) {
                    $datos[]=[
                        'IDParroquia' => $row['IDParroquia'],
                        'Parroquia' => $row['Parroquia']
                    ];
                }
                return $datos;
            }
            return $datos;
        }

    }