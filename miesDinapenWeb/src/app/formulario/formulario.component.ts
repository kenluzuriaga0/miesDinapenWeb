import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { TipoActividades } from '../Models/Listas';
import { Provincias, Canton, Organizaciones, TipoOrganizaciones } from '../Models/Lugares';
import { ListasService } from '../services/listas.service';

@Component({
  selector: 'app-formulario',
  templateUrl: './formulario.component.html',
  styleUrls: ['./formulario.component.css']
})
export class FormularioComponent implements OnInit {

  public listProvincia: Provincias[];
  public listCantones: Canton[];
  public listOrganizaciones: Organizaciones[];
  public listTipoActividades: TipoActividades[];
  
  public provincia: Provincias;
  public organizacion: Organizaciones;

  constructor(private listasService: ListasService) { }
  
  ngOnInit(): void { //se llenan las listas cuando carga la vista
    this.init();
    this.listasService.loadProvincias().subscribe(data => {
      this.listProvincia = data;
    });

    this.listasService.loadCantones().subscribe(data => {
      this.listCantones = data;
    });

    this.listasService.loadOrganizaciones().subscribe(data => {
      this.listOrganizaciones = data;
    });

    this.listasService.loadTipoActividades().subscribe(data => {
      this.listTipoActividades = data;
    });
  }


  private init(): void {
    this.organizacion = new Organizaciones();
    this.organizacion.tipo = new TipoOrganizaciones();
    this.organizacion.tipo.TipoOrganizacion = "";

    this.organizacion.provincia = new Provincias();
    this.organizacion.provincia.Provincia='';

    this.organizacion.canton = new Canton();
    this.organizacion.canton.Canton = '';

  }


  public filtrarCanton(e: any): Canton[] {
    if (typeof this.provincia !== 'undefined') {
      return this.listCantones.filter(x => x.IDProvincia == this.provincia.IDProvincia);
    } else {
      return this.listCantones;
    }
  }

  public addNuevoSelect() {
    console.log(this.organizacion)
    let row = document.createElement('div');
    row.className = 'row';
    row.innerHTML = `
    <br>
    <label for="nombre" class="col-form-label col-sm-4">Actividad</label>
    <div class="col-sm-8">
                            <select class="form-select" aria-label="Default select example">
                                <option disabled selected>-</option>
                                <option value="1">Venta ambulante</option>
                                <option value="2">Agricultura</option>
                                <option value="2">Lustrado de calzado</option>
                                <option value="2">Comercio informal</option>
                                <option value="2">Construcción</option>
                                <option value="2">Manufacturas</option>
                                <option value="2">Act. No remunerada en el hogar</option>
                                <option value="2">Mecánica</option>
                                <option value="2">Minería</option>
                                <option value="2">Reciclaje</option>
                                <option value="2">Pesca</option>
                                <option value="2">Trabajo en calle</option>
                                <option value="2">Otros</option>
                            </select>
                        </div>`;
    document.querySelector('.selectExtra')?.appendChild(row);
  }

}
