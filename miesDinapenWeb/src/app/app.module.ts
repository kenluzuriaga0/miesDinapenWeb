import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeaderComponent } from './header/header.component';
import { FooterComponent } from './footer/footer.component';
import { FormularioComponent } from './formulario/formulario.component';
import { FormsModule } from '@angular/forms';
import { HomeComponent } from './home/home.component';

import { HttpClientModule } from '@angular/common/http';
import { HashLocationStrategy, LocationStrategy } from '@angular/common';
import { ModalPersonaComponent } from './modal-persona/modal-persona.component';
import { ModalBusquedaComponent } from './modal-busqueda/modal-busqueda.component';
import { ProvinciaComponent } from './provincia/provincia.component';
import { ActividadesComponent } from './actividades/actividades.component';
import { CantonesComponent } from './cantones/cantones.component';
import { OrganizacionesComponent } from './organizaciones/organizaciones.component';
import { ParroquiasComponent } from './parroquias/parroquias.component';
import { ModalIncidenciaComponent } from './modal-incidencia/modal-incidencia.component';

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    FooterComponent,
    FormularioComponent,
    HomeComponent,
    ModalPersonaComponent,
    ModalBusquedaComponent,
    ProvinciaComponent,
    ActividadesComponent,
    CantonesComponent,
    OrganizacionesComponent,
    ParroquiasComponent,
    ModalIncidenciaComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,HttpClientModule
  ],
  providers: [{ provide: LocationStrategy, useClass: HashLocationStrategy }],
  bootstrap: [AppComponent]
})
export class AppModule { }
