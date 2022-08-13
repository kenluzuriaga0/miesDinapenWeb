import { EventEmitter, Injectable, Output } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class SeleccionService {

  //funciona como puente para pasar objetos entre componentes
  @Output() seleccionador: EventEmitter<any> = new EventEmitter();
  @Output() seleccionadorList: EventEmitter<any> = new EventEmitter();

  constructor() { }
}
