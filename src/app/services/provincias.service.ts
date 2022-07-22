import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class ProvinciasService {

  constructor(private http: HttpClient) { }


  loadProvincias() {
    const url = ''; //obtengo de la base

    return this.http.get(url);

  }
}
