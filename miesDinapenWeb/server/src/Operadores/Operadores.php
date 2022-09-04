<?php
    require_once "../Modelos.php";
    
    class Operadores{

        public static function getAllOperadores() {
            $db = new Connection();
            $query = "SELECT * FROM ListaIDOperadores";
            $resultado = $db->query($query);
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()) {
                    $datos[]=[
                        'IDOperador' => $row['IDOperador'],
                        'IDInstitucion' => $row['IDInstitucion'],
                        'OperaCargo' => $row['OperaCargo'],
                        'OperaNCedula' => $row['OperaNCedula'],
                        'OperaApellido1' => $row['OperaApellido1'],
                        'OperaApellido2' => $row['OperaApellido2'],
                        'OperaNombres' => $row['OperaNombres']
                    ];
                }
                return $datos;
            }
            return $datos;
        }

    

    }
