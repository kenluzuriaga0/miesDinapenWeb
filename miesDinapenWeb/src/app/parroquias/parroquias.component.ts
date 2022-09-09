import { Component, OnInit } from '@angular/core';
import { SeleccionService } from '../modal-busqueda/seleccion.service';
import { Canton, Parroquia, Provincias } from '../Models/Modelos';
import { ListasService } from '../services/listas.service';

@Component({
  selector: 'app-parroquias',
  templateUrl: './parroquias.component.html',
  styleUrls: ['./parroquias.component.css']
})
export class ParroquiasComponent implements OnInit {

  public parroquia: Parroquia;
  public listParroquia: Parroquia[];
  public listCanton:Canton[];

  private initParroquia():void{
    this.parroquia = new Parroquia();
    
    this.parroquia.Parroquia;
    this.parroquia.canton = new Canton();


  }
  

  constructor(private listasService: ListasService, private seleccionService: SeleccionService) { }

  ngOnInit(): void {
    this.initParroquia();
    this.listasService.loadCantones().subscribe(data => this.listCanton = data);

    this.listasService.loadParroquias().subscribe(data => {
      
      this.listParroquia = data;
      console.log(this.listParroquia);
      });

  }

}
