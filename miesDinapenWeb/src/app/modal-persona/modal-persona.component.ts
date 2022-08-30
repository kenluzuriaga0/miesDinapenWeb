import { Component, OnInit } from '@angular/core';
import { SeleccionService } from '../modal-busqueda/seleccion.service';
import { CabelloColor, CabelloTipo, Canton, CondicionMedica, Contextura, Discapacidad,
   EstadoCivil, Estatura, Etnia, Genero, Nacionalidad, Parroquia, Personas, Provincias } from '../Models/Modelos';
import { ListasService } from '../services/listas.service';
import swal from 'sweetalert2';

@Component({
  selector: 'app-modal-persona',
  templateUrl: './modal-persona.component.html',
  styleUrls: ['./modal-persona.component.css']
})
export class ModalPersonaComponent implements OnInit {

  public person: Personas;
  public oneList: Map<string, any[]>;

  private initPersona():void{
    this.person = new Personas();

    this.person.Cedula='';
    this.person.FechaNacim=new Date();

    this.person.estadoCivil=new EstadoCivil();
    this.person.etnia=new Etnia();
    this.person.nacionalidad=new Nacionalidad();
    this.person.genero=new Genero();

    this.person.canton=new Canton();
    this.person.provincia=new Provincias();
    this.person.condicionMedica=new CondicionMedica();
    this.person.cabelloColor=new CabelloColor();
    this.person.cabelloTipo=new CabelloTipo();
    this.person.contextura=new Contextura();
    this.person.discapacidad=new Discapacidad();
    this.person.estadoCivil=new EstadoCivil();
    this.person.estatura=new Estatura();
    this.person.nacionalidad=new Nacionalidad();
    this.person.parroquia=new Parroquia();
    this.person.provincia=new Provincias();

  }
  constructor(private listasService: ListasService,private seleccionService: SeleccionService) { }

  ngOnInit(): void {
    this.seleccionService.seleccionadorList.subscribe(data => {
      this.oneList = data;
    });
    this.initPersona();

  }
  savePerson():void{
    console.log(this.person)
    this.listasService.savePersona(this.person).subscribe(data=> {
      swal.fire('Registrado con exito', `Persona "${this.person.Apellido1}" registrado con éxito`, 'success')
    },error =>{
      swal.fire('Alerta de Error', `No se registró la persona`, 'error')
    }    );
  }

}
