import { Component, OnInit } from '@angular/core';

import { Login } from '../Models/Modelos';
import { ListasService } from '../services/listas.service';

import { CookieService } from 'ngx-cookie-service';
import { Router } from '@angular/router';
import { AuthService } from '../services/auth.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  public objLogin: Login;

  constructor(private listasService: ListasService, private cookieService: CookieService, private router: Router, private auth: AuthService) { }

  ngOnInit(): void {
    this.objLogin = new Login();
  }

  public errorUser: any;
  public errorPwd: any;

  login(): void {
    this.errorUser = "";
    this.errorPwd = "";
    var usuario = this.objLogin.usuario;
    var clave = this.objLogin.clave;
    if(this.isUndefined(usuario) || usuario==='') {
      this.errorUser = "Por favor, ingrese un usuario válido.";
      return;
    }
    if(this.isUndefined(clave) || clave==='') {
      this.errorPwd = "Por favor, ingrese un contraseña válida.";
      return;
    }
    this.auth.login(usuario, clave);
  }

  private isUndefined(object:any):boolean{
    return typeof object =='undefined';
  }

}
