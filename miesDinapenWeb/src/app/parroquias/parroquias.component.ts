import { Component, OnInit } from '@angular/core';
import { SeleccionService } from '../modal-busqueda/seleccion.service';
import { Canton, Intervenciones, Parroquia, Provincias } from '../Models/Modelos';
import { ListasService } from '../services/listas.service';
import swal from 'sweetalert2';
@Component({
  selector: 'app-parroquias',
  templateUrl: './parroquias.component.html',
  styleUrls: ['./parroquias.component.css']
})
export class ParroquiasComponent implements OnInit {

  public parroq: Parroquia;
  public listParroquia: Parroquia[];
  public listCanton:Canton[];
  public listCantonFiltered: Canton[];
  public listParroquiaFiltered: Parroquia[];
  public intervencionSelect: Intervenciones;
  private initParroquia():void{
    this.parroq = new Parroquia();
    
    this.parroq.Parroquia;
    this.parroq.canton = new Canton();


  }
  

  constructor(private listasService: ListasService, private seleccionService: SeleccionService) { }

  ngOnInit(): void {
    this.initParroquia();
    this.listasService.loadCantones().subscribe(data => this.listCanton = data);

    this.listasService.loadParroquias().subscribe(data => {
      
      this.listParroquia = data;
      console.log(this.listParroquia);
      });

  }
 /* public filtrarCanton(e: any): void {
    if (typeof this.parroq.Parroquia !== 'undefined') {
      this.listParroquiaFiltered = this.listParroquia.filter(x => x.IDProvincia == this.parroq.IDParroquia);
      this.listParroquiaFiltered = [];
    } else {
    }
  }*/

  public filtrarParroquia(e: any): void {
    if (typeof this.parroq.canton !== 'undefined') {
      this.listParroquiaFiltered = this.listParroquia.filter(x => x.canton.IDCanton == this.parroq.canton.IDCanton);
    } else {
    }
  }

  saveParroquia(): void {
    console.log(this.parroq)
     this.listasService.saveParroquia(this.parroq).subscribe(data => {
       this.parroq.IDParroquia = data['insert']; //Se agrega el ID creado recientemente
       swal.fire('Registrado con exito', `Organizacion "${this.parroq.Parroquia}" registrado con éxito`, 'success')
     }, error => {
       swal.fire('Alerta de Error', `Por favor, llene todos los campos`, 'error')
     });
 
    }

}
