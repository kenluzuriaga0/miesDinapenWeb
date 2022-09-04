import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Provincias, Canton, Organizaciones, Personas, Parroquia, Intervenciones } from '../Models/Modelos';
import { environment } from "../../environments/environment"

@Injectable({
  providedIn: 'root'
})
export class ListasService {
  baseUrl = environment.baseUrl;

  constructor(private http: HttpClient) { }

  loadListasProgramadas(idList:string):Observable<any[]> { // LISTAS PROGRAMADAS
    return this.http.get<any>(`${this.baseUrl}/listasSelect.php?idLista=${idList}`);
  }
  loadOrganizaciones(): Observable<Organizaciones[]> { //ORGANIZACIONES
    return this.http.get<Organizaciones[]>(`${this.baseUrl}/Organizaciones/organizacionSelect.php`);
  }
  loadProvincias(): Observable<Provincias[]> { //PROVINCIAS
    return this.http.get<Provincias[]>(`${this.baseUrl}/Provincias/select.php`);
  }

  loadCantones(): Observable<Canton[]> { //CANTONES
    return this.http.get<Canton[]>(`${this.baseUrl}/Cantones/select.php`);
  }

  loadParroquias(): Observable<Parroquia[]> { //PARROQUIAS
    return this.http.get<Parroquia[]>(`${this.baseUrl}/Parroquias/select.php`);
  }

  loadPersonasFiltered(apellido1?: string, nombre1?: string): Observable<Personas[]> { //PERSONAS BY NOMBRES
    return this.http.get<Personas[]>(`${this.baseUrl}/Personas/select.php?last=${apellido1}&name=${nombre1}`);
  }

  loadPersonaByCedula(cedula: string): Observable<Personas[]> { //PERSONAS BY CEDULA
    return this.http.get<Personas[]>(`${this.baseUrl}/Personas/select.php?cedula=${cedula}`);
  }
  loadAllPersonas(): Observable<Personas[]> { // ALL PERSONAS
    return this.http.get<Personas[]>(`${this.baseUrl}/Personas/select.php`);
  }

  savePersona(persona:Personas): Observable<Personas> { //SAVE PERSONAS
    return this.http.post<Personas>(`${this.baseUrl}/Personas/insert.php`,persona);
  }

  loadAllIntervenciones(): Observable<Intervenciones[]> { // ALL INTERVENCIONES
    return this.http.get<Intervenciones[]>(`${this.baseUrl}/Incidencias/select.php`);
  }
  updateIntervencion(intervencion:Intervenciones): Observable<Intervenciones> { //UPDATE INTERVENCIONES
    return this.http.post<Intervenciones>(`${this.baseUrl}/Incidencias/update.php`,intervencion);
  }

}
