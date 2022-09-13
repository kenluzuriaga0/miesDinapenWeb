<?php
    require_once "../Modelos.php";
    class TipoOrganizaciones{

        public static function getAllTipoOrganizaciones() {
            $db = new Connection();
            $query = "SELECT * FROM ListaIDTipoOrganizacion";
            $resultado = $db->query($query);
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()) {

                    $datos[]=[
                        'IDTipoOrganizacion' => $row['IDTipoOrganizacion'],
                        'TipoOrganizacion' => $row['TipoOrganizacion']
                    ];
                }
                return $datos;
            }
            return $datos;
        }

        public static function insert($IDTipoOrganizacion,$TipoOrganizacion) {
            $db = new Connection();
            $query = "INSERT INTO ListaIDTipoOrganizacion (IDTipoOrganizacion,TipoOrganizacion)
            VALUES($IDTipoOrganizacion, '$TipoOrganizacion')";
            if($db->query($query)=== TRUE) {
                return TRUE;
            }
            echo $db->error."\n";
            return FALSE;
        }

    }