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
            LEFT JOIN ListaIDCabelloColor as cc ON p.IDColorCabello = cc.IDColorCabello
            LEFT JOIN ListaIDCabelloTipo as ct ON p.IDCabelloTipo = ct.IDCabelloTipo
            LEFT JOIN ListaIDEstatura as es ON p.IDEstatura = es.IDEstatura
            LEFT JOIN ListaIDContexturas as con ON p.IDContextura = con.IDContextura
            LEFT JOIN ListaIDEtnias as et ON p.IDEtnia = et.IDEtnia
            LEFT JOIN ListaIDProvincias as prov ON p.NacIDProvincia = prov.IDProvincia
            LEFT JOIN ListaIDCantones as cant ON p.NacIDCanton = cant.IDCanton
            LEFT JOIN ListaIDParroquias as parr ON p.NacIDParroquia = parr.IDParroquia
            LEFT JOIN ListaIDDiscapacidad as disc ON p.IDDiscapacidad = disc.IDDiscapacidad
            where Cedula = ?";
            $stmt = $db->prepare($query); // evitar SQL Injections
            $stmt->bind_param('s', $cedula);
            $stmt->execute();
            $resultado = $stmt->get_result();
            
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()) {
                    $genero = new GeneroModel($row['IDGenero'],$row['Genero']);
                    $nacionalidad = new NacionalidadModel($row['NacIDNacionalidad'],$row['Nacionalidad']);
                    $estadoCivil = new EstadoCivilModel($row['IDEstadoCivil'],$row['EstadoCivil']);
                    $cabelloC= new CabelloColorModel($row['IDColorCabello'],$row['ColorCabello']);
                    $cabelloT = new CabelloTipoModel($row['IDCabelloTipo'],$row['CabelloTipo']);
                    $estatura = new EstaturaModel($row['IDEstatura'],$row['Estatura']);
                    $contextura = new ContexturaModel($row['IDContextura'],$row['Contextura']);
                    $etnia = new EtniaModel($row['IDEtnia'],$row['Etnia']);
                    $discapacidad = new DiscapacidadModel($row['IDDiscapacidad'],$row['Discapacidad']);
                    $provincia = new ProvinciaModel($row['NacIDProvincia'],$row['Provincia'],$row['IDNacionalidad']);
                    $canton = new CantonModel($row['NacIDCanton'],$row['Canton'],null);
                    $parroquia = new ParroquiaModel($row['NacIDParroquia'],$row['Parroquia'],$row['IDCanton']);

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
                        'estadoCivil'=> $estadoCivil,
                        'cabelloColor'=> $cabelloC,
                        'cabelloTipo'=> $cabelloT,
                        'estatura'=> $estatura,
                        'contextura'=> $contextura,
                        'etnia'=> $etnia,
                        'discapacidad'=> $discapacidad,
                        'canton'=> $canton,
                        'provincia'=> $provincia,
                        'parroquia'=> $parroquia
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
            LEFT JOIN ListaIDCabelloColor as cc ON p.IDColorCabello = cc.IDColorCabello
            LEFT JOIN ListaIDCabelloTipo as ct ON p.IDCabelloTipo = ct.IDCabelloTipo
            LEFT JOIN ListaIDEstatura as es ON p.IDEstatura = es.IDEstatura
            LEFT JOIN ListaIDContexturas as con ON p.IDContextura = con.IDContextura
            LEFT JOIN ListaIDEtnias as et ON p.IDEtnia = et.IDEtnia
            LEFT JOIN ListaIDProvincias as prov ON p.NacIDProvincia = prov.IDProvincia
            LEFT JOIN ListaIDCantones as cant ON p.NacIDCanton = cant.IDCanton
            LEFT JOIN ListaIDParroquias as parr ON p.NacIDParroquia = parr.IDParroquia
            LEFT JOIN ListaIDDiscapacidad as disc ON p.IDDiscapacidad = disc.IDDiscapacidad
            where Apellido1 LIKE '%$apellido1%' AND Nombre1 LIKE '%$nombre1%'";
            $resultado = $db->query($query);
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()) {
                    $genero = new GeneroModel($row['IDGenero'],$row['Genero']);
                    $nacionalidad = new NacionalidadModel($row['NacIDNacionalidad'],$row['Nacionalidad']);
                    $estadoCivil = new EstadoCivilModel($row['IDEstadoCivil'],$row['EstadoCivil']);
                    $cabelloC= new CabelloColorModel($row['IDColorCabello'],$row['ColorCabello']);
                    $cabelloT = new CabelloTipoModel($row['IDCabelloTipo'],$row['CabelloTipo']);
                    $estatura = new EstaturaModel($row['IDEstatura'],$row['Estatura']);
                    $contextura = new ContexturaModel($row['IDContextura'],$row['Contextura']);
                    $etnia = new EtniaModel($row['IDEtnia'],$row['Etnia']);
                    $discapacidad = new DiscapacidadModel($row['IDDiscapacidad'],$row['Discapacidad']);
                    $provincia = new ProvinciaModel($row['NacIDProvincia'],$row['Provincia'],$row['IDNacionalidad']);
                    $canton = new CantonModel($row['NacIDCanton'],$row['Canton'],null);
                    $parroquia = new ParroquiaModel($row['NacIDParroquia'],$row['Parroquia'],$row['IDCanton']);

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
                        'estadoCivil'=> $estadoCivil,
                        'cabelloColor'=> $cabelloC,
                        'cabelloTipo'=> $cabelloT,
                        'estatura'=> $estatura,
                        'contextura'=> $contextura,
                        'etnia'=> $etnia,
                        'discapacidad'=> $discapacidad,
                        'canton'=> $canton,
                        'provincia'=> $provincia,
                        'parroquia'=> $parroquia
                    ];
                }
                return $datos;
            }
            return $datos;
        }

        public static function insert($last1, $last2, $name1, $name2, $cedula, $fecnac, $genero, $nacionalidad ,$parroquia,$etnia,$estadoCivil) {
            $db = new Connection();
            $query = "INSERT INTO ListaIDPersonas (Apellido1,Apellido2,Nombre1,Nombre2,Cedula,FechaNacim,IDGenero,
            NacIDNacionalidad,NacIDParroquia, NacIDCanton,NacIDProvincia,IDEtnia,IDEstadoCivil)
            VALUES('".$last1."', '".$last2."', '".$name1."', '".$name2."', '".$cedula."'
            , '".$fecnac."',".$genero->IDGenero.",".$nacionalidad->IDNacionalidad.",".$parroquia->IDParroquia."
            ,".$parroquia->canton->IDCanton.",".$parroquia->canton->provincia->IDProvincia."
            ,".$etnia->IDEtnia.",".$estadoCivil->IDEstadoCivil.")";
            if($db->query($query)=== TRUE) {
                return TRUE;
            }
            echo $db->error."\n";
            return FALSE;
        }
    }
