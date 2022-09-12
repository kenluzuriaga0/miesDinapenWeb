import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Provincias, Canton, Organizaciones, Personas, Parroquia, Intervenciones, IntervencionesTipoActividad } from '../Models/Modelos';
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

  savePersona(persona:Personas): Observable<any> { //SAVE PERSONAS
    return this.http.post<any>(`${this.baseUrl}/Personas/insert.php`,persona);
  }// es tipo any para obtener el id creador del response

  loadAllIntervenciones(): Observable<Intervenciones[]> { // ALL INTERVENCIONES
    return this.http.get<Intervenciones[]>(`${this.baseUrl}/Incidencias/select.php`);
  }
  updateIntervencion(intervencion:Intervenciones): Observable<Intervenciones> { //UPDATE INTERVENCIONES
    return this.http.post<Intervenciones>(`${this.baseUrl}/Incidencias/update.php`,intervencion);
  }
  loadIntervencionActividadById(id: number): Observable<IntervencionesTipoActividad[]> { //INTERVENCION-ACTIVIDAD BY IDINTERVENCION
    return this.http.get<IntervencionesTipoActividad[]>(`${this.baseUrl}/Incidencias/Actividad/select.php?idIntervencion=${id}`);
  }
  saveIntervencionActividades(interv:IntervencionesTipoActividad): Observable<IntervencionesTipoActividad> { //SAVE IntervencionesTipoActividad
    return this.http.post<IntervencionesTipoActividad>(`${this.baseUrl}/Incidencias/Actividad/insert.php`,interv);
  }
}
