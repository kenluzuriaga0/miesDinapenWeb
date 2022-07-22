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
}
