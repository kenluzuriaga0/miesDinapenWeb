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

  public selectCanton(c:Canton){
    /**
     Seleccionar la organizacion con sus objetos internos
     Al final filtro los cnatones y parroquias para poder elegir nuevamente esas opciones
     **/
    this.canton.IDCanton = c.IDCanton;
    this.canton.Canton = c.Canton;
    this.canton.provincia = c.provincia;
    
    console.log(this.canton)
  }

  saveCanton(): void {
    if (typeof this.canton.IDCanton != 'undefined') {
      //swal.fire('OJO', `AQUI SE DEBE ACTUALIZAR, OJO FREYU`, 'success')
      // AQUI SE ACTUALIZA
      console.log(this.canton)
      this.listasService.updateCanton(this.canton).subscribe(data => {
        swal.fire('Registrado con exito', `Canton "${this.canton.Canton}" registrado con éxito`, 'success')
      
        //METODO ACTUALIZAR TABLA
        this.listasService.loadCantones().subscribe(data => this.listCanton = data);
        this.listasService.loadProvincias().subscribe(data => {
          this.listProvincia = data;
          this.initCanton()
      });

      }, error => {
        swal.fire('Alerta de Error', `Por favor, Seleccione Canton`, 'error')
      });
      return;
    }
    console.log(this.canton)
     this.listasService.saveCanton(this.canton).subscribe(data => {
       swal.fire('Registrado con exito', `Canton "${this.canton.Canton}" registrado con éxito`, 'success')
    
     //METODO ACTUALIZAR TABLA
     this.listasService.loadCantones().subscribe(data => this.listCanton = data);
        this.listasService.loadProvincias().subscribe(data => {
          this.listProvincia = data;
          this.initCanton()
   });
      }, error => {
       swal.fire('Alerta de Error', `Por favor, llene todos los campos y verifique el ID`, 'error')
     });
     
   }

}
