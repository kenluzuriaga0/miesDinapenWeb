import { Component, OnInit } from '@angular/core';
import { SeleccionService } from '../modal-busqueda/seleccion.service';
import { Provincias } from '../Models/Modelos';
import { ListasService } from '../services/listas.service';
import swal from 'sweetalert2';
@Component({
  selector: 'app-provincia',
  templateUrl: './provincia.component.html',
  styleUrls: ['./provincia.component.css']
})
export class ProvinciaComponent implements OnInit {

  public provi:Provincias;
  public listProvincia: Provincias[];

  private initprovincia():void{
    this.provi = new Provincias();
    
    this.provi.Provincia;


  }

 public  selectProvincia(p:Provincias){
    this.provi.IDProvincia = p.IDProvincia;
    this.provi.Provincia = p.Provincia;
  }



  constructor(private listasService: ListasService, private seleccionService: SeleccionService) { }

  ngOnInit(): void {
    this.listasService.loadProvincias().subscribe(data =>{
      this.listProvincia=data
      console.log(this.listProvincia);

      this.initprovincia()
    });
  }
  
  saveProvincia(): void {
    if (typeof this.provi.IDProvincia != 'undefined') {
      //swal.fire('OJO', `AQUI SE DEBE ACTUALIZAR, OJO FREYU`, 'success')
      // AQUI SE LLAMA EL METODO QUE ACTUALIZA
      console.log(this.provi)
     this.listasService.updateProvincia(this.provi).subscribe(data => {
       swal.fire('Registrado con exito', `Provincia "${this.provi.Provincia}" registrado con éxito`, 'success')
     
       //METODO ACTUALIZAR TABLA
       this.listasService.loadProvincias().subscribe(data =>{
        this.listProvincia=data
  
        this.initprovincia()
        
      });
      }, error => {
       swal.fire('Alerta de Error', `Por favor, Seleccione Provincia`, 'error')
     });


      return;
    }
    console.log(this.provi)
     this.listasService.saveProvincia(this.provi).subscribe(data => {
       swal.fire('Registrado con exito', `Provincia "${this.provi.Provincia}" registrado con éxito`, 'success')
     //METODO ACTUALIZAR TABLA
       this.listasService.loadProvincias().subscribe(data =>{
        this.listProvincia=data
  
        this.initprovincia()
      });
      }, error => {
       swal.fire('Alerta de Error', `Por favor, llene todos los campos`, 'error')
     });
     
 
    }
  

}

