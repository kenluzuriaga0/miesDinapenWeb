<?php
    //header("Access-Control-Allow-Origin: https://miesdinapen.cf");
    header("Access-Control-Allow-Origin: http://localhost:4200");
    header('Content-Type: application/json;charset=utf-8');  
    header("Access-Control-Allow-Headers: X-API-KEY, Origin,  Content-Type, Accept, Access-Control-Request-Method");
    $bd = include_once "db.php";
    require_once "ListasDinamicas.php";

    $idList = $_GET['idLista'];
    if($idList=="act") {
        echo json_encode(ListasDinamicas::getTipoActividad());
    }elseif ($idList=="cac") {
        echo json_encode(ListasDinamicas::getCabelloColor());
    }elseif ($idList=="cat") {
        echo json_encode(ListasDinamicas::getCabelloTipo());
    }elseif ($idList=="cir") {
        echo json_encode(ListasDinamicas::getCircunstancia());
    }elseif ($idList=="com") {
        echo json_encode(ListasDinamicas::getCondicionMedica());
    }elseif ($idList=="con") {
        echo json_encode(ListasDinamicas::getCondicion());
    }elseif ($idList=="cnt") {
        echo json_encode(ListasDinamicas::getContextura());
    }elseif ($idList=="dis") {
        echo json_encode(ListasDinamicas::getDiscapacidad());
    }elseif ($idList=="eci") {
        echo json_encode(ListasDinamicas::getEstadoCivil());
    }elseif ($idList=="eta") {
        echo json_encode(ListasDinamicas::getEstatura());
    }elseif ($idList=="est") {
        echo json_encode(ListasDinamicas::getEstudio());
    }elseif ($idList=="etn") {
        echo json_encode(ListasDinamicas::getEtnia());
    }elseif ($idList=="exp") {
        echo json_encode(ListasDinamicas::getExposicion());
    }elseif ($idList=="gen") {
        echo json_encode(ListasDinamicas::getGenero());
    }elseif ($idList=="ins") {
        echo json_encode(ListasDinamicas::getInstitucion());
    }elseif ($idList=="nac") {
        echo json_encode(ListasDinamicas::getNacionalidad());
    }elseif ($idList=="par") {
        echo json_encode(ListasDinamicas::getParentezco());
    }

    /*
    actividadTipo = "act"
    cabelloColor = "cac"
    cabelloTipo = "cat"
    circunstancia = "cir"
    condicionmedica = "com"
    condicion = "con"
    contextura = "cnt"
    discapacidad = "dis"
    estadocivil = "eci"
    estatura = "eta"
    estudio = "est"
    etnia = "etn"
    exposicion  = "exp"
    genero = "gen"
    instituciones = "ins"
    nacionalidad = "nac"
    parentesco = "par"
    */