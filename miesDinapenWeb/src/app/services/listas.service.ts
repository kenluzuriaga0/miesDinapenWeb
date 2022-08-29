import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Provincias, Canton, Organizaciones, Personas } from '../Models/Modelos';
import { environment } from "../../environments/environment"

@Injectable({
  providedIn: 'root'
})
export class ListasService {
  baseUrl = environment.baseUrl;

  constructor(private http: HttpClient) { }

  private urlEndPoint: string = "http://localhost:8000/api/";

  getTest():Observable<any[]> {
    return this.http.get<any>(`${this.baseUrl}/test.php`);
  }
  loadProvincias(): Observable<Provincias[]> { //PROVINCIAS
    return this.http.get<Provincias[]>(this.urlEndPoint.concat('provincias'));
  }

  loadCantones(): Observable<Canton[]> { //CANTONES
    return this.http.get<Canton[]>(this.urlEndPoint.concat('cantones'));
  }

  loadOrganizaciones(): Observable<Organizaciones[]> { //ORGANIZACIONES
    return this.http.get<Organizaciones[]>(this.urlEndPoint.concat('organizaciones'));
  }

  loadListasProgramadas(param: string): Observable<any[]> { //LISTAS PROGRAMADAS
    return this.http.get<any>(this.urlEndPoint.concat('listasprogramadas/' + param));
  }

  loadPersonasFiltered(apellido1?: string, nombre1?: string): Observable<Personas[]> { //PERSONAS
    let params: any;
    if (nombre1 && !apellido1) {
      params = { nombre1: nombre1 };
    } else if (!nombre1 && apellido1) {
      params = { apellido1: apellido1 };
    }
    else {
      params = { apellido1: apellido1, nombre1: nombre1 };
    }

    return this.http.get<Personas[]>(this.urlEndPoint.concat('personas/'), { // con Params
      params: params
    });
  }

  loadPersonaByCedula(param: string): Observable<Personas[]> { //PERSONAS BY CEDULA
    return this.http.get<Personas[]>(this.urlEndPoint.concat('personas/' + param));
  }

  savePersona(persona:Personas): Observable<Personas> { //PERSONAS BY CEDULA
    return this.http.post<Personas>(this.urlEndPoint.concat('personas/'),persona);
  }

}
