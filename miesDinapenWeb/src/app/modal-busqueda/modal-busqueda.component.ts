import { Component, Input, OnInit } from '@angular/core';
import { Intervenciones, Personas } from '../Models/Modelos';
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
  public intervencionSelect: Intervenciones;

  listPersonas:Personas[];
  @Input() public oneList: Map<string, any[]>;
  constructor(private listasService: ListasService,private seleccionService:SeleccionService) { }

  ngOnInit(): void {
    console.log("Estoy en modal-busqueda");
    this.seleccionService.seleccionador.subscribe(data => {
      this.intervencionSelect = data;
    });

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
    console.log(this.intervencionSelect);
    if(typeof this.intervencionSelect === 'undefined'){
      this.intervencionSelect = new Intervenciones();
    }
    this.intervencionSelect.persona = p;
    this.seleccionService.seleccionadorToForm.emit(this.intervencionSelect); //emite para enviar el obj al componente Formulario
    
  }
}
