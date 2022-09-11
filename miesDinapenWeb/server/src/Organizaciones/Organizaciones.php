<?php
    require_once "../Modelos.php";
    class Organizacion{

        public static function getAllOrganizaciones() {
            $db = new Connection();
            $query = "SELECT * FROM ListaIDOrganizacionesCoope as o
            INNER JOIN ListaIDProvincias as p ON o.IDProvincia = p.IDProvincia
            INNER JOIN ListaIDCantones as c ON c.IDCanton = o.IDCanton
            INNER JOIN ListaIDParroquias as par ON par.IDParroquia = o.IDParroquia
            INNER JOIN ListaIDTipoOrganizacion as t ON t.IDTipoOrganizacion = o.IDTipoOrganizacion";
            $resultado = $db->query($query);
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()) {
                    $provincia = new ProvinciaModel($row['IDProvincia'],$row['Provincia'],$row['IDNacionalidad']);
                    $canton = new CantonModel($row['IDCanton'],$row['Canton'],null);
                    $parroquia = new ParroquiaModel($row['IDParroquia'],$row['Parroquia'],$row['IDCanton']);
                    $tipo = new TipoOrganizacionesModel($row['IDTipoOrganizacion'],$row['TipoOrganizacion']);

                    $datos[]=[
                        'IDOrganizacion' => $row['IDOrganizacion'],
                        'Organizacion' => $row['Organizacion'],
                        'Zona' => $row['Zona'],
                        'provincia' => $provincia,
                        'canton' => $canton,
                        'parroquia' => $parroquia,
                        'tipo' => $tipo
                    ];
                }
                return $datos;
            }
            return $datos;
        }

        public static function insert($Organizacion, $Zona,$provincia, $canton,$parroquia, $tipo) {
            $db = new Connection();
            $query = "INSERT INTO ListaIDOrganizacionesCoope (Organizacion,Zona,IDProvincia,IDCanton,IDParroquia,IDTipoOrganizacion)
            VALUES('$Organizacion', ".($Zona? : 0).", $provincia  , $canton, $parroquia , $tipo)";
            if($db->query($query)=== TRUE) {
                return TRUE;
            }
            echo $db->error."\n";
            return FALSE;
        }

    }