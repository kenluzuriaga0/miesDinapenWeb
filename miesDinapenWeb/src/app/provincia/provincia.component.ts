import { Component, OnInit } from '@angular/core';
import { SeleccionService } from '../modal-busqueda/seleccion.service';
import { Provincias } from '../Models/Modelos';
import { ListasService } from '../services/listas.service';

@Component({
  selector: 'app-provincia',
  templateUrl: './provincia.component.html',
  styleUrls: ['./provincia.component.css']
})
export class ProvinciaComponent implements OnInit {

  public provi:Provincias;
  public listProvincia: Provincias[];

  private initprovincia():void{
    this.provi = new Provincias();
    
    this.provi.Provincia;


  }


  constructor(private listasService: ListasService, private seleccionService: SeleccionService) { }

  ngOnInit(): void {
    this.listasService.loadProvincias().subscribe(data =>{
      this.listProvincia=data
      console.log(this.listProvincia);

      this.initprovincia()
    });
  }

}
