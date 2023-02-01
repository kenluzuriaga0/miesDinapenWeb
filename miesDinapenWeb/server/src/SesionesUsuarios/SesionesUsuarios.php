<?php
    //require_once "db.php";
    class SesionesUsuarios{

        public static function getUsuarioActual($token_web_logged) {
            $db = new Connection();
            $query = "SELECT * FROM sesiones_usuarios_tb WHERE token_web_logged = '$token_web_logged'";
            $resultado = $db->query($query);
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()) {
                    $datos[]=[
                        'IDOperador' => $row['IDOperador'],
                        'tokenWebLogged' => $row['token_web_logged'],
                        'expiredTokenWeb' => $row['expired_token_web']
                    ];
                }
                return $datos;
            }
            return $datos;
        }
    }