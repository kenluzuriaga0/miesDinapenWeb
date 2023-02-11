import { HttpClient, HttpParams, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Provincias, Canton, Organizaciones, Personas, Parroquia, Intervenciones, IntervencionesTipoActividad, TipoOrganizaciones, IntervencionesFotos, IntervencionesAudios, PhotoPersonUpload, Login } from '../Models/Modelos';
import { environment } from "../../environments/environment"
import { AuthService } from './auth.service';

@Injectable({
  providedIn: 'root'
})
export class ListasService {
  baseUrl = environment.baseUrl;

  constructor(private http: HttpClient, private auth: AuthService) { }

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
  loadTipOrganizacion(): Observable<TipoOrganizaciones[]> { //CANTONES
    return this.http.get<TipoOrganizaciones[]>(`${this.baseUrl}/TipoOrganizacion/select.php`);
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

  saveOrganizacion(organizacion:Organizaciones): Observable<any> { //SAVE Organización
    return this.http.post<any>(`${this.baseUrl}/Organizaciones/insert.php`,organizacion);
  }// es tipo any para obtener el id creador del response

  updateOrganizacion(organizacion:Organizaciones): Observable<any> { //UPDATE Organizacion
    return this.http.post<any>(`${this.baseUrl}/Organizaciones/update.php`,organizacion); 
  }// 

  saveCanton(canton:Canton): Observable<any> { //SAVE Canton
    return this.http.post<any>(`${this.baseUrl}/Cantones/insert.php`,canton);
  }// es tipo any para obtener el id creador del response

  updateCanton(canton:Canton): Observable<any> { //UPDATE Canton
    return this.http.post<any>(`${this.baseUrl}/Cantones/update.php`,canton); 
  }// 

  saveParroquia(parroquia:Parroquia): Observable<any> { //SAVE Parroquia
    return this.http.post<any>(`${this.baseUrl}/Parroquias/insert.php`,parroquia);
  }// es tipo any para obtener el id creador del response

  updateParroquia(parroquia:Parroquia): Observable<any> { //UPDATEParroquia
    return this.http.post<any>(`${this.baseUrl}/Parroquias/update.php`,parroquia); 
  }// 

  saveProvincia(provincia:Provincias): Observable<any> { //SAVE Provincia
    return this.http.post<any>(`${this.baseUrl}/Provincias/insert.php`,provincia);
  }// es tipo any para obtener el id creador del response

  updateProvincia(provincia:Provincias): Observable<any> { //UPDATEProvincia
    return this.http.post<any>(`${this.baseUrl}/Provincias/update.php`,provincia); 
  }// 

  loadAllIntervenciones(): Observable<any> { // ALL INTERVENCIONES
    const token = this.auth.getToken();
    const param = `?token=${token}`;
    return this.http.get<Intervenciones[]>(`${this.baseUrl}/Incidencias/select.php${param}`);
  }

  loadIntervencionesByOperador(idOperador: number): Observable<any> { // INTERVENCIONES BY OPERADOR
    const param = `?idOperador=${idOperador}`;
    return this.http.get<Intervenciones[]>(`${this.baseUrl}/Incidencias/select.php${param}`);
  }

  // loadAllIntervenciones(): Observable<Intervenciones[]> { // ALL INTERVENCIONES
  //   return this.http.get<Intervenciones[]>(`${this.baseUrl}/Incidencias/select.php`);
  // }
  updateIntervencion(intervencion:Intervenciones): Observable<Intervenciones> { //UPDATE INTERVENCIONES
    return this.http.post<Intervenciones>(`${this.baseUrl}/Incidencias/update.php`,intervencion);
  }
  loadIntervencionActividadById(id: number): Observable<IntervencionesTipoActividad[]> { //INTERVENCION-ACTIVIDAD BY IDINTERVENCION
    return this.http.get<IntervencionesTipoActividad[]>(`${this.baseUrl}/Incidencias/Actividad/select.php?idIntervencion=${id}`);
  }
  saveIntervencionActividades(interv:IntervencionesTipoActividad): Observable<IntervencionesTipoActividad> { //SAVE IntervencionesTipoActividad
    return this.http.post<IntervencionesTipoActividad>(`${this.baseUrl}/Incidencias/Actividad/insert.php`,interv);
  }
  updatePersona(persona:Personas): Observable<Personas> { //UPDATE Personas
    return this.http.post<Personas>(`${this.baseUrl}/Personas/update.php`,persona);
  }

  loadFotosByIntervencion(id:number):Observable<IntervencionesFotos[]>{
    return this.http.get<IntervencionesFotos[]>(`${this.baseUrl}/Fotos/select.php?IDIntervencion=${id}`);
  }

  loadAudiosByIntervencion(id:number):Observable<IntervencionesAudios[]>{
    return this.http.get<IntervencionesAudios[]>(`${this.baseUrl}/Audios/select.php?IDIntervencion=${id}`);
  }

  // nueva funcion para llamar al servicio subir imagen
  uploadPhotoPerson(photoPersonUpload:PhotoPersonUpload): Observable<any> {
    const payload = new HttpParams()
                        .set('IDPersona', photoPersonUpload.IDPersona)
                        .set('Name', photoPersonUpload.Name)
                        .set('Base64Encode', photoPersonUpload.Base64Encode);
    return this.http.post<any>(`${this.baseUrl}/Fotos/upload_photo.php`, payload.toString(), { headers: new HttpHeaders().set('Content-Type', 'application/x-www-form-urlencoded') });
  }

  loagUserLogged(token_web_logged:string):Observable<any>{
    const param = `?token_web_logged=${token_web_logged}`;
    return this.http.get<any[]>(`${this.baseUrl}/SesionesUsuarios/select.php${param}`);
  }
  
}
