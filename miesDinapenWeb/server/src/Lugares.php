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
 