<?php

class ProvinciaModel{
    public  $IDProvincia;
    public  $Provincia;
    public  $IDNacionalidad;
    

    public function __construct( $iDProvincia,  $provincia, $IDNacionalidad) {
        $this->IDProvincia = $iDProvincia;
        $this->Provincia = $provincia;
        $this->IDNacionalidad = $IDNacionalidad;
    }

}

class CantonModel{
    public  $IDCanton;
    public  $Canton;
    public  $provincia;

    public function __construct($x,  $y,$z) {
        $this->IDCanton = $x;
        $this->Canton = $y;
        $this->provincia = $z;
    }

}

class ParroquiaModel{
    public  $IDParroquia;
    public  $Parroquia;
    public  $IDCanton;

    public function __construct($x,  $y,$z ) {
        $this->IDParroquia = $x;
        $this->Parroquia = $y;
        $this->IDCanton = $z;
    }

}

class TipoOrganizacionesModel {
    public $IDTipoOrganizacion;
    public $TipoOrganizacion;

    public function __construct($x,  $y ) {
        $this->IDTipoOrganizacion = $x;
        $this->TipoOrganizacion = $y;
    }
 }

 class PersonasModel{

    public $IDPersona;
    public $Apellido1;
    public $Apellido2;
    public $Nombre1;
    public $Nombre2;
    public $Cedula;
    public $FechaNacim;
    public $IngresosAprox;
    public $nacionalidad;
    public $provincia;
    public $canton;
    public $parroquia;
    public $genero;
    public $etnia;
    public $estadoCivil;
    public $cabelloColor;
    public $cabelloTipo; 
    public $contextura; 
    public $estatura;
    public $condicionMedica;
    public $discapacidad;
    public $Enfermedad;
    public $LugarAtencionMedica;
    public $Fotos_Personas;

    public function __construct(
        string $a, string $b, string $c, string $d, string $e) {
        $this->Apellido1 = $a;
        $this->Apellido2 = $b;
        $this->Nombre1 = $c;
        $this->Nombre2 = $d;
        $this->Cedula = $e;
    }
    
    public static function createEmpty() {
        return new self();
    }

 }

 class GeneroModel {
    public $IDGenero;
    public $Genero;

    public function __construct($x, $y ) {
        $this->IDGenero = $x;
        $this->Genero = $y;
    } 
}
 

class CabelloColorModel {
    public $IDColorCabello;
    public $ColorCabello;

    public function __construct($x, $y ) {
        $this->IDColorCabello = $x;
        $this->ColorCabello = $y;
    } 
 }
 
 class CabelloTipoModel {
    public $IDCabelloTipo;
    public $CabelloTipo;
    public function __construct($x, $y ) {
        $this->IDCabelloTipo = $x;
        $this->CabelloTipo = $y;
    } 
 }
    
 
 class CondicionMedicaModel {
    public $IDCondicionMedica;
    public $CondicionMedica;
    public function __construct($x, $y ) {
        $this->IDCondicionMedica = $x;
        $this->CondicionMedica = $y;
    } 
 }
 
 
 class ContexturaModel {
    public $IDContextura;
    public $Contextura;
    
    public function __construct($x,$y ) {
        $this->IDContextura = $x;
        $this->Contextura = $y;
    } 
 }
 
 class DiscapacidadModel {
    public $IDDiscapacidad;
    public $Discapacidad;    
    
    public function __construct($x, $y ) {
        $this->IDDiscapacidad = $x;
        $this->Discapacidad = $y;
    } 
 }
 
  class EstadoCivilModel {
    public $IDEstadoCivil;
    public $EstadoCivil;  

    public function __construct($x,$y ) { // Nullable
        $this->IDEstadoCivil = $x;
        $this->EstadoCivil = $y;
    } 
 }
 
 class EstaturaModel {
    public $IDEstatura;
    public $Estatura;    
    public function __construct($x, $y ) {
        $this->IDEstatura = $x;
        $this->Estatura = $y;
    } 
 }
 
  class EtniaModel {
    public $IDEtnia;
    public $Etnia;  

    public function __construct( $x,  $y ) {
        $this->IDEtnia = $x;
        $this->Etnia = $y;
    } 
 }
 
 
  class NacionalidadModel {
    public $IDNacionalidad;
    public $Nacionalidad;   

    public function __construct($x, $y ) {
        $this->IDNacionalidad = $x;
        $this->Nacionalidad = $y;
    } 
 }
 
  
 class OperadorModel {
    public $IDOperador;
    public $IDInstitucion;   
    public $OperaCargo;   
    public $OperaNCedula;   
    public $OperaApellido1;   
    public $OperaApellido2;   
    public $OperaNombres;   

    public function __construct($x, $y,$z,$a,$b,$c,$d ) {
        $this->IDOperador = $x;
        $this->IDInstitucion = $y;
        $this->OperaNCedula = $z;
        $this->OperaCargo = $a;
        $this->OperaApellido1 = $b;
        $this->OperaApellido2 = $c;
        $this->OperaNombres = $d;
    } 
 }


class OrganizacionModel {
    public $IDOrganizacion;
    public $Organizacion;
    public $Zona;
    public $provincia;
    public $canton;
    public $parroquia;
    public $tipo;

    public function __construct($x,  $y ) {
        $this->IDOrganizacion = $x;
        $this->Organizacion = $y;
    }
 }

 class AudioModel{
    public $IDintervencion;
    public $Audio;
    public $FechaRegistro;

    public function __construct($x,$y,$z){
        $this -> IDIntervencion = $x;
        $this -> Audio=$y;
        $this -> FechaRegistro=$z;
    }
 }

 class FotoModel{
    public $IDintervencion;
    public $FotoIncidente;
    public $FechaRegistro;

    public function __construct($x,$y,$z){
        $this -> IDIntervencion = $x;
        $this -> FotoIncidente=$y;
        $this -> FechaRegistro=$z;
    }
 }