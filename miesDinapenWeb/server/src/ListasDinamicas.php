<?php
    //require_once "db.php";
    class ListasDinamicas{

        public static function getWhere($id_act) {
            $db = new Connection();
            $query = "SELECT * FROM ListaIDTipoActividad WHERE idTipoActividad=$id_act";
            $resultado = $db->query($query);
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()) {
                    $datos[]=[
                        'IdTipoActividad' => $row['IDTipoActividad'],
                        'TipoActividad' => $row['TipoActividad']
                    ];
                }
                return $datos;
            }
            return $datos;
        }

        public static function getAllTipoActividad() {
            $db = new Connection();
            $query = "SELECT * FROM ListaIDTipoActividad";
            $resultado = $db->query($query);
            
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()){
                    $datos[]=[
                        'IdTipoActividad' => $row['IDTipoActividad'],
                        'TipoActividad' => $row['TipoActividad']
                    ];
                }
                return $datos;
            }//end if
            return $datos;
        }//end getAll

        public static function getCabelloColor(){
            header("Access-Control-Allow-Origin: https://miesdinapen.cf");
            $db = new Connection();
            
            $resultado = $db->query("SELECT * FROM ListaIDCabelloColor");
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()){
                    $datos[]=[
                        'IDColorCabello' => $row['IDColorCabello'],
                        'ColorCabello' => $row['ColorCabello']
                    ];
                }
                return $datos;
            }//end if
            return $datos;
        }

        public static function getCabelloTipo(){
            header("Access-Control-Allow-Origin: https://miesdinapen.cf");
            $db = new Connection();
            
            $sentencia = $db->query("select * from ListaIDCabelloTipo");
            $tipoCabello = $sentencia->fetchAll(PDO::FETCH_OBJ);
            return json_encode($tipoCabello);
        }
    }
