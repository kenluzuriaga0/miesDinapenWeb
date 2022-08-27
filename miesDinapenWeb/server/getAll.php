<?php
header("Access-Control-Allow-Origin: https://miesdinapen.cf");
$bd = include_once "bd.php";
$sentencia = $bd->query("select IDTipoActividad, TipoActividad from ListaIDTipoActividad");
$mascotas = $sentencia->fetchAll(PDO::FETCH_OBJ);
echo json_encode($mascotas);
