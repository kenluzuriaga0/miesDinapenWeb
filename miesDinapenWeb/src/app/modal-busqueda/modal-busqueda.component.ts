import { Component, OnInit } from '@angular/core';
import { Personas } from '../Models/Modelos';
import { ListasService } from '../services/listas.service';
import { SeleccionService } from './seleccion.service';

@Component({
  selector: 'app-modal-busqueda',
  templateUrl: './modal-busqueda.component.html',
  styleUrls: ['./modal-busqueda.component.css']
})
export class ModalBusquedaComponent implements OnInit {

  apellido1:string;
  nombre1:string;
  identificacion:string;

  listPersonas:Personas[];

  constructor(private listasService: ListasService,private seleccionService:SeleccionService) { }

  ngOnInit(): void {
  }

  buscarPersona():void{
    this.listPersonas = [];
    if(typeof this.identificacion != 'undefined' && this.identificacion){
      console.log("nooo")
      this.listasService.loadPersonaByCedula(this.identificacion).subscribe(data => this.listPersonas=data)
    }else{
      if(this.apellido1||this.nombre1){
        this.listasService.loadPersonasFiltered(this.apellido1,this.nombre1).subscribe(data=> this.listPersonas=data);

      }
    }
 
  }

  selectPersona(p:Personas):void{
    this.seleccionService.seleccionador.emit(p); //emite para enviar el obj al componente Formulario
    
  }
}
