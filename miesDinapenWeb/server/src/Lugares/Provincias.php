<?php
    //require_once "db.php";
    class Cantones{

        public static function getAllCantones($id_act) {
            $db = new Connection();
            $query = "SELECT * FROM ListaIDCantones";
            $resultado = $db->query($query);
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()) {
                    $datos[]=[
                        'IDCanton' => $row['IDCanton'],
                        'Canton' => $row['Canton']
                    ];
                }
                return $datos;
            }
            return $datos;
        }

    }