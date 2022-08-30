<?php

class ProvinciaModel{
    public  $IDProvincia;
    public  $Provincia;
    public  $IDNacionalidad;
    

    public function __construct(string $iDProvincia, string $provincia, string $IDNacionalidad) {
        $this->IDProvincia = $iDProvincia;
        $this->Provincia = $provincia;
        $this->IDNacionalidad = $IDNacionalidad;
    }

}

class CantonModel{
    public  $IDCanton;
    public  $Canton;

    public function __construct(string $x, string $y ) {
        $this->IDCanton = $x;
        $this->Canton = $y;
    }

}

class TipoOrganizacionesModel {
    public $IDTipoOrganizacion;
    public $TipoOrganizacion;

    public function __construct(string $x, string $y ) {
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

    public function __construct(string $a, string $b, string $c, string $d, string $e ) {
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

    public function __construct(string $x, string $y ) {
        $this->IDGenero = $x;
        $this->Genero = $y;
    } 
}
 

class CabelloColorModel {
    public $IDColorCabello;
    public $ColorCabello;

    public function __construct(string $x, string $y ) {
        $this->IDColorCabello = $x;
        $this->ColorCabello = $y;
    } 
 }
 
 class CabelloTipoModel {
    public $IDCabelloTipo;
    public $CabelloTipo;
    public function __construct(string $x, string $y ) {
        $this->IDCabelloTipo = $x;
        $this->CabelloTipo = $y;
    } 
 }
    
 
 class CondicionMedicaModel {
    public $IDCondicionMedica;
    public $CondicionMedica;
    public function __construct(string $x, string $y ) {
        $this->IDCondicionMedica = $x;
        $this->CondicionMedica = $y;
    } 
 }
 
 
 class ContexturaModel {
    public $IDContextura;
    public $Contextura;
    
    public function __construct(string $x, string $y ) {
        $this->IDContextura = $x;
        $this->Contextura = $y;
    } 
 }
 
 class DiscapacidadModel {
    public $IDDiscapacidad;
    public $Discapacidad;    
    
    public function __construct(string $x, string $y ) {
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
    public function __construct(string $x, string $y ) {
        $this->IDEstatura = $x;
        $this->Estatura = $y;
    } 
 }
 
  class EtniaModel {
    public $IDEtnia;
    public $Etnia;  

    public function __construct(string $x, string $y ) {
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
 