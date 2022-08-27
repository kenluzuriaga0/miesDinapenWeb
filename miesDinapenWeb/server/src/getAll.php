<?php

    class ListasDinamicas{

        public static function getTipoActividad(){
            header("Access-Control-Allow-Origin: https://miesdinapen.cf");
            $bd = include_once "db.php";

            $sentencia = $bd->query("select IDTipoActividad, TipoActividad from ListaIDTipoActividad");
            $datos = [];
            if($sentencia->num_rows){
                while($row = $sentencia->fetch_assoc()){
                    $datos[]=[
                        'idTipoActividad' => $row['IDTipoActividad'],
                        'tipoActividad' => $row['TipoActividad']
                    ];
                }
                return $datos;
            }
            return $datos;
        }

        public static function getCabelloColor(){
            header("Access-Control-Allow-Origin: https://miesdinapen.cf");
            $bd = include_once "db.php";
            
            $sentencia = $bd->query("select * from ListaIDCabelloColor");
            $colorCabello = $sentencia->fetchAll(PDO::FETCH_OBJ);
            return json_encode($colorCabello );
        }

        public static function getCabelloTipo(){
            header("Access-Control-Allow-Origin: https://miesdinapen.cf");
            $bd = include_once "db.php";
            
            $sentencia = $bd->query("select * from ListaIDCabelloTipo");
            $tipoCabello = $sentencia->fetchAll(PDO::FETCH_OBJ);
            return json_encode($tipoCabello);
        }
    }
