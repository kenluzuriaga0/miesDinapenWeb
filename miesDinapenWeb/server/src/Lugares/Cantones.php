<?php
    require_once "../Modelos.php";
    
    class Cantones{

        public static function getAllCantones() {
            $db = new Connection();
            $query = "SELECT * FROM ListaIDCantones ";
            $resultado = $db->query($query);
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()) {
                    $datos[]=[
                        'IDCanton' => $row['IDCanton'],
                        'Canton' => $row['Canton'],
                        'IDProvincia' => $row['IDProvincia']
                    ];
                }
                return $datos;
            }
            return $datos;
        }

    

    }
