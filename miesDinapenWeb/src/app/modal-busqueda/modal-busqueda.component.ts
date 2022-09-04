import { Component, Input, OnInit } from '@angular/core';
import { Personas } from '../Models/Modelos';
import { ListasService } from '../services/listas.service';
import { SeleccionService } from './seleccion.service';

@Component({
  selector: 'app-modal-busqueda',
  templateUrl: './modal-busqueda.component.html',
  styleUrls: ['./modal-busqueda.component.css']
})
export class ModalBusquedaComponent implements OnInit {

  apellido1:string="";
  nombre1:string="";
  identificacion:string;

  listPersonas:Personas[];
  @Input() public oneList: Map<string, any[]>;
  constructor(private listasService: ListasService,private seleccionService:SeleccionService) { }

  ngOnInit(): void {
  }

  buscarPersona():void{
    this.listPersonas = [];
    if(typeof this.identificacion != 'undefined' && this.identificacion){
      this.listasService.loadPersonaByCedula(this.identificacion).subscribe(data => this.listPersonas=data)
    }else{
      if(this.apellido1.trim()||this.nombre1.trim()){
        this.listasService.loadPersonasFiltered(this.apellido1,this.nombre1).subscribe(data=> this.listPersonas=data);
      }
    }
  }

  selectPersona(p:Personas):void{
    console.log(p);
    this.seleccionService.seleccionador.emit(p); //emite para enviar el obj al componente Formulario
    
  }
}
