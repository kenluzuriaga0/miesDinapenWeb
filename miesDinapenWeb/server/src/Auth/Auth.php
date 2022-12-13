<?php
    
    class Auth {

        public static function login($user, $pwd) {
            $db = new Connection();
            $query = "SELECT * FROM ListaIDOperadores WHERE OperaNCedula = '".$user."' AND password = '".$pwd."'";
            $resultado = $db->query($query);
            $db->close();
            if($resultado->num_rows) {
                date_default_timezone_set("America/Guayaquil");
                $date   = date("Y-m-d H:i:s", strtotime(' + 5 hours'));
                $token = sha1(uniqid(rand(), true));
                $id_operador = $resultado->fetch_assoc()['IDOperador'];
                
                if(Auth::saveSession($id_operador, $token, $date)) {
                    return [ 'Success' => true, 'Message' => 'Acceso Correcto', 'AccessToken' => $token ];
                } else {
                    return [ 'Success' => false, 'Message' => 'Ha ocurrido un error en el acceso, por favor inténtelo nuevamente' ];
                }
            }
            return [ 'Success' => false, 'Message' => 'Ingreso fallido. Usuario / Contraseña incorrecta.' ];
        }


        public static function saveSession($id_operador, $token, $dateTimeExpired) { 
            $db = new Connection();
            $sql_select = "SELECT * FROM sesiones_usuarios_tb WHERE IDOperador = ".$id_operador;
            $result = $db->query($sql_select);
            $query = "";
            if($result->num_rows) { // CLOSE OLD SESSION AND NEW SESSION
                $query = "UPDATE sesiones_usuarios_tb SET token_web_logged = '".$token."', expired_token_web = '".$dateTimeExpired."' WHERE IDOperador = ".$id_operador;
            } else { // INSERT NEW SESSION TOKEN
                $query = "INSERT INTO sesiones_usuarios_tb (IDOperador, token_web_logged, expired_token_web) VALUES(".$id_operador.", '".$token."', '".$dateTimeExpired."')";
            }
            $response = $db->query($query);
            $db->close();
            if($response===true) {
                return true;
            }
            return false;
        }


        public static function checkSession($token) {
            $db = new Connection();
            date_default_timezone_set("America/Guayaquil");
            $dateNow = date("Y-m-d H:i:s");
            $sql_select = "SELECT * FROM sesiones_usuarios_tb WHERE token_web_logged = '".$token."' AND expired_token_web >= '".$dateNow."'";
            $result = $db->query($sql_select);
            if($result->num_rows) {
                // UPDATED DATE TIME EXPIRED
                $id_operador = $result->fetch_assoc()['IDOperador'];
                $dateTimeExpired = date("Y-m-d H:i:s", strtotime(' + 5 hours'));
                $query = "UPDATE sesiones_usuarios_tb SET expired_token_web = '".$dateTimeExpired."' WHERE IDOperador = ".$id_operador;
                $response = $db->query($query);
                $db->close();
                if($response===true) 
                    return true;
            }
            return false;
        }

    }