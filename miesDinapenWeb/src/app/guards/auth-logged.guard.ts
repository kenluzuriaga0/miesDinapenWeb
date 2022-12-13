import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, CanActivate, Router, RouterStateSnapshot, UrlTree } from '@angular/router';
import { CookieService } from 'ngx-cookie-service';
import { Observable, take, tap } from 'rxjs';
import { AuthService } from '../services/auth.service';

@Injectable({
  providedIn: 'root'
})
export class AuthLoggedGuard implements CanActivate {

  constructor(private cookieService: CookieService, private router: Router, private auth: AuthService) { }
      
  canActivate(
    route: ActivatedRouteSnapshot, 
    state: RouterStateSnapshot
  ): Observable<boolean | UrlTree> | Promise<boolean | UrlTree> | boolean | UrlTree {
    const token = this.auth.getToken();
    if(token===undefined || token===null || token==='') {
      const goToRoute = state.url;
      if(goToRoute === '/login') {
        return true;
      }
      this.router.navigate(['/', 'login']);
    }

    return this.auth.verifySession().pipe(take(1), tap(loggedIn => {
      if(loggedIn) {
        const goToRoute = state.url;
        if(goToRoute === '/login') {
          this.router.navigate(['/', 'home'])
        } 
      } else {
        this.auth.logout();
      }
    }));

    // return true;
  }
  
}
