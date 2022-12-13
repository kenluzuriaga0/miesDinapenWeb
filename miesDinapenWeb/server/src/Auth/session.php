<?php
    header("Access-Control-Allow-Origin: https://miesdinapen.tk");
    header("Access-Control-Allow-Origin: http://localhost:4200");
    header('Content-Type: application/json;charset=utf-8');  
    header("Access-Control-Allow-Headers: X-API-KEY, Origin,  Content-Type, Accept, Access-Control-Request-Method");
   
    include_once "../db.php";
    require_once "Auth.php";

    if(isset($_GET['token'])) {
        $result = Auth::checkSession($_GET['token']);
        echo json_encode(['Success' => $result, 'Access' => $result ]);
    } else {
        echo json_encode(['Success' => false, 'Access' => false, 'Message' => 'Access token not found']);
    }