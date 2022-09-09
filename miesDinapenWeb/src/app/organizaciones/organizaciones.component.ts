import { Component, OnInit } from '@angular/core';
import { SeleccionService } from '../modal-busqueda/seleccion.service';
import { Canton, Organizaciones, Parroquia, Provincias, TipoOrganizaciones } from '../Models/Modelos';
import { ListasService } from '../services/listas.service';

@Component({
  selector: 'app-organizaciones',
  templateUrl: './organizaciones.component.html',
  styleUrls: ['./organizaciones.component.css']
})
export class OrganizacionesComponent implements OnInit {
  
  public organi: Organizaciones;
  public listProvincia: Provincias[];
  public listCanton:Canton[];
  public listParroquia: Parroquia[];
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
  }

    
  
  
  
  

}
