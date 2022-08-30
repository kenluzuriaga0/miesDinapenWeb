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
   /* public $NacIDNacionalidad;
    public $NacIDProvincia;
    public $NacIDCanton;
    public $NacIDParroquia;
    public $IDGenero;
    public $IDEtnia;
    public $IDEstadoCivil;
    public $IDColorCabello;
    public $IDCabelloTipo;
    public $IDContextura;
    public $IDEstatura;
    public $IDCondicionMedica;
    public $IDDiscapacidad;
    public $DiscapacidadNivel;*/


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
 