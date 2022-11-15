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

  public selectParroquias(pa:Parroquia){
    /**
     Seleccionar la organizacion con sus objetos internos
     Al final filtro los cnatones y parroquias para poder elegir nuevamente esas opciones
     **/
    this.parroq.IDParroquia = pa.IDParroquia;
    this.parroq.Parroquia = pa.Parroquia;
    this.parroq.canton = pa.canton;
    
    console.log(this.parroq)
  }
  saveParroquia(): void {
    if (typeof this.parroq.IDParroquia != 'undefined') {
      // AQUI SE LLAMA EL METODO QUE ACTUALIZA
     console.log(this.parroq)
     this.listasService.updateParroquia(this.parroq).subscribe(data => {
       swal.fire('Registrado con exito', `Parroquia "${this.parroq.Parroquia}" registrado con éxito`, 'success')
   
       //METODO ACTUALIZAR TABLA
       this.listasService.loadCantones().subscribe(data => this.listCanton = data);
      this.listasService.loadParroquias().subscribe(data => {
      this.listParroquia = data;
          this.initParroquia()
      
      });

      }, error => {
       swal.fire('Alerta de Error', `Por favor, Seleccione Parroquia`, 'error')
     });
      return;
    }
    console.log(this.parroq)
     this.listasService.saveParroquia(this.parroq).subscribe(data => {
       swal.fire('Registrado con exito', `Parroquia "${this.parroq.Parroquia}" registrado con éxito`, 'success')
     
       //METODO ACTUALIZAR TABLA
      this.listasService.loadCantones().subscribe(data => this.listCanton = data);
      this.listasService.loadParroquias().subscribe(data => {
      this.listParroquia = data;
          this.initParroquia()
     });
     

      }, error => {
       swal.fire('Alerta de Error', `Por favor, llene todos los campos`, 'error')
     });
 
    }

}
