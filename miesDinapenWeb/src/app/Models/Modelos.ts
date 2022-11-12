export class Personas {
   IDPersona: number;
   Apellido1: string;
   Apellido2: string;
   Nombre1: string;
   Nombre2: string;
   Cedula: string;
   FechaNacim: Date;
   nacionalidad: Nacionalidad;
   provincia: Provincias;
   canton: Canton;
   parroquia: Parroquia;
   genero: Genero;
   etnia: Etnia;
   estadoCivil: EstadoCivil;
   cabelloColor: CabelloColor;
   cabelloTipo: CabelloTipo;
   contextura: Contextura;
   estatura: Estatura;
   condicionMedica: CondicionMedica;
   discapacidad: Discapacidad;
   DiscapacidadNivel: string;
   IngresosAprox: number;
   GrupoEtario:string;
   Barrio:string;
   Enfermedad:string;
   LugarAtencionMedica:string;
   Fotos_Personas:string;
   ApellidoFamiliar: string;
   NombreFamiliar: string;
   ParentezcoNNA: string;
   IdentificacionFamiliar: string;
   NumFamiliar: string;
}

export class PhotoPersonUpload {
   IDPersona: number;
   Name: string;
   Base64Encode: string;
   constructor(IDPersona:number, Name:string, Base64Encode:string) { this.IDPersona = IDPersona; this.Name = Name; this.Base64Encode = Base64Encode }
}


export class CabelloColor {
   IDColorCabello: number;
   ColorCabello: string;
   constructor() { this.ColorCabello = "" }
}

export class CabelloTipo {
   IDCabelloTipo: number;
   CabelloTipo: string;
   constructor() { this.CabelloTipo = "" }
}

export class CondicionMedica {
   IDCondicionMedica: number;
   CondicionMedica: string;
   constructor() { this.CondicionMedica = "" }
}

export class Contextura {
   IDContextura: number;
   Contextura: string;
   constructor() { this.Contextura = ""; }
}

export class Discapacidad {
   IDDiscapacidad: number;
   Discapacidad: string;
   constructor() { this.Discapacidad = "" }
}

export class EstadoCivil {
   IDEstadoCivil: number;
   EstadoCivil: string;
   constructor() { this.EstadoCivil = "" }
}

export class Estatura {
   IDEstatura: number;
   Estatura: string;
   constructor() { this.Estatura = "" }
}

export class Etnia {
   IDEtnia: number;
   Etnia: string;
   constructor() { this.Etnia = "" }
}

export class Genero {
   IDGenero: number;
   Genero: string;
   constructor() { this.Genero = "" }
}

export class Nacionalidad {
   IDNacionalidad: number;
   Nacionalidad: string;
   constructor() { this.Nacionalidad = "" }
}

export class Parroquia {
   IDParroquia: number;
   Parroquia: string;
   canton: Canton;
   constructor() { this.Parroquia = ""; }
}

export class Provincias {
   IDProvincia: number;
   Provincia: string;
   IDNacionalidad: number;
   constructor() { this.Provincia = ""; this.IDNacionalidad = 0; }
}
export class Canton {
   IDCanton: number;
   Canton: string;
   provincia: Provincias;
   constructor() { this.Canton = ""; }
}
export class Organizaciones {
   IDOrganizacion: number;
   Organizacion: string;
   Zona: number = 0;
   provincia: Provincias;
   canton: Canton;
   parroquia: Parroquia;
   tipo: TipoOrganizaciones;

}

export class TipoOrganizaciones {
   IDTipoOrganizacion: number;
   TipoOrganizacion: string;

   constructor() { this.TipoOrganizacion = ""; }
}

export class Operadores {
   IDOperador: number;
   IDInstitucion: number;
   OperaCargo: string;
   OperaNCedula: string;
   OperaApellido1: string;
   OperaApellido2: string;
   OperaNombres: string;
}

export class Intervenciones {
   IDIntervencion: number;
   operador: Operadores;
   organizacion: Organizaciones;
   persona: Personas;
   Latitud: number;
   Longitud: number;
   NumPerGrupo: number;
   Referencia: string;
   NombreRepresentante: string;
   DerivEspecifi: string;
   IDCircunstancia: number;
   IDCondicion: number;
   IDEstudio: number;
   NoEstudio: string;
   UltAnioEstudio: number;
   InsEduEstudio: string;
   RefIDProvincia: number;
   RefIDCanton: number;
   RefIDParroquia: number;
   DireccionCallePrincial: string;
   DireccionNumero: string;
   DireccionCalleInterseccion: string;
   DireccionIntervencion: string;
   NumHijos: number;
   IDViveCon: number;
   NumTelefono: string;
   FechaIntervencion: Date;
   FechaRegistro: Date;
   DiasLaborales: number;
   HorasLaborales: number;
   TiempoLaboral: string;
   GrupoLaboral: string;
   NumGrupoLaboral: string;
   IngresosDiariosLaboral: string;
   Comentarios: string;
   Estado: string;

}

export class IntervencionesTipoActividad{
   IDIntervencion: number;
   IDTipoActividad: number;
   constructor(x:number,y:number) { this.IDIntervencion = x; this.IDTipoActividad = y; }

}

export class IntervencionesFotos{
   IDIntervencion: number;
   FotoIncidente: string;
   FechaRegistro: Date;
   constructor(x:number,y:string) { this.IDIntervencion = x; this.FotoIncidente = y; }

}


export class IntervencionesAudios{
   IDIntervencion: number;
   Audio: string;
   FechaRegistro: Date;
   constructor(x:number,y:string) { this.IDIntervencion = x; this.Audio = y; }

}