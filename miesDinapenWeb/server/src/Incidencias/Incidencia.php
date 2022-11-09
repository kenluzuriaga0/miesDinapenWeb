<?php
    require_once "../Modelos.php";
    
    class Incidencia{

        public static function insert($IDOperador, $IDOrganCoo, $IDPersona, $Latitud, $Longitud, $FechaRegistro, $Referencia , $NombreRepresentante) {
            $db = new Connection();
            $query = "INSERT INTO Intervenciones (IDOperador,IDOrganCooperante,IDPersonaIntervenida,Latitud,Longitud,FechaRegistro, Referencia,NombreRepresentante)
            VALUES('".$IDOperador."', '".$IDOrganCoo."', '".$IDPersona."', '".$Latitud."', '".$Longitud."', '".$FechaRegistro."' , '".$Referencia."' , '".$NombreRepresentante."')";
            if($db->query($query)=== TRUE) {
                echo $db->insert_id;
                return TRUE;
            }
            echo $db->error."\n";
            return FALSE;
        }

        public static function getAllIntervenciones() {
            $db = new Connection();
            require_once "../Personas/Personas.php";

            $query = "SELECT * FROM Intervenciones AS inte
            INNER JOIN ListaIDOperadores AS ope ON ope.IDOperador = inte.IDOperador
            INNER JOIN ListaIDOrganizacionesCoope AS org ON inte.IDOrganCooperante = org.IDOrganizacion ORDER BY inte.Estado desc, inte.FechaRegistro desc";
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
                        'persona' => Personas::getPersonaById($row['IDPersonaIntervenida'])? :null, // La incidencia  de origen appmovil no trae persona incluida
                        'Latitud' => $row['Latitud'],
                        'Longitud' => $row['Longitud'],
                        'NumPerGrupo' => $row['NumPerGrupo'],
                        'Referencia' => $row['Referencia'],
                        'NombreRepresentante' => $row['NombreRepresentante'],
                        'DerivEspecifi' => $row['DerivEspecifi'],
                        'IDCircunstancia' => $row['IDCircunstancia'],
                        'IDCondicion' => $row['IDCondicion'],
                        'IDViveCon' => $row['IDViveCon'],
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
                        'DireccionIntervencion' => $row['DireccionIntervencion'],
                        'NumHijos' => $row['NumHijos'],
                        'NumTelefono' => $row['NumTelefono'],
                        'FechaIntervencion' => $row['FechaIntervencion'],
                        'FechaRegistro' => $row['FechaRegistro'],
                        'DiasLaborales' => $row['DiasLaborales'],
                        'HorasLaborales' => $row['HorasLaborales'],
                        'TiempoLaboral' => $row['TiempoLaboral'],
                        'GrupoLaboral' => $row['GrupoLaboral'],
                        'NumGrupoLaboral' => $row['NumGrupoLaboral'],
                        'IngresosDiariosLaboral' => $row['IngresosDiariosLaboral'],
                        'Comentarios' => $row['Comentarios'],
                        'Estado' => $row['Estado']

                    ];
                }
                return $datos;
            }
            return $datos;
        }


        public static function hasIntervencionByCedula($cedula) {
            $db = new Connection();
            require_once "../Personas/Personas.php";

            $query = "SELECT * FROM Intervenciones AS inte
            INNER JOIN ListaIDPersonas AS per ON per.IDPersona = inte.IDPersonaIntervenida
            WHERE per.Cedula = '$cedula' ";
            $resultado = $db->query($query);
            if($resultado->num_rows) {
                return TRUE;
            }
            return FALSE;
        }


        public static function update($IDOperador, $IDPersonaIntervenida, $IDOrganCooperante, $FechaIntervencion, $ID,
                                    $NumPerGrupo, $DerivEspecifi,$IDEstudio, $NoEstudio,$UltAnioEstudio, $InsEduEstudio, $NumHijos,$IDViveCon,$IDCircunstancia,$IDCondicion,
                                    $DireccionCallePrincial,$DireccionIntervencion,$DiasLaborales,$HorasLaborales,$TiempoLaboral,$GrupoLaboral,$NumGrupoLaboral,$IngresosDiariosLaboral,$Comentarios) {

            $FechaIntervencionFormat = date("Y-m-d H:i:s", strtotime($FechaIntervencion));

            $db = new Connection();
            $query = "UPDATE Intervenciones SET 
            IDOperador=$IDOperador,IDPersonaIntervenida=$IDPersonaIntervenida,IDOrganCooperante=$IDOrganCooperante,FechaIntervencion='$FechaIntervencionFormat',
            NumPerGrupo=".($NumPerGrupo? : '0').",DerivEspecifi='$DerivEspecifi',IDEstudio=".($IDEstudio? : 'NULL').",NoEstudio='$NoEstudio',UltAñoEstudio=".($UltAnioEstudio? : '0').",InsEduEstudio='$InsEduEstudio'
            ,NumHijos=".($NumHijos? : '0').",IDViveCon=".($IDViveCon? : 'NULL').",IDCircunstancia=".($IDCircunstancia? : 'NULL').",IDCondicion=".($IDCondicion? : 'NULL')."
            ,DireccionCallePrincial='$DireccionCallePrincial', DireccionIntervencion='$DireccionIntervencion', DiasLaborales=".($DiasLaborales? : '0').", HorasLaborales='$HorasLaborales',TiempoLaboral='$TiempoLaboral', GrupoLaboral='$GrupoLaboral'
            ,NumGrupoLaboral=".($NumGrupoLaboral? : '0').", IngresosDiariosLaboral='$IngresosDiariosLaboral', Comentarios='$Comentarios',
            Estado = 'Completado' 
            WHERE IDIntervencion=$ID";
            $db->query($query);
            if($db->affected_rows>0) {
                return TRUE;
            }
            echo $db->error."\n";
            return FALSE;
        }
    }
