import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ActividadesComponent } from './actividades/actividades.component';
import { AppComponent } from './app.component';
import { CantonesComponent } from './cantones/cantones.component';
import { FormularioComponent } from './formulario/formulario.component';
import { HomeComponent } from './home/home.component';
import { OrganizacionesComponent } from './organizaciones/organizaciones.component';
import { ParroquiasComponent } from './parroquias/parroquias.component';
import { ProvinciaComponent } from './provincia/provincia.component';

const routes: Routes = [
  {path: '', redirectTo:'/home', pathMatch:'full'},
  {path: 'home', component: HomeComponent},
  {path: 'formulario', component: FormularioComponent},
  {path: 'provincia', component: ProvinciaComponent},
  {path: 'cantones', component: CantonesComponent},
  {path: 'parroquias', component: ParroquiasComponent},
  {path: 'actividades', component: ActividadesComponent},
  {path: 'organizaciones', component: OrganizacionesComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
