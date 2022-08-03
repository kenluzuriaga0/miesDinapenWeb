import { EventEmitter, Injectable, Output } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class SeleccionService {

  @Output() seleccionador: EventEmitter<any> = new EventEmitter();

  constructor() { }
}
