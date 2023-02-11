import { Component, OnInit } from '@angular/core';
import { mergeMap } from 'rxjs';
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
    // Traigo el token del usuario loggeado y lo busco en las sesiones para obtener el idOperador
    //Luego lo paso como parametro y lo busco todas sus intervenciones que haya generado.
    const token =  localStorage.getItem('access-token') as string;
    this.listasService.loagUserLogged(token).pipe(
      mergeMap((data:any) => {
        console.log(data)
       let idOperador = data[0]['IDOperador']
        return this.listasService.loadIntervencionesByOperador(idOperador)
      }
    )).subscribe(result=>{
      console.log(result)
      this.listIntervenciones = result;
    });
    
  }
  selectIncidencia(inci:Intervenciones):void{
    this.seleccionService.seleccionador.emit(inci); //emite para enviar el obj al componente modal Persona
  }
  
  selectIncidenciaCompletada(inci:Intervenciones):void{
    this.seleccionService.seleccionadorToForm.emit(inci); //emite para enviar el obj al componente Formulario
  }
}
