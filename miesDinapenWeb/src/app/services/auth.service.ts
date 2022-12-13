
import { HttpClient, HttpHeaders, HttpParams } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Router } from '@angular/router';
import { of } from 'rxjs';
import { catchError, map } from 'rxjs/operators';
import { environment } from 'src/environments/environment';

import swal from 'sweetalert2';

@Injectable({
    providedIn: 'root'
})
export class AuthService {

    baseUrl = environment.baseUrl;

    constructor( private router: Router, private http: HttpClient ) {  }

    logout() {
        localStorage.removeItem('access-token');
        this.router.navigate(['/', 'login']);
    }

    login(user: string, pwd: string) {
        const API_LOGIN = `${this.baseUrl}/Auth/login.php`;
        const payload = new HttpParams()
                        .set('usuario',user)
                        .set('clave', pwd);
        const headers = new HttpHeaders().set('Content-Type', 'application/x-www-form-urlencoded');
        this.http.post(API_LOGIN, payload.toString(), { headers: headers }).subscribe( (result: any) => {
            if(result.Success) {
                localStorage.setItem('access-token', result.AccessToken);
                this.router.navigate(['/', 'home']);
            } else {
                swal.fire('Error', result.Message, 'error');
            }
        });
    }

    verifySession() {
        const token = this.getToken();
        if(token) {
            const API_SESSION = `${this.baseUrl}/Auth/session.php?token=${token}`;
            return this.http.get(API_SESSION).pipe(
                map((res: any) => res.Access ),
                catchError(() => of(false))
            );
        } else {
            return of(false);
        }
    }

    getToken(): any {
        const token = localStorage.getItem('access-token');
        return token;
    }

}

