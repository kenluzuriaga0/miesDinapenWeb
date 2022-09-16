import {  Component,  OnInit } from '@angular/core';
import { SeleccionService } from '../modal-busqueda/seleccion.service';
import { Provincias, Canton, Organizaciones, TipoOrganizaciones, Personas, EstadoCivil, Etnia, Nacionalidad, Genero, CabelloColor, CabelloTipo, Contextura, Estatura, Parroquia, Discapacidad, Intervenciones, IntervencionesTipoActividad, CondicionMedica, IntervencionesFotos, IntervencionesAudios } from '../Models/Modelos';
import { ListasService } from '../services/listas.service';
import swal from 'sweetalert2';
import { mergeMap } from 'rxjs';


@Component({
  selector: 'app-formulario',
  templateUrl: './formulario.component.html',
  styleUrls: ['./formulario.component.css']
})
export class FormularioComponent implements OnInit {

  public listProvincia: Provincias[];
  public listCantones: Canton[];
  public listOrganizaciones: Organizaciones[];
  public listasProgramadas: any[];
  public listPersonas: Personas[];
  public linkMapa: string;
  public intervencion: Intervenciones;
  public provincia: Provincias;
  public fotos: IntervencionesFotos[];
  public audios: IntervencionesAudios[];
  public oneList: Map<string, any[]>;
  

  public selectActividadesIds :string[];

  constructor(private listasService: ListasService,
    private seleccionService: SeleccionService) { }

  ngOnInit(): void { //se llenan las listas cuando carga la vista
    this.init();

    this.listasService.loadOrganizaciones().subscribe(data => this.listOrganizaciones = data);

    // Usamos mergeMap para combinar observables para subscribirlos en order
    this.seleccionService.seleccionadorToForm.pipe(
      mergeMap(data => {
        this.intervencion = data;
        this.unirNombres();
        this.initOrganizacion();
        this.listasService.loadFotosByIntervencion(this.intervencion.IDIntervencion).subscribe(data => {
          this.fotos = data;
          console.log(this.fotos);
        });
        if (!this.isUndefined(this.intervencion.Latitud)) {
          this.linkMapa = `https://www.google.es/maps?q=${this.intervencion.Latitud},${this.intervencion.Longitud}`;
        } else { this.linkMapa = ''; }
        return this.listasService.loadIntervencionActividadById(this.intervencion.IDIntervencion)
      })
    ).subscribe(idsActividad => { // idsActividad es retornada por el mergeMap de arriba y usada en este subscribe
      this.selectActividadesIds = []
      let selectTiposActividades: IntervencionesTipoActividad[] = [];
      selectTiposActividades = idsActividad;
      selectTiposActividades.forEach(x => this.selectActividadesIds.push(String(x.IDTipoActividad)));
    }); // foreach recorre cada idActividad y es metido en un number[]




    if (this.isUndefined(this.nombreCompleto)) {
      this.nombreCompleto = ""; //al cargar la pagina x 1ra vez, no debe salir undefined en el campo "nombres"
    }
  }

  private initOrganizacion():void{
    /** Metodo que inicializa objetos internos de Organizacion porque en el
     * seleccionadorService me trae como null todos estos objetos 
    */
    this.intervencion.organizacion = new Organizaciones();
    this.intervencion.organizacion.tipo = new TipoOrganizaciones();
    this.intervencion.organizacion.provincia = new Provincias();
    this.intervencion.organizacion.canton = new Canton();
    this.intervencion.organizacion.parroquia = new Parroquia();
    this.intervencion.organizacion.Zona = 0;
  }
  private init(): void {
    this.intervencion = new Intervenciones();
    this.intervencion.InsEduEstudio='';
    this.initOrganizacion();
    this.loadAllLista();
    this.initPersona();
  }


  public filtrarCanton(e: any): Canton[] {
    if (!this.isUndefined(this.provincia)) {
      return this.listCantones.filter(x => x.provincia.IDProvincia == this.intervencion.organizacion.provincia.IDProvincia);
    } else {
      return this.listCantones;
    }
  }

  public nombreCompleto: any;

  private unirNombres(): void {
    this.nombreCompleto = this.intervencion.persona?.Apellido1.concat(" ")
                          .concat(this.intervencion.persona?.Apellido2).concat(" ")
                          .concat(this.intervencion.persona?.Nombre1).concat(" ")
                          .concat(this.intervencion.persona?.Nombre2);
  }

  private initPersona():void{
    
    this.intervencion.persona = new Personas();
    this.intervencion.persona.Cedula='';
    this.intervencion.persona.FechaNacim=new Date();
    this.intervencion.persona.estadoCivil=new EstadoCivil();
    this.intervencion.persona.etnia=new Etnia();
    this.intervencion.persona.nacionalidad=new Nacionalidad();
    this.intervencion.persona.genero=new Genero();
    this.intervencion.persona.cabelloColor=new CabelloColor();
    this.intervencion.persona.cabelloTipo=new CabelloTipo();
    this.intervencion.persona.contextura=new Contextura();
    this.intervencion.persona.estatura=new Estatura();
    this.intervencion.persona.provincia=new Provincias();
    this.intervencion.persona.canton=new Canton();
    this.intervencion.persona.discapacidad=new Discapacidad();
    this.intervencion.persona.condicionMedica=new CondicionMedica();

  }

  private isUndefined(object:any):boolean{
    return typeof object =='undefined';
  }

  saveIntervencion():void{
    if(!this.isUndefined(this.intervencion.organizacion.IDOrganizacion)&&
    !this.isUndefined(this.intervencion.persona.IDPersona)){ // TODO: evaluar tambien el IDPersona
      this.intervencion.FechaIntervencion= new Date();
      console.log(this.intervencion)
      this.listasService.updateIntervencion(this.intervencion).subscribe(x=>{
        swal.fire('Intervencion Completada', `Intervención "${this.intervencion.IDIntervencion}" registrado con éxito`, 'success')
      },error => {
        swal.fire('Alerta de Error', `Ha ocurrido un error, recargue la página`, 'error')
      });
      for(let act of this.selectActividadesIds){ // guardar cada una de las intervencionesTipoActividad
        this.listasService.saveIntervencionActividades(new IntervencionesTipoActividad(
          this.intervencion.IDIntervencion,Number(act))).subscribe(console.log);
      }
      this.listasService.updatePersona(this.intervencion.persona).subscribe();
      console.log("Guardado")
    }else{
      swal.fire('Alerta de Error', `Faltan campos por completar`, 'error')
    }
  }


  loadAllLista(): any {
    this.oneList = new Map<string, any[]>();
    this.listasService.loadListasProgramadas("act").subscribe(data => this.oneList.set("act", data));
    this.listasService.loadListasProgramadas("cac").subscribe(data => this.oneList.set("cac", data));
    this.listasService.loadListasProgramadas("cat").subscribe(data => this.oneList.set("cat", data));
    this.listasService.loadListasProgramadas("cir").subscribe(data => this.oneList.set("cir", data));
    this.listasService.loadListasProgramadas("com").subscribe(data => this.oneList.set("com", data));
    this.listasService.loadListasProgramadas("con").subscribe(data => this.oneList.set("con", data));
    this.listasService.loadListasProgramadas("cnt").subscribe(data => this.oneList.set("cnt", data));
    this.listasService.loadListasProgramadas("dis").subscribe(data => this.oneList.set("dis", data));
    this.listasService.loadListasProgramadas("eci").subscribe(data => this.oneList.set("eci", data));
    this.listasService.loadListasProgramadas("eta").subscribe(data => this.oneList.set("eta", data));
    this.listasService.loadListasProgramadas("est").subscribe(data => this.oneList.set("est", data));
    this.listasService.loadListasProgramadas("etn").subscribe(data => this.oneList.set("etn", data));
    this.listasService.loadListasProgramadas("exp").subscribe(data => this.oneList.set("exp", data));
    this.listasService.loadListasProgramadas("gen").subscribe(data => this.oneList.set("gen", data));
    this.listasService.loadListasProgramadas("ins").subscribe(data => this.oneList.set("ins", data));
    this.listasService.loadListasProgramadas("nac").subscribe(data => this.oneList.set("nac", data));
    this.listasService.loadListasProgramadas("par").subscribe(data => this.oneList.set("par", data));
  
  }

  pasarObjetosLlenos():void{
    this.seleccionService.seleccionadorList.emit(this.oneList);
  }

  calcularEdad(): number {
    const today: Date = new Date();
    const birthDate: Date = new Date(this.intervencion.persona.FechaNacim);
    let age: number = today.getFullYear() - birthDate.getFullYear();
    const month: number = today.getMonth() - birthDate.getMonth();
    if (month < 0 || (month === 0 && today.getDate() < birthDate.getDate())) {
        age--;
    }
    return age;
}

}
