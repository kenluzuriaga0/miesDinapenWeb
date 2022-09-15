import { Component, OnInit } from '@angular/core';
import { SeleccionService } from '../modal-busqueda/seleccion.service';
import { Canton, Parroquia, Provincias } from '../Models/Modelos';
import { ListasService } from '../services/listas.service';
import swal from 'sweetalert2';

@Component({
  selector: 'app-cantones',
  templateUrl: './cantones.component.html',
  styleUrls: ['./cantones.component.css']
})
export class CantonesComponent implements OnInit {

  public canton: Canton;
  public listProvincia: Provincias[];
  public listCanton:Canton[];
  public listCantonFiltered: Canton[];
  public listParroquiaFiltered: Parroquia[];
  private initCanton():void{
    this.canton = new Canton();
    
    this.canton.provincia = new Provincias();
    this.canton.Canton;


  }

  constructor(private listasService: ListasService, private seleccionService: SeleccionService) { }

  ngOnInit(): void {
    this.initCanton();
    this.listasService.loadCantones().subscribe(data => this.listCanton = data);

    this.listasService.loadProvincias().subscribe(data => {
      
      this.listProvincia = data;
      console.log(this.listProvincia);
      });
  }

  public filtrarCanton(e: any): void {
    if (typeof this.canton.provincia !== 'undefined') {
      this.listCantonFiltered = this.listCanton.filter(x => x.provincia.IDProvincia == this.canton.provincia.IDProvincia);
      this.listParroquiaFiltered = [];
    } else {
    }
  }


  saveCanton(): void {
    console.log(this.canton)
     this.listasService.saveCanton(this.canton).subscribe(data => {
       this.canton.IDCanton = data['insert']; //Se agrega el ID creado recientemente
       swal.fire('Registrado con exito', `Organizacion "${this.canton.Canton}" registrado con éxito`, 'success')
     }, error => {
       swal.fire('Alerta de Error', `Por favor, llene todos los campos`, 'error')
     });
     
   }

}
