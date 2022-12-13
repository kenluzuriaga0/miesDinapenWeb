import { Component } from '@angular/core';
import { AuthService } from './services/auth.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {

  title = 'miesdinapenap';

  isLogged: boolean = false;

  constructor(private auth: AuthService) {}

  checkLogged() {
    const token = this.auth.getToken();
    this.isLogged = token ? true : false;
  }

}
