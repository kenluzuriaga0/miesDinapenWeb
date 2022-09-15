import { Component, Input, OnInit } from '@angular/core';
import { SeleccionService } from '../modal-busqueda/seleccion.service';
import { Canton, Intervenciones, Organizaciones, Parroquia, Provincias, TipoOrganizaciones } from '../Models/Modelos';
import { ListasService } from '../services/listas.service';
import swal from 'sweetalert2';

@Component({
  selector: 'app-organizaciones',
  templateUrl: './organizaciones.component.html',
 
  styleUrls: ['./organizaciones.component.css']
})
export class OrganizacionesComponent implements OnInit {

  public listNumber:number[];

  @Input() public oneList: Map<string, any[]>;
  public organi: Organizaciones;
  public listProvincia: Provincias[];
  public listCanton: Canton[];
  public listCantonFiltered: Canton[];
  public listParroquia: Parroquia[];
  public listTipoOrganizacion: TipoOrganizaciones[];
  public listParroquiaFiltered: Parroquia[];
  public intervencionSelect: Intervenciones;
  public listOrganizacion: Organizaciones[];
  
  private initOrganizacion():void{
    this.organi = new Organizaciones();
    
    
    this.organi.Zona;
    this.organi.provincia = new Provincias();
    this.organi.canton=new Canton();
    this.organi.parroquia =new Parroquia();
    this.organi.tipo = new TipoOrganizaciones();

  }

  constructor(private listasService: ListasService, private seleccionService: SeleccionService) { }

  ngOnInit(): void {
    this.listNumber=[];
    for (let index = 0; index < 100; index++) {
      this.listNumber.push(index);
      
    }
    console.log("array numero" + this.listNumber);

    this.seleccionService.seleccionadorList.subscribe(data => this.oneList = data);
    this.listasService.loadOrganizaciones().subscribe(data =>{
      this.listOrganizacion=data
      console.log(this.listOrganizacion);
    });
    this.listasService.loadProvincias().subscribe(data => {
      
      this.listProvincia = data;
      console.log(this.listProvincia);
      });
    this.initOrganizacion();
    this.listasService.loadParroquias().subscribe(data => this.listParroquia = data);
    this.listasService.loadCantones().subscribe(data => this.listCanton = data);
    this.listasService.loadTipOrganizacion().subscribe(data => this.listTipoOrganizacion = data);
  }

  public filtrarCanton(e: any): void {
    if (typeof this.organi.provincia !== 'undefined') {
      this.listCantonFiltered = this.listCanton.filter(x => x.provincia.IDProvincia == this.organi.provincia.IDProvincia);
      this.listParroquiaFiltered = [];
    } else {
    }
  }
  public filtrarParroquia(e: any): void {
    if (typeof this.organi.canton !== 'undefined') {
      this.listParroquiaFiltered = this.listParroquia.filter(x => x.canton.IDCanton == this.organi.canton.IDCanton);
    } else {
    }
  }
  saveOrgani(): void {
    console.log(this.organi)
     this.listasService.saveOrganizacion(this.organi).subscribe(data => {
       this.organi.IDOrganizacion = data['insert']; //Se agrega el ID creado recientemente
       swal.fire('Registrado con exito', `Organizacion "${this.organi.Organizacion}" registrado con éxito`, 'success')
     }, error => {
       swal.fire('Alerta de Error', `Por favor, llene todos los campos`, 'error')
     });
 
     //se Inicializa si no proviene de una intervencio elegida previamente
     if (typeof this.intervencionSelect === 'undefined') {
       this.intervencionSelect = new Intervenciones();
     }
     this.intervencionSelect.organizacion = this.organi;
     this.seleccionService.seleccionadorToForm.emit(this.intervencionSelect); //emite para enviar el obj al componente Formulario
   }
  
  
  
  

}
