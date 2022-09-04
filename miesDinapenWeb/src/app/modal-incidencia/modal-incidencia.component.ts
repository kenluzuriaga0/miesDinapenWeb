import { Component, OnInit } from '@angular/core';
import { Intervenciones } from '../Models/Modelos';
import { ListasService } from '../services/listas.service';

@Component({
  selector: 'app-modal-incidencia',
  templateUrl: './modal-incidencia.component.html',
  styleUrls: ['./modal-incidencia.component.css']
})
export class ModalIncidenciaComponent implements OnInit {

  public listIntervenciones: Intervenciones[];

  constructor(private listasService:ListasService) { }

  ngOnInit(): void {
    this.listasService.loadAllIntervenciones().subscribe(data=>{
      this.listIntervenciones = data;
    });
  }

}
