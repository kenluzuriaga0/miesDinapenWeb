<?php

            //header("Access-Control-Allow-Origin: https://miesdinapen.cf");
            $bd = include_once "db.php";

            $sentencia = $bd->query("select IDTipoActividad, TipoActividad from ListaIDTipoActividad");
            $datos = [];
            echo $sentencia->num_rows;
            echo "Hola";
            if($sentencia->num_rows){
                while($row = $sentencia->fetch_assoc()){
                    $datos[]=[
                        'idTipoActividad' => $row['IDTipoActividad'],
                        'tipoActividad' => $row['TipoActividad']
                    ];
                    echo "AAAA";
                }
            }
            $datos = $sentencia->fetchAll(PDO::FETCH_OBJ);
            echo json_encode($datos);

        