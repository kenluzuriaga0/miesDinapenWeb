import { Component, Input, OnInit } from '@angular/core';
import { Intervenciones, IntervencionesAudios, IntervencionesFotos, Personas } from '../Models/Modelos';
import { ListasService } from '../services/listas.service';
import { SeleccionService } from './seleccion.service';

@Component({
  selector: 'app-modal-busqueda',
  templateUrl: './modal-busqueda.component.html',
  styleUrls: ['./modal-busqueda.component.css']
})
export class ModalBusquedaComponent implements OnInit {

  apellido1: string = "";
  nombre1: string = "";
  identificacion: string;
  public intervencionSelect: Intervenciones;
  conIntervension: boolean;
  public fotos: IntervencionesFotos[] = [];
  public audios: IntervencionesAudios[] = [];

  listPersonas: Personas[];
  @Input() public oneList: Map<string, any[]>;
  constructor(private listasService: ListasService, private seleccionService: SeleccionService) { }

  ngOnInit(): void {
    this.seleccionService.seleccionador.subscribe(data => {
      this.intervencionSelect = data;
      this.conIntervension = true;
      this.listasService.loadFotosByIntervencion(this.intervencionSelect.IDIntervencion).subscribe(data => this.fotos = data);
      this.listasService.loadAudiosByIntervencion(this.intervencionSelect.IDIntervencion).subscribe(data => this.audios = data);
    });
    //se Inicializa si no proviene de una intervencion elegida previamente
    if (typeof this.intervencionSelect === 'undefined') {
      this.conIntervension = false;
      this.intervencionSelect = new Intervenciones();
    }
  }

  buscarPersona(): void {
    this.listPersonas = [];
    if (typeof this.identificacion != 'undefined' && this.identificacion) {
      this.listasService.loadPersonaByCedula(this.identificacion).subscribe(data => this.listPersonas = data)
    } else {
      if (this.apellido1.trim() || this.nombre1.trim()) {
        this.listasService.loadPersonasFiltered(this.apellido1, this.nombre1).subscribe(data => this.listPersonas = data);
      }
    }
  }

  selectPersona(p: Personas): void {
    if (typeof this.intervencionSelect === 'undefined') {
      this.intervencionSelect = new Intervenciones();
    }
    this.intervencionSelect.persona = p;
    this.seleccionService.seleccionadorToForm.emit(this.intervencionSelect); //emite para enviar el obj al componente Formulario

  }
}
