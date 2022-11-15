<?php
    require_once "../Modelos.php";
    class Parroquias{

        public static function getAllParroquias() {
            $db = new Connection();
            $query = "SELECT * FROM ListaIDParroquias  AS parr
            INNER JOIN ListaIDCantones AS can ON can.IDCanton = parr.IDCanton
            INNER JOIN ListaIDProvincias AS prov ON can.IDProvincia = prov.IDProvincia
            ORDER BY parr.Parroquia";

            $resultado = $db->query($query);
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()) {
                    $provincia = new ProvinciaModel($row['IDProvincia'],$row['Provincia'],$row['IDNacionalidad']);
                    $canton = new CantonModel($row['IDCanton'],$row['Canton'],$provincia);

                    $datos[]=[
                        'IDParroquia' => $row['IDParroquia'],
                        'Parroquia' => $row['Parroquia'],
                        'canton' => $canton
                    ];
                }
                return $datos;
            }
            return $datos;
        }

        public static function insert($IDParroquia,$Parroquia, $IDCanton) {
            $db = new Connection();
            $query = "INSERT INTO ListaIDParroquias (IDParroquia,Parroquia,IDCanton)
            VALUES($IDParroquia,'$Parroquia', $IDCanton)";
            if($db->query($query)=== TRUE) {
                return TRUE;
            }
            echo $db->error."\n";
            return FALSE;
        }
        
        public static function update($IDParroquia,$Parroquia, $IDCanton) {
            $db = new Connection();
            $query = "UPDATE ListaIDParroquias SET 
            IDParroquia=".($IDParroquia? : 'NULL').",IDCanton=".($IDCanton? : 'NULL')." , Parroquia='$Parroquia'
            WHERE IDParroquia=$IDParroquia";
            $db->query($query);
            if($db->affected_rows>0) {
                return TRUE;
            }
            echo $db->error."\n";
            return FALSE;
        }
    }