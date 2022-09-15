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


  saveCanton(): void {
    console.log(this.canton)
     this.listasService.saveCanton(this.canton).subscribe(data => {
       swal.fire('Registrado con exito', `Canton "${this.canton.Canton}" registrado con éxito`, 'success')
     }, error => {
       swal.fire('Alerta de Error', `Por favor, llene todos los campos y verifique el ID`, 'error')
     });
     
   }

}
