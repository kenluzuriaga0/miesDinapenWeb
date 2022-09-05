<?php
    require_once "../Modelos.php";
    
    class Incidencia{

        public static function insert($IDOperador, $IDOrganCoo, $IDPersona, $Latitud, $Longitud, $FechaRegistro) {
            $db = new Connection();
            $query = "INSERT INTO Intervenciones (IDOperador,IDOrganCooperante,IDPersonaIntervenida,Latitud,Longitud,FechaRegistro)
            VALUES('".$IDOperador."', '".$IDOrganCoo."', '".$IDPersona."', '".$Latitud."', '".$Longitud."', '".$FechaRegistro."')";
            if($db->query($query)=== TRUE) {
                echo "incidencia_" . $db->insert_id;
                return TRUE;
            }
            echo $db->error."\n";
            return FALSE;
        }

        public static function getAllIntervenciones() {
            $db = new Connection();
            $query = "SELECT * FROM Intervenciones AS inte
            INNER JOIN ListaIDOperadores AS ope ON ope.IDOperador = inte.IDOperador
            INNER JOIN ListaIDOrganizacionesCoope AS org ON inte.IDOrganCooperante = org.IDOrganizacion ORDER BY  inte.FechaRegistro desc";
            $resultado = $db->query($query);
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()) {
                    $operador = new OperadorModel($row['IDOperador'],$row['IDInstitucion'],$row['OperaCargo']
                    ,$row['OperaNCedula'],$row['OperaApellido1'],$row['OperaApellido2'],$row['OperaNombres']);
                    $organizacion = new OrganizacionModel($row['IDOrganCooperante'],$row['Organizacion']);
                   
                    $datos[]=[
                        'IDIntervencion' => $row['IDIntervencion'],
                        'operador' => $operador,
                        'organizacion' => $organizacion,
                        'persona' => null, // La incidencia  de origen appmovil no trae persona incluida
                        'Latitud' => $row['Latitud'],
                        'Longitud' => $row['Longitud'],
                        'NumPerGrupo' => $row['NumPerGrupo'],
                        'Referencia' => $row['Referencia'],
                        'DerivEspecifi' => $row['DerivEspecifi'],
                        'IDCircunstancia' => $row['IDCircunstancia'],
                        'IDCondicion' => $row['IDCondicion'],
                        'IDEstudio' => $row['IDEstudio'],
                        'NoEstudio' => $row['NoEstudio'],
                        'UltAnioEstudio' => $row['UltAñoEstudio'],
                        'InsEduEstudio' => $row['InsEduEstudio'],
                        'RefIDProvincia' => $row['RefIDProvincia'],
                        'RefIDCanton' => $row['RefIDCanton'],
                        'RefIDParroquia' => $row['RefIDParroquia'],
                        'DireccionCallePrincial' => $row['DireccionCallePrincial'],
                        'DireccionNumero' => $row['DireccionNumero'],
                        'DireccionCalleInterseccion' => $row['DireccionCalleInterseccion'],
                        'NumHijos' => $row['NumHijos'],
                        'NumTelefono' => $row['NumTelefono'],
                        'FechaIntervencion' => $row['FechaIntervencion'],
                        'FechaRegistro' => $row['FechaRegistro']
                    ];
                }
                return $datos;
            }
            return $datos;
        }


        public static function update($IDOperador, $IDPersonaIntervenida, $IDOrganCooperante, $FechaIntervencion, $ID) {
            $FechaIntervencionFormat = date("Y-m-d H:i:s", strtotime($FechaIntervencion));

            
            $db = new Connection();
            $query = "UPDATE Intervenciones SET 
            IDOperador=$IDOperador,IDPersonaIntervenida=$IDPersonaIntervenida,IDOrganCooperante=$IDOrganCooperante,FechaIntervencion='$FechaIntervencionFormat'
            WHERE IDIntervencion=$ID";
            echo $query.'\n';
            $db->query($query);
            if($db->affected_rows>0) {
                echo "Actualizado";
                return TRUE;
            }
            echo $db->error."\n";
            return FALSE;
        }
    }
