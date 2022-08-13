export class Personas {
   IDPersona:         number;
   Apellido1:         string;
   Apellido2:         string;
   Nombre1:           string;
   Nombre2:           string;
   Cedula:            string;
   FechaNacim:        Date;
   nacionalidad:      Nacionalidad;
   provincia:         Provincias;
   canton:            Canton;
   parroquia:         Parroquia;
   genero:            Genero;
   etnia:             Etnia;
   estadoCivil:       EstadoCivil;
   cabelloColor:      CabelloColor;
   cabelloTipo:       CabelloTipo;
   contextura:        Contextura;
   estatura:          Estatura;
   condicionMedica:   CondicionMedica;
   discapacidad:      Discapacidad;
   DiscapacidadNivel: string;
   IngresosAprox:     number;
}

export class CabelloColor {
   IDColorCabello: number;
   ColorCabello:   string;
   constructor(){this.IDColorCabello=1;this.ColorCabello=""}
}

export class CabelloTipo {
   IDCabelloTipo: number;
   CabelloTipo:   string;
   constructor(){this.IDCabelloTipo=1;this.CabelloTipo=""}
}

export class CondicionMedica {
   IDCondicionMedica: number;
   CondicionMedica:   string;
   constructor(){this.IDCondicionMedica=1;this.CondicionMedica=""}
}

export class Contextura {
   IDContextura: number;
   Contextura:   string;
   constructor(){this.IDContextura=1;this.Contextura=""}
}

export class Discapacidad {
   IDDiscapacidad: number;
   Discapacidad:   string;
   constructor(){this.IDDiscapacidad=1;this.Discapacidad=""}
}

export class EstadoCivil {
   IDEstadoCivil: number;
   EstadoCivil:   string;
   constructor(){this.IDEstadoCivil=1;this.EstadoCivil=""}
}

export class Estatura {
   IDEstatura: number;
   Estatura:   string;
   constructor(){this.IDEstatura=1;this.Estatura=""}
}

export class Etnia {
   IDEtnia: number;
   Etnia:   string;
   constructor(){this.IDEtnia=1;this.Etnia=""}
}

export class Genero {
   IDGenero: number;
   Genero:   string;
   constructor(){this.IDGenero=1;this.Genero=""}
}

export class Nacionalidad {
   IDNacionalidad: number;
   Nacionalidad:   string;
   constructor(){this.IDNacionalidad=1;this.Nacionalidad=""}
}

export class Parroquia {
   IDParroquia: number;
   Parroquia:   string;
   IDCanton:    number;
   constructor(){this.IDParroquia=1;this.Parroquia="";this.IDCanton=0}
}

export class Provincias{
   IDProvincia: number;
   Provincia: string;
   IDNacionalidad: number;
   constructor(){this.IDProvincia=1;this.Provincia="";this.IDNacionalidad=0}
}
export class Canton {
   IDCanton: number;
   Canton: string;
   IDProvincia: number;
   constructor(){this.IDCanton=1;this.Canton="";this.IDProvincia=0}
}
export class Organizaciones {
   IDOrganizacion: number;
   Organizacion: string;
   Zona: number = 0;
   provincia:Provincias;
   canton:Canton;
   IDParroquia:number;
   tipo:TipoOrganizaciones;
   
}

export class TipoOrganizaciones {
   IDTipoOrganizacion: number;
   TipoOrganizacion: string;
}

