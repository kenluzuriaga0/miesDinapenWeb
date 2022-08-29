<?php
    //require_once "db.php";
    class ListasDinamicas{

        public static function getWhere($id_act) {
            $db = new Connection();
            $query = "SELECT * FROM ListaIDTipoActividad WHERE idTipoActividad=$id_act";
            $resultado = $db->query($query);
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()) {
                    $datos[]=[
                        'IdTipoActividad' => $row['IDTipoActividad'],
                        'TipoActividad' => $row['TipoActividad']
                    ];
                }
                return $datos;
            }
            return $datos;
        }

        public static function getTipoActividad() {
            $db = new Connection();
            $resultado = $db->query("SELECT * FROM ListaIDTipoActividad");
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()){
                    $datos[]=[
                        'IdTipoActividad' => $row['IDTipoActividad'],
                        'TipoActividad' => $row['TipoActividad']
                    ];
                }
            }
            $db->close();
            return $datos;
        }

        public static function getCabelloColor(){
            $db = new Connection();
            $resultado = $db->query("SELECT * FROM ListaIDCabelloColor");
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()){
                    $datos[]=[
                        'IDColorCabello' => $row['IDColorCabello'],
                        'ColorCabello' => $row['ColorCabello']
                    ];
                }
            }
            $db->close();
            return $datos;
        }

        public static function getCabelloTipo(){
            $db = new Connection();
            $resultado = $db->query("select * from ListaIDCabelloTipo");
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()){
                    $datos[]=[
                        'IDCabelloTipo' => $row['IDCabelloTipo'],
                        'CabelloTipo' => $row['CabelloTipo']
                    ];
                }
            }
            $db->close();
            return $datos;
        }

        public static function getCircunstancia(){
            $db = new Connection();
            $resultado = $db->query("SELECT * FROM ListaIDCircunstancias");
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()){
                    $datos[]=[
                        'IDCircunstancia' => $row['IDCircunstancia'],
                        'Circunstancia' => $row['Circunstancia']
                    ];
                }
            }
            $db->close();
            return $datos;
        }
        
        public static function getCondicionMedica(){
            $db = new Connection();
            $resultado = $db->query("SELECT * FROM ListaIDCondicionMedica");
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()){
                    $datos[]=[
                        'IDCondicionMedica' => $row['IDCondicionMedica'],
                        'CondicionMedica' => $row['CondicionMedica']
                    ];
                }
            }
            $db->close();
            return $datos;
        }

        public static function getCondicion(){
            $db = new Connection();
            $resultado = $db->query("SELECT * FROM ListaIDCondiciones");
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()){
                    $datos[]=[
                        'IDCondicion' => $row['IDCondicion'],
                        'Condicion' => $row['Condicion']
                    ];
                }
            }
            $db->close();
            return $datos;
        }

        public static function getContextura(){
            $db = new Connection();
            $resultado = $db->query("SELECT * FROM ListaIDContexturas");
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()){
                    $datos[]=[
                        'IDContextura' => $row['IDContextura'],
                        'Contextura' => $row['Contextura']
                    ];
                }
            }
            $db->close();
            return $datos;
        }

        public static function getDiscapacidad(){
            $db = new Connection();
            $resultado = $db->query("SELECT * FROM ListaIDDiscapacidad");
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()){
                    $datos[]=[
                        'IDDiscapacidad' => $row['IDDiscapacidad'],
                        'Discapacidad' => $row['Discapacidad']
                    ];
                }
            }
            $db->close();
            return $datos;
        }
        
        public static function getEstadoCivil(){
            $db = new Connection();
            $resultado = $db->query("SELECT * FROM ListaIDEstadoCivil");
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()){
                    $datos[]=[
                        'IDEstadoCivil' => $row['IDEstadoCivil'],
                        'EstadoCivil' => $row['EstadoCivil']
                    ];
                }
            }
            $db->close();
            return $datos;
        }

        public static function getEstatura(){
            $db = new Connection();
            $resultado = $db->query("SELECT * FROM ListaIDEstatura");
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()){
                    $datos[]=[
                        'IDEstatura' => $row['IDEstatura'],
                        'Estatura' => $row['Estatura']
                    ];
                }
            }
            $db->close();
            return $datos;
        }

        public static function getEstudio(){
            $db = new Connection();
            $resultado = $db->query("SELECT * FROM ListaIDEstudio");
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()){
                    $datos[]=[
                        'IDEstudio' => $row['IDEstudio'],
                        'NivelEstudio' => $row['NivelEstudio']
                    ];
                }
            }
            $db->close();
            return $datos;
        }
        public static function getEtnia(){
            $db = new Connection();
            $resultado = $db->query("SELECT * FROM ListaIDEtnias");
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()){
                    $datos[]=[
                        'IDEtnia' => $row['IDEtnia'],
                        'Etnia' => $row['Etnia']
                    ];
                }
            }
            $db->close();
            return $datos;
        }

        public static function getExposicion(){
            $db = new Connection();
            $resultado = $db->query("SELECT * FROM ListaIDExposiciones");
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()){
                    $datos[]=[
                        'IDExposicion' => $row['IDExposicion'],
                        'Exposicion' => $row['Exposicion']
                    ];
                }
            }
            $db->close();
            return $datos;
        }

        public static function getGenero(){
            $db = new Connection();
            $resultado = $db->query("SELECT * FROM ListaIDGeneros");
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()){
                    $datos[]=[
                        'IDGenero' => $row['IDGenero'],
                        'Genero' => $row['Genero']
                    ];
                }
            }
            $db->close();
            return $datos;
        }
        public static function getInstitucion(){
            $db = new Connection();
            $resultado = $db->query("SELECT * FROM ListaIDInstituciones");
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()){
                    $datos[]=[
                        'IDInstitucion' => $row['IDInstitucion'],
                        'InstiNombre' => $row['InstiNombre'],
                        'InstiDireccion' => $row['InstiDireccion'],
                        'InstiTelefono' => $row['InstiTelefono']

                    ];
                }
            }
            $db->close();
            return $datos;
        }
        public static function getParentezco(){
            $db = new Connection();
            $resultado = $db->query("SELECT * FROM ListaIDParentezcos");
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()){
                    $datos[]=[
                        'IDParentezco' => $row['IDParentezco'],
                        'Parentezco' => $row['Parentezco']

                    ];
                }
            }
            $db->close();
            return $datos;
        }
        public static function getNacionalidad(){
            $db = new Connection();
            $resultado = $db->query("SELECT * FROM ListaIDNacionalidades");
            $datos = [];
            if($resultado->num_rows) {
                while($row = $resultado->fetch_assoc()){
                    $datos[]=[
                        'IDNacionalidad' => $row['IDNacionalidad'],
                        'Nacionalidad' => $row['Nacionalidad']

                    ];
                }
            }
            $db->close();
            return $datos;
        }
    }
