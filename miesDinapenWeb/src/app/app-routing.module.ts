import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ActividadesComponent } from './actividades/actividades.component';
import { AppComponent } from './app.component';
import { CantonesComponent } from './cantones/cantones.component';
import { FormularioComponent } from './formulario/formulario.component';
import { HomeComponent } from './home/home.component';
import { LoginComponent } from './login/login.component';
import { OrganizacionesComponent } from './organizaciones/organizaciones.component';
import { ParroquiasComponent } from './parroquias/parroquias.component';
import { ProvinciaComponent } from './provincia/provincia.component';
import { AuthLoggedGuard } from './guards/auth-logged.guard';

const routes: Routes = [
  {path: '', redirectTo:'/home', pathMatch:'full'},
  {path: 'login', component: LoginComponent, canActivate: [AuthLoggedGuard] },
  {path: 'home', component: HomeComponent, canActivate: [AuthLoggedGuard] },
  {path: 'formulario', component: FormularioComponent, canActivate: [AuthLoggedGuard] },
  {path: 'provincia', component: ProvinciaComponent, canActivate: [AuthLoggedGuard] },
  {path: 'cantones', component: CantonesComponent, canActivate: [AuthLoggedGuard] },
  {path: 'parroquias', component: ParroquiasComponent, canActivate: [AuthLoggedGuard] },
  {path: 'actividades', component: ActividadesComponent, canActivate: [AuthLoggedGuard] },
  {path: 'organizaciones', component: OrganizacionesComponent, canActivate: [AuthLoggedGuard] },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
