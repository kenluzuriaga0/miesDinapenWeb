<?php
    require_once "../Modelos.php";
    
    class Personas{

        public static function getAllPersonas() {
            $db = new Connection();
            $query = "SELECT * FROM ListaIDPersonas";
            $resultado = $db->query($query);
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()) {
                    $datos[]=[
                        'IDPersona' => $row['IDPersona'],
                        'Apellido1' => $row['Apellido1'],
                        'Apellido2' => $row['Apellido2'],
                        'Nombre1' => $row['Nombre1'],
                        'Nombre2' => $row['Nombre2'],
                        'Cedula' => $row['Cedula'],
                        'FechaNacim' => $row['FechaNacim']
                    ];
                }
                return $datos;
            }
            return $datos;
        }

        public static function getPersonaByCedula($cedula) {
            $db = new Connection();
            $query = "SELECT * FROM ListaIDPersonas where Cedula = ?";
            $stmt = $db->prepare($query); // evitar SQL Injections
            $stmt->bind_param('s', $cedula);
            $stmt->execute();
            $resultado = $stmt->get_result();
            
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()) {
                    $datos[]=[
                        'IDPersona' => $row['IDPersona'],
                        'Apellido1' => $row['Apellido1'],
                        'Apellido2' => $row['Apellido2'],
                        'Nombre1' => $row['Nombre1'],
                        'Nombre2' => $row['Nombre2'],
                        'Cedula' => $row['Cedula'],
                        'FechaNacim' => $row['FechaNacim']
                    ];
                }
                return $datos;
            }
            return $datos;
        }

        public static function getPersonaByName($apellido1, $nombre1) {
            $db = new Connection();
            $query = "SELECT * FROM ListaIDPersonas where Apellido1 LIKE '%$apellido1%' AND Nombre1 LIKE '%$nombre1%'";
            $resultado = $db->query($query);
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()) {
                    $datos[]=[
                        'IDPersona' => $row['IDPersona'],
                        'Apellido1' => $row['Apellido1'],
                        'Apellido2' => $row['Apellido2'],
                        'Nombre1' => $row['Nombre1'],
                        'Nombre2' => $row['Nombre2'],
                        'Cedula' => $row['Cedula'],
                        'FechaNacim' => $row['FechaNacim']
                    ];
                }
                return $datos;
            }
            return $datos;
        }
    }
