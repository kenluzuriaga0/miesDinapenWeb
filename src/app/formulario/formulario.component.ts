import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { Canton } from '../Models/Canton';
import { Provincias } from '../Models/Provincias';

@Component({
  selector: 'app-formulario',
  templateUrl: './formulario.component.html',
  styleUrls: ['./formulario.component.css']
})
export class FormularioComponent implements OnInit {

  public listProvincia: Provincias[];
  public listCantones: Canton[];

  public provincia: Provincias;
  constructor(private httpClient: HttpClient) { }

  ngOnInit(): void { //usar el servicio posteriormente
    this.httpClient.get<Provincias[]>("assets/ListaIDProvincias.json").subscribe(data => {
      this.listProvincia = data;
    });
    this.httpClient.get<Canton[]>("assets/ListaIDCantones.json").subscribe(data => {
      this.listCantones = data;
    });
  }


  public filtrarCanton(e: any): Canton[] {
    if (typeof this.provincia !== 'undefined') {
      return this.listCantones.filter(x => x.IDProvincia == this.provincia.IDProvincia);
    } else {
      return this.listCantones;
    }

  }

  public addNuevoSelect() {
    console.log('ojooo')
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
