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

