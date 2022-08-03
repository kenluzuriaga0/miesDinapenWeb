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
}

export class CabelloTipo {
   IDCabelloTipo: number;
   CabelloTipo:   string;
}

export class CondicionMedica {
   IDCondicionMedica: number;
   CondicionMedica:   string;
}

export class Contextura {
   IDContextura: number;
   Contextura:   string;
}

export class Discapacidad {
   IDDiscapacidad: number;
   Discapacidad:   string;
}

export class EstadoCivil {
   IDEstadoCivil: number;
   EstadoCivil:   string;
}

export class Estatura {
   IDEstatura: number;
   Estatura:   string;
}

export class Etnia {
   IDEtnia: number;
   Etnia:   string;
}

export class Genero {
   IDGenero: number;
   Genero:   string;
}

export class Nacionalidad {
   IDNacionalidad: number;
   Nacionalidad:   string;
}

export class Parroquia {
   IDParroquia: number;
   Parroquia:   string;
   IDCanton:    number;
}

export class Provincias{
   IDProvincia: number;
   Provincia: string;
   IDNacionalidad: number;
   
}
export class Canton {
   IDCanton: number;
   Canton: string;
   IDProvincia: number;
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

