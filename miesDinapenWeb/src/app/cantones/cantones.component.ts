import { Component, OnInit } from '@angular/core';
import { SeleccionService } from '../modal-busqueda/seleccion.service';
import { Canton, Provincias } from '../Models/Modelos';
import { ListasService } from '../services/listas.service';

@Component({
  selector: 'app-cantones',
  templateUrl: './cantones.component.html',
  styleUrls: ['./cantones.component.css']
})
export class CantonesComponent implements OnInit {

  public canton: Canton;
  public listProvincia: Provincias[];
  public listCanton:Canton[];

  private initCanton():void{
    this.canton = new Canton();
    
    this.canton.provincia = new Provincias();
    this.canton.Canton;


  }

  constructor(private listasService: ListasService, private seleccionService: SeleccionService) { }

  ngOnInit(): void {
    this.initCanton();
    this.listasService.loadCantones().subscribe(data => this.listCanton = data);

    this.listasService.loadProvincias().subscribe(data => {
      
      this.listProvincia = data;
      console.log(this.listProvincia);
      });
  }

}
