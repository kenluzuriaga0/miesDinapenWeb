import { Component, OnInit } from '@angular/core';
import { SeleccionService } from '../modal-busqueda/seleccion.service';
import { Intervenciones } from '../Models/Modelos';
import { ListasService } from '../services/listas.service';

@Component({
  selector: 'app-modal-incidencia',
  templateUrl: './modal-incidencia.component.html',
  styleUrls: ['./modal-incidencia.component.css']
})
export class ModalIncidenciaComponent implements OnInit {

  public listIntervenciones: Intervenciones[];

  constructor(private listasService:ListasService,private seleccionService:SeleccionService) { }

  ngOnInit(): void {
    this.listasService.loadAllIntervenciones().subscribe(result=>{
      if(result.Success) {
        this.listIntervenciones = result.Data;
      }
    });
    // this.listasService.loadAllIntervenciones().subscribe(data=>{
    //   this.listIntervenciones = data;
    // });
  }
  selectIncidencia(inci:Intervenciones):void{
    this.seleccionService.seleccionador.emit(inci); //emite para enviar el obj al componente modal Persona
  }
  
  selectIncidenciaCompletada(inci:Intervenciones):void{
    this.seleccionService.seleccionadorToForm.emit(inci); //emite para enviar el obj al componente Formulario
  }
}
