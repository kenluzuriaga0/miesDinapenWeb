import { HttpClient } from '@angular/common/http';
import { AfterViewInit, Component, Input, OnInit } from '@angular/core';
import { SeleccionService } from '../modal-busqueda/seleccion.service';
import { Provincias, Canton, Organizaciones, TipoOrganizaciones, Personas, EstadoCivil, Etnia, Nacionalidad, Genero, CabelloColor, CabelloTipo, Contextura, Estatura, Parroquia, Discapacidad, Intervenciones } from '../Models/Modelos';
import { ListasService } from '../services/listas.service';


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
 // public perSelect: Personas;
  public intervencion: Intervenciones;

  public provincia: Provincias;
 // public organizacion: Organizaciones;

  public oneList: Map<string, any[]>;

  constructor(private listasService: ListasService,
    private seleccionService: SeleccionService) { }

  ngOnInit(): void { //se llenan las listas cuando carga la vista
    console.log("Estoy en formulario")
    this.init();

    this.listasService.loadOrganizaciones().subscribe(data => {
      this.listOrganizaciones = data;
    });

    this.seleccionService.seleccionadorToForm.subscribe(data => {
      console.log(data);
      this.intervencion = data;
      this.unirNombres();
      this.initOrganizacion();
    });

    if(typeof this.nombreCompleto === "undefined"){
      this.nombreCompleto=""; //al cargar la pagina x 1ra vez, no debe salir undefined en el campo "nombres"
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
    this.initOrganizacion();
    this.loadAllLista();
    this.initPersona();
  }


  public filtrarCanton(e: any): Canton[] {
    if (typeof this.provincia !== 'undefined') {
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

  }

  saveIntervencion():void{
    console.log("Guardado")
    console.log(this.intervencion)
  }


  public addNuevoSelect() {
    let row = document.createElement('div');
    row.className = 'row';
    row.innerHTML = `
    <br>
    <label for="nombre" class="col-form-label col-sm-4">Actividad</label>
    <div class="col-sm-8">
                            <select class="form-select" aria-label="Default select example">
                                <option disabled selected>-</option>
                                <option value="1">Venta ambulante</option>
                                <option value="2">Agricultura</option>
                                <option value="2">Lustrado de calzado</option>
                                <option value="2">Comercio informal</option>
                                <option value="2">Construcción</option>
                                <option value="2">Manufacturas</option>
                                <option value="2">Act. No remunerada en el hogar</option>
                                <option value="2">Mecánica</option>
                                <option value="2">Minería</option>
                                <option value="2">Reciclaje</option>
                                <option value="2">Pesca</option>
                                <option value="2">Trabajo en calle</option>
                                <option value="2">Otros</option>
                            </select>
                        </div>`;
    document.querySelector('.selectExtra')?.appendChild(row);
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
