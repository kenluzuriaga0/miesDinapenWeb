<?php
            //header("Access-Control-Allow-Origin: https://miesdinapen.cf");
            header("Access-Control-Allow-Origin: http://localhost:4200");
            $bd = include_once "db.php";
            header("Access-Control-Allow-Headers: X-API-KEY, Origin,  Content-Type, Accept, Access-Control-Request-Method");

            require_once "ListasDinamicas.php";

            if(isset($_GET['id'])) {
                echo json_encode(ListasDinamicas::getWhere($_GET['id']));
            }//end if
            else {
                echo json_encode(ListasDinamicas::getAllTipoActividad());
            }//end else