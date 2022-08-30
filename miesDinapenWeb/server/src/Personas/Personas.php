<?php
    require_once "../Modelos.php";
    
    class Personas{

        public static function getAllPersonas() {
            $db = new Connection();
            $query = "SELECT * FROM ListaIDPersonas as p INNER JOIN ListaIDGeneros as g ON p.IDGenero = g.IDGenero";
            $resultado = $db->query($query);
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()) {
                    $genero = new GeneroModel($row['IDGenero'],$row['Genero']);

                    $datos[]=[
                        'IDPersona' => $row['IDPersona'],
                        'Apellido1' => $row['Apellido1'],
                        'Apellido2' => $row['Apellido2'],
                        'Nombre1' => $row['Nombre1'],
                        'Nombre2' => $row['Nombre2'],
                        'Cedula' => $row['Cedula'],
                        'FechaNacim' => $row['FechaNacim'],
                        'genero'=> $genero
                    ];
                }
                return $datos;
            }
            return $datos;
        }

        public static function getPersonaByCedula($cedula) {
            $db = new Connection();
            $query = "SELECT * FROM ListaIDPersonas as p 
            INNER JOIN ListaIDGeneros as g ON p.IDGenero = g.IDGenero
            LEFT JOIN ListaIDNacionalidades as n ON p.NacIDNacionalidad = n.IDNacionalidad
            LEFT JOIN ListaIDEstadoCivil as e ON p.IDEstadoCivil = e.IDEstadoCivil
            where Cedula = ?";
            $stmt = $db->prepare($query); // evitar SQL Injections
            $stmt->bind_param('s', $cedula);
            $stmt->execute();
            $resultado = $stmt->get_result();
            
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()) {
                    $genero = new GeneroModel($row['IDGenero'],$row['Genero']);
                    $nacionalidad = new NacionalidadModel($row['IDNacionalidad'],$row['Nacionalidad']);
                    $estadoCivil = new EstadoCivilModel($row['IDEstadoCivil'],$row['EstadoCivil']);
                    $datos[]=[
                        'IDPersona' => $row['IDPersona'],
                        'Apellido1' => $row['Apellido1'],
                        'Apellido2' => $row['Apellido2'],
                        'Nombre1' => $row['Nombre1'],
                        'Nombre2' => $row['Nombre2'],
                        'Cedula' => $row['Cedula'],
                        'FechaNacim' => $row['FechaNacim'],
                        'genero'=> $genero,
                        'nacionalidad'=> $nacionalidad,
                        'estadoCivil'=> $estadoCivil
                    ];
                }
                return $datos;
            }
            return $datos;
        }

        public static function getPersonaByName($apellido1, $nombre1) {
            $db = new Connection();
            $query = "SELECT * FROM ListaIDPersonas as p 
            INNER JOIN ListaIDGeneros as g ON p.IDGenero = g.IDGenero
            LEFT JOIN ListaIDNacionalidades as n ON p.NacIDNacionalidad = n.IDNacionalidad
            LEFT JOIN ListaIDEstadoCivil as e ON p.IDEstadoCivil = e.IDEstadoCivil
            where Apellido1 LIKE '%$apellido1%' AND Nombre1 LIKE '%$nombre1%'";
            $resultado = $db->query($query);
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()) {
                    $genero = new GeneroModel($row['IDGenero'],$row['Genero']);
                    $nacionalidad = new NacionalidadModel($row['IDNacionalidad'],$row['Nacionalidad']);
                    $estadoCivil = new EstadoCivilModel($row['IDEstadoCivil'],$row['EstadoCivil']);
                    $datos[]=[
                        'IDPersona' => $row['IDPersona'],
                        'Apellido1' => $row['Apellido1'],
                        'Apellido2' => $row['Apellido2'],
                        'Nombre1' => $row['Nombre1'],
                        'Nombre2' => $row['Nombre2'],
                        'Cedula' => $row['Cedula'],
                        'FechaNacim' => $row['FechaNacim'],
                        'genero'=> $genero,
                        'nacionalidad'=> $nacionalidad,
                        'estadoCivil'=> $estadoCivil
                    ];
                }
                return $datos;
            }
            return $datos;
        }

        public static function insert($last1, $last2, $name1, $name2, $cedula, $fecnac, $genero) {
            $db = new Connection();
            $query = "INSERT INTO ListaIDPersonas (Apellido1,Apellido2,Nombre1,Nombre2,Cedula,FechaNacim,IDGenero)
            VALUES('".$last1."', '".$last2."', '".$name1."', '".$name2."', '".$cedula."', '".$fecnac."', ".$genero->IDGenero.")";
            if($db->query($query)=== TRUE) {
                return TRUE;
            }
            echo $db->error."\n";
            return FALSE;
        }
    }
