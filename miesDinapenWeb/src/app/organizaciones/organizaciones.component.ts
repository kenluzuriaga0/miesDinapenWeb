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

    // lleno las listas normales y filtradas para seleccionar cantones y parroquias, ya que dependen que provincia esté lleno
    this.listasService.loadParroquias().subscribe(data => {this.listParroquia = data; this.listParroquiaFiltered = data;});
    this.listasService.loadCantones().subscribe(data =>{ this.listCanton = data;this.listCantonFiltered = data;});
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

  public selectModelo(o:Organizaciones){
    /**
     Seleccionar la organizacion con sus objetos internos
     Al final filtro los cnatones y parroquias para poder elegir nuevamente esas opciones
     **/
    this.organi.IDOrganizacion = o.IDOrganizacion;
    this.organi.Organizacion = o.Organizacion;
    this.organi.Zona = o.Zona;

    this.organi.provincia = o.provincia;
    this.organi.canton = o.canton;
    this.organi.parroquia = o.parroquia;
    this.organi.tipo = o.tipo;

    this.filtrarCanton(0);
    this.filtrarParroquia(0);

    console.log(this.organi)
  }
  
  saveOrgani(): void {
    if (typeof this.organi.IDOrganizacion != 'undefined') {
      // AQUI SE ACTUALIZA
      console.log(this.organi)
      this.listasService.updateOrganizacion(this.organi).subscribe(data => {
        swal.fire('Registrado con exito', `Organizacion "${this.organi.Organizacion}" registrado con éxito`, 'success')
      
       //METODO ACTUALIZAR TABLA
       this.listasService.loadProvincias().subscribe(data => {
        this.listProvincia = data;
        this.initOrganizacion()
        
        });

      }, error => {
        swal.fire('Alerta de Error', `Por favor, Seleccione Organizacion`, 'error')
      });
      return;
    }
    console.log(this.organi)
     this.listasService.saveOrganizacion(this.organi).subscribe(data => {
       swal.fire('Registrado con exito', `Organizacion "${this.organi.Organizacion}" registrado con éxito`, 'success')
    
       //METODO ACTUALIZAR TABLA
       this.listasService.loadProvincias().subscribe(data => {
       this.listProvincia = data;
       this.initOrganizacion()
      
       });
    
      }, error => {
       swal.fire('Alerta de Error', `Por favor, llene todos los campos y verifique el ID`, 'error')
     });
 
   }
  
  
  
  

}
