import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { TipoActividades } from '../Models/Listas';
import { Provincias,Canton,Organizaciones} from '../Models/Lugares';
@Injectable({
  providedIn: 'root'
})
export class ListasService {

  constructor(private http: HttpClient) { }

  private urlEndPoint:string = "http://localhost:8000/api/";

  
  loadProvincias():Observable<Provincias[]> { //PROVINCIAS
    return this.http.get<Provincias[]>(this.urlEndPoint.concat('provincias'));
  }

  loadCantones():Observable<Canton[]> { //CANTONES
    return this.http.get<Canton[]>(this.urlEndPoint.concat('cantones'));
  }

  loadOrganizaciones():Observable<Organizaciones[]> { //ORGANIZACIONES
    return this.http.get<Organizaciones[]>(this.urlEndPoint.concat('organizaciones'));
  }

  loadListasProgramadas(param:string):Observable<any[]> { //LISTAS PROGRAMADAS
    return this.http.get<any>(this.urlEndPoint.concat('listasprogramadas/'+param));
  }
}
